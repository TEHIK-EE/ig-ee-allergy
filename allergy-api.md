# Allergy API - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* **Allergy API**

## Allergy API

Käesolevas juhendis kirjeldatakse ALGY (Allergiaandmete mikroteenus) toetatud otspunktid ja operatsioonid, operatsioonide üldine kirjeldus, parameetrid, ärireeglid ja päringu ja vastuse näited.

ALGY teenuse FHIR API kasutab FHIR R5 ressursi `AllergyIntolerance` ja toetab loomist (POST), uuendamist (PUT), pärimist (GET ID järgi, GET ajaloo järgi, GET parameetrite järgi) ja kustutamist (DELETE). Kõikides keskkondades on toetatud üksnes JSON formaat (`application/fhir+json`).

| | |
| :--- | :--- |
| DEV | `https://tis.dev.tehik.ee/algy/fhir` |
| TEST | `https://tis.tst.tehik.ee/algy/fhir` |
| Lokaalne | `http://localhost:8633/algy/fhir` |

### Allergia lisamine

UPTIS võtab vastu allergia FHIR-ressursi (AllergyIntolerance) lisamise sõnumi. ALGY kontrollib päringu autori õiguseid, kontrollib FHIR-profiili kuuluvust toetatud profiilide hulka, valideerib ressursi vastava profiili järgi, kontrollib MedIn-ist viidatud ATC- ja toimeaine-koodide olemasolu ning kontrollib ärireegleid, sh duplikaadi kontrolli linkitud patsientide allergiate vastu. Edukal salvestamisel salvestatakse allergiale uus versioon (`versionNr=1`) ning kogu tegevus auditeeritakse.

Allergia lisamine on lubatud:

* patsiendile või patsiendi esindajale, kui ressurss vastab profiilile [`ee-tis-allergy-patient-reported`](StructureDefinition-ee-tis-allergy-patient-reported.md) või [`ee-tis-allergy-intolerance-no-allergy`](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.md),
* raviteekonnal osalevale tervishoiutöötajale, kui ressurss vastab profiilile [`ee-tis-allergy-intolerance`](StructureDefinition-ee-tis-allergy-intolerance.md) või [`ee-tis-allergy-intolerance-medication`](StructureDefinition-ee-tis-allergy-intolerance-medication.md).

#### Päring

* **URL**: `POST [base]/AllergyIntolerance`

```
POST [base]/AllergyIntolerance
{
  "resourceType": "AllergyIntolerance",
  "meta": {
    "profile": ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-medication"]
  },
  "language": "et",
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "active"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed"
    }]
  },
  "type": {
    "coding": [{
      "system": "http://hl7.org/fhir/allergy-intolerance-type",
      "code": "allergy"
    }]
  },
  "category": ["medication"],
  "criticality": "high",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "91936005",
      "display": "Allergy to penicillin"
    }]
  },
  "patient": { "reference": "Patient/12345678901" },
  "recordedDate": "2026-05-06",
  "participant": [
    { "actor": { "reference": "PractitionerRole/abc-123" } }
  ],
  "reaction": [{
    "substance": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "3145006",
        "display": "Penicillic acid"
      }]
    },
    "manifestation": [{
      "concept": {
        "coding": [{
          "system": "http://snomed.info/sct",
          "code": "40275004",
          "display": "Kontaktdermatiit"
        }]
      }
    }],
    "severity": "mild",
    "exposureRoute": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "447694001",
        "display": "Respiratory tract route"
      }]
    }
  }]
}

```

#### Vastus

* **HTTP kood**: 201 Created
* **Sisu**: Päringu päise parameetri `Prefer: return=representation` (vaikimisi) korral tagastatakse salvestatud `AllergyIntolerance` ressurss. Päringu päise parameetri `Prefer: return=OperationOutcome` korral tagastatakse `OperationOutcome`, milles on: 
* **information**-tasemel issue tekstiga "All OK", kui patsiendi kinnitatud ravimiskeem ei sisalda viidatud toimeaineid, **või**
* üks **warning**-tasemel issue iga konflikti kohta, koodiga `ALGY-018`, kui mõni viidatud toimeaine on patsiendi kinnitatud ravimiskeemis.
 

