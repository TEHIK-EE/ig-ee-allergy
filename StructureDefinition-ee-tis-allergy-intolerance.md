# EE TIS AllergyIntolerance - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS AllergyIntolerance**

## Resource Profile: EE TIS AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:EETISAllergyIntolerance |

 
A base profile for allergy and intolerance. (ee Tervishoiutöötaja poolt registreeritav allergia.) 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/AllergyBiologic](AllergyIntolerance-AllergyBiologic.md), [AllergyIntolerance/AllergyEnvironment](AllergyIntolerance-AllergyEnvironment.md), [AllergyIntolerance/AllergyFood](AllergyIntolerance-AllergyFood.md), [AllergyIntolerance/AllergyMedication](AllergyIntolerance-AllergyMedication.md) and [AllergyIntolerance/AllergyMedicationFourSubstances](AllergyIntolerance-AllergyMedicationFourSubstances.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-intolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-intolerance.csv), [Excel](StructureDefinition-ee-tis-allergy-intolerance.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-intolerance",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance",
  "version" : "0.1.0",
  "name" : "EETISAllergyIntolerance",
  "title" : "EE TIS AllergyIntolerance",
  "status" : "draft",
  "date" : "2026-02-20T13:54:17+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.tehik.ee"
    },
    {
      "system" : "email",
      "value" : "fhir@tehik.ee"
    }]
  },
  {
    "name" : "TEHIK Andmekorraldus",
    "telecom" : [{
      "system" : "email",
      "value" : "andmekorraldus@tehik.ee",
      "use" : "work"
    }]
  }],
  "description" : "A base profile for allergy and intolerance. (ee Tervishoiutöötaja poolt registreeritav allergia.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance",
      "constraint" : [{
        "key" : "ai-active-not-refuted",
        "severity" : "error",
        "human" : "If clinicalStatus is active, verificationStatus must not be refuted.",
        "expression" : "clinicalStatus.coding.where(code='active').exists() implies verificationStatus.coding.where(code='refuted').empty()",
        "source" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
      },
      {
        "key" : "ai-active-not-entered-in-error",
        "severity" : "error",
        "human" : "If clinicalStatus is active, verificationStatus must not be entered-in-error.",
        "expression" : "clinicalStatus.coding.where(code='active').exists() implies verificationStatus.coding.where(code='entered-in-error').empty()",
        "source" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
      },
      {
        "key" : "ai-resolved-not-refuted",
        "severity" : "error",
        "human" : "If clinicalStatus is resolved, verificationStatus must not be refuted.",
        "expression" : "clinicalStatus.coding.where(code='resolved').exists() implies verificationStatus.coding.where(code='refuted').empty()",
        "source" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
      },
      {
        "key" : "ai-resolved-not-entered-in-error",
        "severity" : "error",
        "human" : "If clinicalStatus is resolved, verificationStatus must not be entered-in-error.",
        "expression" : "clinicalStatus.coding.where(code='resolved').exists() implies verificationStatus.coding.where(code='entered-in-error').empty()",
        "source" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
      }]
    },
    {
      "id" : "AllergyIntolerance.contained",
      "path" : "AllergyIntolerance.contained",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.extension",
      "path" : "AllergyIntolerance.extension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Clinical status. (ee Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud).",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kliiniline-staatus"
      }
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Verification status. (ee Seisundi kinnitatuse tase.)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kinnitusstaatus"
      }
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Allergy, intolerance or non-allerganic reaction. (ee Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-voi-talumatuse-tyyp"
      }
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "short" : "Category of allergy. (ee Allergeeni üldine kategooria.)",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kategooria"
      }
    },
    {
      "id" : "AllergyIntolerance.criticality",
      "path" : "AllergyIntolerance.criticality",
      "short" : "Criticality of allergy. (ee Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid.)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kriitilisus"
      }
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Allergy code. (ee Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.)",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-allergeenid"
      }
    },
    {
      "id" : "AllergyIntolerance.code.id",
      "path" : "AllergyIntolerance.code.id",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code.extension",
      "path" : "AllergyIntolerance.code.extension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code.text",
      "path" : "AllergyIntolerance.code.text",
      "short" : "Description of allergy when there is no suitable code. (ee Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.)"
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    },
    {
      "id" : "AllergyIntolerance.encounter",
      "path" : "AllergyIntolerance.encounter",
      "short" : "Reference to a contact during which the allergy was discovered. (ee Viide kontaktile, mille käigus allergia tuvastati.)"
    },
    {
      "id" : "AllergyIntolerance.onset[x]",
      "path" : "AllergyIntolerance.onset[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetPeriod",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetPeriod.end",
      "path" : "AllergyIntolerance.onset[x].end",
      "short" : "Date when allergy was considered resolved/not-active. (ee Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks."
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetAge",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetAge",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Age"
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetRange",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetRange",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetString",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetString",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Date when the allergy was first time recorded. (ee Kuupäev, millal allergia esimest korda registreeriti (määratakse süsteemi poolt automaatselt allergia esimese versiooni salvestamisel, järgmistes versioonides ei muudeta).)",
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.participant",
      "path" : "AllergyIntolerance.participant",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "AllergyIntolerance.participant.id",
      "path" : "AllergyIntolerance.participant.id",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.participant.extension",
      "path" : "AllergyIntolerance.participant.extension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.participant.modifierExtension",
      "path" : "AllergyIntolerance.participant.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.participant.function",
      "path" : "AllergyIntolerance.participant.function",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "author"
        }]
      }
    },
    {
      "id" : "AllergyIntolerance.participant.actor",
      "path" : "AllergyIntolerance.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "AllergyIntolerance.lastOccurrence",
      "path" : "AllergyIntolerance.lastOccurrence",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Other relevant information. (ee Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada.)",
      "max" : "1"
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "min" : 1
    },
    {
      "id" : "AllergyIntolerance.reaction.id",
      "path" : "AllergyIntolerance.reaction.id",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.extension",
      "path" : "AllergyIntolerance.reaction.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "This is a reference to a Condition-extension which will be replaced in the future when Condition IG is ready and available."
    },
    {
      "id" : "AllergyIntolerance.reaction.extension:diagnose",
      "path" : "AllergyIntolerance.reaction.extension",
      "sliceName" : "diagnose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"]
      }]
    },
    {
      "id" : "AllergyIntolerance.reaction.modifierExtension",
      "path" : "AllergyIntolerance.reaction.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Use https://fhir.ee/ValueSet/toimeained Nb! VS is from MedIn. NB!(ee Toimeainete loend Ravimiregistrist. NB! Ei ole Terminoloogiaserveris!)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/toimeained"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "How allergy is manifested. (ee Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-reaktsiooni-avaldumine"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.description",
      "path" : "AllergyIntolerance.reaction.description",
      "short" : "Additional explanation of the allergy. (ee Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
    },
    {
      "id" : "AllergyIntolerance.reaction.onset",
      "path" : "AllergyIntolerance.reaction.onset",
      "short" : "Date of reaction. (ee Kuupäev, millal reaktsioon esmakordselt täheldati.)"
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Severity of the reaction. (ee Täheldatud reaktsiooni kliiniline tõsidus (näiteks kerge, mõõdukas, raske).",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/reaktsiooni-raskusaste"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.exposureRoute",
      "path" : "AllergyIntolerance.reaction.exposureRoute",
      "short" : "What was the route of exposure to the allergen. (ee Kuidas toimus kokkupuude ainega.)",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kokkupuude-manustamisviis"
      }
    },
    {
      "id" : "AllergyIntolerance.reaction.note",
      "path" : "AllergyIntolerance.reaction.note",
      "max" : "0"
    }]
  }
}

```
