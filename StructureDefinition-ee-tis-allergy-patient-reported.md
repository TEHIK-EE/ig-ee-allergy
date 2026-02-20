# EE TIS AllergyIntolerance Patient Reported - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS AllergyIntolerance Patient Reported**

## Resource Profile: EE TIS AllergyIntolerance Patient Reported 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:EETISAllergyPatientReported |

 
A profile for allergy or intolerance which is reported by patient or RelatedPerson. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/AllergyPatientReportedDrug](AllergyIntolerance-AllergyPatientReportedDrug.md) and [AllergyIntolerance/AllergyPatientReportedFood](AllergyIntolerance-AllergyPatientReportedFood.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-patient-reported)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-patient-reported.csv), [Excel](StructureDefinition-ee-tis-allergy-patient-reported.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-patient-reported.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-patient-reported",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported",
  "version" : "0.1.0",
  "name" : "EETISAllergyPatientReported",
  "title" : "EE TIS AllergyIntolerance Patient Reported",
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
  "description" : "A profile for allergy or intolerance which is reported by patient or RelatedPerson.",
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
      "path" : "AllergyIntolerance"
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
      "short" : "(Clinical status. (ee Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud).",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kliiniline-staatus"
      }
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "max" : "0"
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
      "max" : "0"
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
      "short" : "Description of allergy when there is no suitable code. ( ee Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.)"
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
      "max" : "0"
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
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
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
      "id" : "AllergyIntolerance.reaction.modifierExtension",
      "path" : "AllergyIntolerance.reaction.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.reaction.manifestation",
      "path" : "AllergyIntolerance.reaction.manifestation",
      "short" : "How allergy is manifested.(ee Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.)",
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
      "max" : "0"
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