```
HTTP/1.1 201 Created
{
  "resourceType": "OperationOutcome",
  "id": "1",
  "issue": [{
    "severity": "information",
    "code": "informational",
    "details": { "text": "All OK" }
  }]
}

```

### Allergia uuendamine

UPTIS võtab vastu olemasoleva `AllergyIntolerance` muutmise sõnumi. ALGY salvestab uue versiooni (`versionNr` suureneb ühe võrra) ning seob selle eelmise versiooniga.

Allergia uuendamine on lubatud autorile, kes lisas allergia (patsient või patsiendi esindaja); tervishoiutöötaja poolt lisatud allergiat patsient muuta ei saa. Patsiendi viite muutmine on lubatud üksnes juhul, kui vana ja uus patsient on MPI-s linkitud.

Profiili järgi valideeritakse uuendus samamoodi nagu loomisel. Lisaks rakendub reegel: kui eelmise versiooni `verificationStatus` oli `entered-in-error` ja uuel versioonil enam ei ole, siis eemaldatakse vastav `allergy_primary` viit (duplikaadi link).

#### Päring

* **URL**: `PUT [base]/AllergyIntolerance/{id}`

`{id}` peab olema arv ning sama, mis ressursi keha `id`. Kui need ei ühti, tagastatakse veakood `ALGY-102`.

```
PUT [base]/AllergyIntolerance/1
{
  "resourceType": "AllergyIntolerance",
  "id": "1",
  "meta": {
    "profile": ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-medication"]
  },
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "inactive"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed"
    }]
  },
  "type": {
    "coding": [{ "system": "http://hl7.org/fhir/allergy-intolerance-type", "code": "allergy" }]
  },
  "category": ["medication"],
  "criticality": "low",
  "code": {
    "coding": [{ "system": "http://snomed.info/sct", "code": "91936005" }]
  },
  "patient": { "reference": "Patient/12345678901" },
  "recordedDate": "2026-05-06",
  "participant": [{ "actor": { "reference": "PractitionerRole/abc-123" } }]
}

```

#### Vastus

* **HTTP kood**: 200 OK
* **Sisu**: vt allergia lisamise vastust. `meta.versionId` on uue versiooni järjekorranumber.

```
HTTP/1.1 200 OK

```

### Allergia kustutamine

UPTIS võtab vastu allergia kustutamise sõnumi. Kustutamine on **pehme kustutamine** (soft delete) — tegelikud read andmebaasis säilivad, aga salvestatakse uus versioon, kus `deleted = true`. Edaspidi ALGY ei tagasta kustutatud allergiat ei lugemis- ega otsingupäringutes.

Allergia kustutamine on lubatud üksnes patsiendile või patsiendi esindajale enda lisatud allergia kohta. Tervishoiutöötaja poolt lisatud või muudetud allergiat ei saa FHIR API kaudu kustutada — tagastatakse veakood `ALGY-017` HTTP staatusega 403.

#### Päring

* **URL**: `DELETE [base]/AllergyIntolerance/{id}`

```
DELETE [base]/AllergyIntolerance/1

```

#### Vastus

* **HTTP kood**: 200 OK

```
HTTP/1.1 200 OK

```

Korduval lugemisel tagastatakse veakood `ALGY-016` HTTP staatusega 404.

### Allergia pärimine

UPTIS võtab vastu allergia päringu ja tagastab päringu tingimustele vastavad allergiad. Lubatud päringud ja nende tingimused sõltuvad päringu autorist:

