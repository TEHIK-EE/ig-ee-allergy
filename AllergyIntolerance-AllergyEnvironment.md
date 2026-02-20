# Example of a environmental allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a environmental allergy**

## Example AllergyIntolerance: Example of a environmental allergy

Language: et

Profile: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Environment

**criticality**: High Risk

**code**: Allergy to Hevea brasiliensis latex protein

**patient**: `Patient/$ee-mpi-patient`

**onset**: 2024-12-12

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
| * | Kontaktdermatiit |

**description**: koleluguonhirmus**onset**: 2024-11-11**severity**: Mild**exposureRoute**: Respiratory tract route



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyEnvironment",
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
      "display" : "Allergy"
    }]
  },
  "category" : ["environment"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1003755004",
      "display" : "Allergy to Hevea brasiliensis latex protein"
    }]
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  },
  "onsetDateTime" : "2024-12-12",
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
          "code" : "40275004",
          "display" : "Kontaktdermatiit"
        }]
      }
    }],
    "description" : "koleluguonhirmus",
    "onset" : "2024-11-11",
    "severity" : "mild",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "447694001",
        "display" : "Respiratory tract route"
      }]
    }
  }]
}

```
