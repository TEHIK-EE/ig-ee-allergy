# Example of a food allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a food allergy**

## Example AllergyIntolerance: Example of a food allergy

Language: et

Profile: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergia

**category**: Food

**criticality**: Low Risk

**code**: Apple

**patient**: [Leena Lööve (official) Female, DoB Unknown ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientExampleMPI.md)

**recordedDate**: 2012-12-13

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | `PractitionerRole/$ee-pract-role` |

**note**: 

> 

Käinud juba 5 erineva allergoloogi juures.


> **reaction****Diagnose of allergy/intolerance**: [Condition Õietolmu põhjustatud allergiline riniit](Condition-AllergyCondition1.md)

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Keele turse |

**description**: koleluguonhirmus**onset**: 2024-11-11**severity**: Mild**exposureRoute**: Cutaneous route



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyFood",
  "meta" : {
    "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
  },
  "language" : "et",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/allergy-intolerance-type",
      "code" : "allergy",
      "display" : "Allergia"
    }]
  },
  "category" : ["food"],
  "criticality" : "low",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "735215001",
      "display" : "Apple"
    }]
  },
  "patient" : {
    "reference" : "Patient/patientExampleMPI"
  },
  "recordedDate" : "2012-12-13",
  "participant" : [{
    "actor" : {
      "reference" : "PractitionerRole/$ee-pract-role"
    }
  }],
  "note" : [{
    "text" : "Käinud juba 5 erineva allergoloogi juures."
  }],
  "reaction" : [{
    "extension" : [{
      "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis",
      "valueReference" : {
        "reference" : "Condition/AllergyCondition1"
      }
    }],
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81950002",
          "display" : "Keele turse"
        }]
      }
    }],
    "description" : "koleluguonhirmus",
    "onset" : "2024-11-11",
    "severity" : "mild",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "448598008",
        "display" : "Cutaneous route"
      }]
    }
  }]
}

```