* **patsient või patsiendi esindaja** võib pärida ainult enda või enda hooldatava allergiaid (otse või MPI-st linkitud identifikaatorite kaudu),
* **tervishoiutöötaja** (raviteekonnal osalev praktiseeriv arst, terapeut, üliõpilane, spetsialist) võib pärida patsiendi allergiaid; ALGY kontrollib enne tagastamist, kas patsiendi terviseloog (DL) ei ole NRIT-s suletud — suletud DL korral tagastatakse veakood `ALGY-022`,
* **m2m kasutaja** (CBPSIN, FIS jt) võib pärida ID või patsiendi alusel; m2m päringud auditeeritakse, kuid vea korral ei genereerita FAIL-audit-sündmust.

Kõikides päringutes laiendatakse vastuses järgmiste koodide `display`:

* `code.coding` süsteemiga `https://fhir.ee/CodeSystem/atc-ee` — täidetakse MedIn-ist (`nameEst`),
* `reaction.substance.coding` süsteemiga `https://fhir.ee/CodeSystem/toimeained` — täidetakse MedIn-ist (`nameEst`).

#### Päring id järgi

* **URL**: `GET [base]/AllergyIntolerance/{id}`

```
GET [base]/AllergyIntolerance/1

```

#### Vastus

* **HTTP kood**: 200 OK

```
{
  "resourceType": "AllergyIntolerance",
  "id": "1",
  "meta": {
    "versionId": "1",
    "profile": ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-medication"]
  },
  "clinicalStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code": "active",
      "display": "Active"
    }]
  },
  "verificationStatus": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code": "confirmed",
      "display": "Confirmed"
    }]
  },
  "type": {
    "coding": [{
      "system": "http://hl7.org/fhir/allergy-intolerance-type",
      "code": "allergy",
      "display": "Allergy"
    }]
  },
  "category": ["medication"],
  "criticality": "high",
  "code": {
    "coding": [{
      "system": "http://snomed.info/sct",
      "code": "91936005",
      "display": "Allergy to penicillin"
    }]
  },
  "patient": { "reference": "Patient/12345678901" },
  "recordedDate": "2026-05-06",
  "participant": [{
    "actor": { "reference": "PractitionerRole/abc-123" }
  }],
  "reaction": [{
    "substance": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "3145006",
        "display": "Penicillic acid"
      }]
    },
    "manifestation": [{
      "concept": {
        "coding": [{
          "system": "http://snomed.info/sct",
          "code": "40275004",
          "display": "Kontaktdermatiit"
        }]
      }
    }],
    "severity": "mild",
    "exposureRoute": {
      "coding": [{
        "system": "http://snomed.info/sct",
        "code": "447694001",
        "display": "Respiratory tract route"
      }]
    }
  }]
}

```

#### Ajaloo päring

* **URL**: `GET [base]/AllergyIntolerance/{id}/_history/{versionId}`

`{versionId}` on 1-baasil põhinev versiooni järjekorranumber. Versiooni mitteleidmisel tagastatakse veakood `ALGY-023` HTTP staatusega 404.

```
GET [base]/AllergyIntolerance/1/_history/2

```

#### Vastus

* **HTTP kood**: 200 OK
* **Sisu**: vt päring id järgi.

> **Märkus**: tervet allergia ajalugu (`GET /AllergyIntolerance/{id}/_history`) hetkel ALGY ei toeta — implementatsioon on planeeritud (ALGY-Q-1).

#### Päring parameetritega

Otsing tagastab `Bundle` tüüpi `searchset` ressursi, milles on patsiendile (ja MPI-s linkitud patsientidele) kuuluvate kustutamata allergiate viimased versioonid.

##### Kohustuslikud tingimused

Päringus peab olema **kas** `patient` (või `patient.identifier`) **või** `_id`. Kui kumbki puudub, tagastatakse veakood `ALGY-019`.

##### patient

Patsiendi MPI-id või FHIR-viide.

```
patient=12345678901

patient=Patient/12345678901

```

