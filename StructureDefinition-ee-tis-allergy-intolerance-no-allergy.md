# EE TIS AllergyIntoleranceNoAllergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS AllergyIntoleranceNoAllergy**

## Resource Profile: EE TIS AllergyIntoleranceNoAllergy 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-no-allergy | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:EETISAllergyIntoleranceNoAllergy |

 
A profile when there is NO KNOWN allergy/intolerance. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/noAllergy](AllergyIntolerance-noAllergy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-intolerance-no-allergy)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.csv), [Excel](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-intolerance-no-allergy",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-no-allergy",
  "version" : "0.1.0",
  "name" : "EETISAllergyIntoleranceNoAllergy",
  "title" : "EE TIS AllergyIntoleranceNoAllergy",
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
  "description" : "A profile when there is NO KNOWN allergy/intolerance.",
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
      "short" : "Use only |active| or |inactive|",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kliiniline-staatus"
      }
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Use only |presumed| or |entered-in-error|",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/allergia-kinnitusstaatus"
      }
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.category",
      "path" : "AllergyIntolerance.category",
      "max" : "0"
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Only 'No known allergy' is allowed. (ee Lubatud on ainult üks kood, mis väljendab allergia puudumist.)",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "716186003"
        }]
      },
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
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
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
      "max" : "0"
    }]
  }
}

```