ALGY laiendab automaatselt päringu kõikidele patsiendi MPI-s linkitud identifikaatoritele (`UC-PAT-034`).

##### patient.identifier

Alternatiivne kuju: süsteemi ja väärtuse paar. Kui süsteem on välja jäetud ja väärtus on 11-kohaline arv, siis ALGY käsitleb seda Eesti isikukoodina ja kasutab süsteemi `MpiService.MPI_SYSTEM_IDCODE_EE`.

```
patient.identifier=https://fhir.ee/sid/pid/est/ni|39702232035

patient.identifier=urn:oid:1.3.6.1.4.1.28284.6.2.2.1|39702232035

patient.identifier=39702232035

```

##### _id

Konkreetne allergia ID (arv). `_id` ja `patient` võivad olla koos — sel juhul kontrollitakse mõlemat tingimust.

```
_id=1

```

Kui `_id` järgi ei leita allergiat, tagastatakse veakood `ALGY-016` (HTTP 404).

##### type

Allergia tüüp.

Lubatud väärtused: `allergy`, `intolerance`.

```
type=allergy

```

##### category

Allergia kategooria.

Lubatud väärtused: `food`, `medication`, `environment`, `biologic`.

```
category=medication

```

##### code

Allergeeni kood. Token formaadis `system|code`. Mõlemad pooled peavad olema kas täidetud või mõlemad puudu (lihtkoodi väärtus on lubatud), vastasel juhul tagastatakse veakood `ALGY-019`.

```
code=http://snomed.info/sct|91936005

```

##### criticality

Allergia kriitilisus.

Lubatud väärtused: `low`, `high`, `unable-to-assess`.

```
criticality=high

```

##### severity

Reaktsiooni raskusaste.

Lubatud väärtused: `mild`, `moderate`, `severe`.

```
severity=moderate

```

##### clinical-status

Allergia kliiniline staatus.

Lubatud väärtused: `active`, `inactive`, `resolved`.

```
clinical-status=active

```

##### verification-status, verification-status:not

Allergia kinnitusstaatus. Erinevalt teistest parameetritest võib `verification-status` ja `verification-status:not` sisaldada mitut komaeraldatud koodi.

Lubatud väärtused: `unconfirmed`, `presumed`, `confirmed`, `refuted`, `entered-in-error`.

`verification-status` (või `:not`) lisamisel piiritleb ALGY otsingu automaatselt tervishoiutöötaja sisestatud allergiatele (`author-type=PractitionerRole`).

```
verification-status=confirmed,presumed

verification-status:not=entered-in-error,refuted

```

##### author-type

Allergia autori tüüp — eristab patsiendi/esindaja sisestatud ja tervishoiutöötaja sisestatud allergiaid. Custom EE otsinguparameeter, kanooniline URL `https://fhir.ee/allergy/SearchParameter/ee-tis-allergy-author-type`.

Lubatud väärtused: `Patient`, `PractitionerRole`.

```
author-type=PractitionerRole

```

##### Kontrollparameetrid

`_count`, `_id`, `_profile`, `_summary`, `_sort`, `_total` — antakse FHIRest-ile edasi muutmata kujul.

##### Keelatud parameetrid

Kõik muud parameetrid tagastavad veakoodi `ALGY-020`. Mitme väärtuse esitamine ühevalisel parameetril (välja arvatud `verification-status`) tagastab veakoodi `ALGY-021`.

#### Otsingu näited

##### Patsient või patsiendi esindaja pärib oma allergiad

```
GET /AllergyIntolerance?patient={id}&{parameter1=value1}&...

```

##### Näidispäring

```
GET [base]/AllergyIntolerance?patient.identifier=https://fhir.ee/sid/pid/est/ni%7C39702232035

```

##### Vastus

* **HTTP kood**: 200 OK

```
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1,
  "entry": [
    {
      "fullUrl": "AllergyIntolerance/1",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "1",
        "meta": {
          "versionId": "1",
          "profile": ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-medication"]
        },
        "clinicalStatus": {
          "coding": [{
            "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
            "code": "active"
          }]
        },
        "verificationStatus": {
          "coding": [{
            "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
            "code": "confirmed"
          }]
        },
        "category": ["medication"],
        "criticality": "high",
        "code": {
          "coding": [{
            "system": "http://snomed.info/sct",
            "code": "91936005",
            "display": "Allergy to penicillin"
          }]
        },
        "patient": { "reference": "Patient/12345678901" },
        "recordedDate": "2026-05-06"
      }
    }
  ]
}

```

##### Tervishoiutöötaja pärib patsiendi allergiad konkreetses kategoorias

```
GET /AllergyIntolerance?patient={id}&category={cat}&clinical-status=active&{parameter1=value1}&...

```

##### Näidispäring

```
GET [base]/AllergyIntolerance?patient=Patient/12345678901&category=medication&clinical-status=active

```

##### Vastus

* **HTTP kood**: 200 OK

Tagastatakse `Bundle` patsiendile kuuluvate aktiivsete ravimi-allergiatega (sh MPI-s linkitud patsientide allergiatega).

##### Otsing kinnitusstaatuse järgi (välistab vigased kirjed)

```
GET [base]/AllergyIntolerance?patient=Patient/12345678901&verification-status:not=entered-in-error,refuted

```

`verification-status:not` lisamisel piiritleb ALGY otsingu automaatselt `author-type=PractitionerRole`.

##### Tervishoiutöötaja pärib allergia konkreetse ID alusel

```
GET [base]/AllergyIntolerance?_id=1

```

ID-järgse otsingu korral ei laiendata päringut MPI-s linkitud patsientidele (UC-PAT-034 vahele jäetakse). Kui allergia ei ole leitav, tagastatakse `ALGY-016` (HTTP 404).

### CapabilityStatement

ALGY teenuse `CapabilityStatement` on tagastatav järgmiselt:

```
GET [base]/metadata

```

Vastusena tagastatakse FHIR R5 `CapabilityStatement` ressurss, milles loetletakse toetatud ressursid (`AllergyIntolerance`, `Patient`), interaktsioonid ja otsinguparameetrid. Päring on autentimata.

### Profiilid

ALGY publitseerib käesoleva Implementation Guide'i raames järgmised Eesti FHIR profiilid:

| | | |
| :--- | :--- | :--- |
| [`ee-tis-allergy-intolerance`](StructureDefinition-ee-tis-allergy-intolerance.md) | `AllergyIntolerance` | Tervishoiutöötaja registreeritud üldine allergia/talumatus |
| [`ee-tis-allergy-intolerance-medication`](StructureDefinition-ee-tis-allergy-intolerance-medication.md) | `AllergyIntolerance` | Ravimiallergia (`code`viitab ATC-EE koodile) |
| [`ee-tis-allergy-patient-reported`](StructureDefinition-ee-tis-allergy-patient-reported.md) | `AllergyIntolerance` | Patsiendi või esindaja sisestatud allergia |
| [`ee-tis-allergy-intolerance-no-allergy`](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.md) | `AllergyIntolerance` | "Allergiad puuduvad" kinnitus (SNOMED 716186003) |
| [`ee-tis-allergy-condition`](StructureDefinition-ee-tis-allergy-condition.md) | `Condition` | Allergia diagnoosi seisund; viidatud`ee-tis-allergy-diagnosis`laienduselt |

`AllergyIntolerance.meta.profile` peab sisaldama täpselt üht ülaltoodud `AllergyIntolerance`-tüüpi profiilist (4 võimalust). Profiil `ee-tis-allergy-condition` rakendub `Condition`-ressursile, millele viidatakse `ee-tis-allergy-diagnosis` laienduse `value[x]` kaudu — `AllergyIntolerance.meta.profile`-s seda ei kasutata.

ALGY rakendus tagastab veateate `ALGY-005` "FHIR profile '${profile}' is not supported" juhul, kui `AllergyIntolerance.meta.profile` URL ei kuulu nelja toetatud profiili hulka, ning veateate `ALGY-004`, kui `meta.profile` on puudu. Lubatud on üksnes üks profiil `meta.profile` listis (`ALGY-101`).

### Laiendused

ALGY publitseerib käesoleva Implementation Guide'i raames järgmised laiendused (Extension):

| | | |
| :--- | :--- | :--- |
| [`ee-tis-allergy-diagnosis`](StructureDefinition-ee-tis-allergy-diagnosis.md) | `AllergyIntolerance` | Viide allergia/talumatusega seotud diagnoosile (`Reference(Condition)`) |
| [`ee-tis-allergy-reaction-grouper`](StructureDefinition-ee-tis-allergy-reaction-grouper.md) | `AllergyIntolerance.reaction` | Grupeerib sama reaktsiooniga toimeained ühte loogilisse reaktsiooni (`group_id`) |

### Ärireeglid

| | | |
| :--- | :--- | :--- |
| Profiil on määratud | ALGY-004 / ALGY-101 | `meta.profile`peab sisaldama täpselt üht toetatud profiili |
| Profiil on toetatud | ALGY-005 | `AllergyIntolerance.meta.profile`URL peab olema üks neljast[profiilid](#profiilid)-tabelis loetletud`AllergyIntolerance`-tüüpi profiilist |
| ID on arv | ALGY-102 | `id`ja URL-i`{id}`peavad olema arvud |
| Toimeaine kood eksisteerib MedIn-is | ALGY-006, ALGY-103 | `reaction.substance`koodid süsteemiga`https://fhir.ee/CodeSystem/toimeained` |
| ATC kood eksisteerib MedIn-is | ALGY-030 | `code.coding`süsteemiga`https://fhir.ee/CodeSystem/atc-ee` |
| Staatuste kombinatsioon on lubatud | ALGY-007 | Keelatud paarid:`active+entered-in-error`,`active+refuted`,`resolved+entered-in-error`,`resolved+refuted` |
| Lõpukuupäev ≥ registreerimiskuupäev | ALGY-029 | `onsetPeriod.end >= recordedDate` |
| Reaktsiooni alguskuupäev ≤ allergia lõpukuupäev | ALGY-008 | `reaction.onset <= onsetPeriod.end` |
| Kuupäevad ≥ patsiendi sünnikuupäev | ALGY-009, ALGY-010 | `reaction.onset`ja`onsetPeriod.end`ei tohi olla varasemad sünnikuupäevast |
| Toimeaine ainult ravimiallergial | ALGY-011 | `reaction.substance`on lubatud üksnes profiilil`ee-tis-allergy-intolerance-medication` |
| Lõpukuupäev ainult inactive/resolved allergial | ALGY-012 | `onsetPeriod.end`lubatud üksnes`clinicalStatus``inactive`või`resolved`korral |
| Kood vastab kategooriale | ALGY-013, ALGY-031 | Kontrollitakse Terminoloogiaserveri vastendusest |
| Allergeen on lubatud ValueSet-is | ALGY-032 | Kood peab olema`https://fhir.ee/ValueSet/allergia-allergeenid`hulgas |
| Patsiendi duplikaat ei ole lubatud | ALGY-014 | Sama allergeen, sama autoritüüp, linkitud patsientide allergiate vastu |
| "Allergiad puuduvad" verificationStatus | ALGY-026 | Lubatud`presumed`või`entered-in-error` |
| "Allergiad puuduvad" clinicalStatus | ALGY-027 | Lubatud`active`või`inactive` |
| "Allergiad puuduvad" + aktiivne allergia | ALGY-024, ALGY-025 | "Allergiad puuduvad" ja aktiivne allergia ei tohi koos eksisteerida |
| Õiguste kontroll | ALGY-100, ALGY-017 | Patsient ainult enda ressurssidel; tervishoiutöötaja vastavalt SPD`PractitionerRole`ja Themis lubadele |
| Patsiendi terviseloog (DL) on avatud | ALGY-022 | Tervishoiutöötaja rollidel kontrollitakse NRIT-st |

### Veakoodid

ALGY veakoodid on kujul `ALGY-NNN[.NN]` ja edastatakse `OperationOutcome.issue.details.coding[system=https://algy.tehik.ee/issue].code`. Täismahus tabel:

| | | | |
| :--- | :--- | :--- | :--- |
| ALGY-001 | 500 | error | ALGY internal server error:`${message}`. |
| ALGY-002 | 500 | error | An error occurred during the processing of the allergy data, please contact a system administrator. |
| ALGY-003[.NN] | 500 | error | Outbound client request failure (MedIn FHIR/REST). |
| ALGY-004 | 400 | error | FHIR profile is missing. |
| ALGY-005 | 400 | error | FHIR profile`${profile}`is not supported. |
| ALGY-006 | 400 | error | Substance code`${substance}`not found from substance valueSet. |
| ALGY-007 | 400 | error | Allergy status`${verificationStatus}`not allowed with clinical status`${clinicalStatus}`. |
| ALGY-008 | 400 | error | Allergy reaction onset date cannot be later than end date of the allergy. |
| ALGY-009 | 400 | error | Allergy reaction onset date must not be earlier than the person's date of birth. |
| ALGY-010 | 400 | error | Allergy end date must not be earlier than the person's date of birth. |
| ALGY-011 | 400 | error | Substance can be specified only for the medication allergy. |
| ALGY-012 | 400 | error | Allergy end date can be specified only for inactive or resolved allergy. |
| ALGY-013 | 400 | error | Allergy code`${code}`not allowed with category`${category}`. |
| ALGY-014 | 400 | error | Patient already has allergyIntolerance`${id}`with allergy code`${code}`. |
| ALGY-015 | 400 | error | Encounter`${encounterId}`not found. |
| ALGY-016 | 404 | error | AllergyIntolerance`${id}`not found. |
| ALGY-017 | 403 | error | No permission to change or delete the allergy. |
| ALGY-018 | 200 | warning | Patient's confirmed medication list includes medication with the active substance`${substance}`. |
| ALGY-019 | 400 | error | Missing mandatory`${param}`parameter value. |
| ALGY-020 | 400 | error | Forbidden`${param}`parameter. |
| ALGY-021 | 400 | error | Search parameter`${param}`allows only one value. |
| ALGY-022 | 403 | error | Patient's medical history is closed. |
| ALGY-023 | 404 | error | No history record`${version}`found for the allergy`${id}`. |
| ALGY-024 | 400 | error | "No known allergy" is not allowed when active allergy exists. |
| ALGY-025 | 400 | error | "No known allergy" status must be inactivated before active allergy can be added. |
| ALGY-026 | 400 | error | "No known allergy" verification status must be either "presumed" or "entered-in-error". |
| ALGY-027 | 400 | error | "No known allergy" clinical status must be either "active" or "inactive". |
| ALGY-029 | 400 | error | Allergy end date cannot be earlier than registration date of the allergy. |
| ALGY-030 | 400 | error | ATC code`${code}`not found. |
| ALGY-031 | 400 | error | Category`${category}`is not allowed for profile`${profile}`. |
| ALGY-032 | 400 | error | Allergy code`${code}`is not in the allergen ValueSet. |
| ALGY-100 | 403 | error | Unauthorized request. |
| ALGY-101 | 400 | error | One FHIR profile allowed. |
| ALGY-102 | 400 | error | Allergy resource id must be number. |
| ALGY-103 | 400 | error | Substance code must be number. |

