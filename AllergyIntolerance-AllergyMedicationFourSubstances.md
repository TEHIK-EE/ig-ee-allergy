# An example of a medication allergy, reaction with many substances. - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **An example of a medication allergy, reaction with many substances.**

## Example AllergyIntolerance: An example of a medication allergy, reaction with many substances.

Language: et

Profile: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Medication

**criticality**: High Risk

**code**: Substance with penicillin structure

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

Hirmsasti sügeleb.


> **reaction****Diagnose of allergy/intolerance**: [Condition Õietolmu põhjustatud allergiline riniit](Condition-AllergyCondition1.md)**substance**: bensüülpenitsilliin

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Neeluturse |

**description**: Osadele penitsilliinitüvedele allergiline**onset**: 2024-11-11**severity**: Mild**exposureRoute**: Respiratory tract route

> **reaction****substance**: benetamiinpenitsilliin

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Neeluturse |


> **reaction****substance**: bensatiinbensüülpenitsilliin

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Neeluturse |


> **reaction****substance**: bensatiinfenoksümetüülpenitsilliin

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Neeluturse |




## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyMedicationFourSubstances",
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
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/allergia-allergeenid",
      "code" : "764146007",
      "display" : "Substance with penicillin structure"
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
    "text" : "Hirmsasti sügeleb."
  }],
  "reaction" : [{
    "extension" : [{
      "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis",
      "valueReference" : {
        "reference" : "Condition/AllergyCondition1"
      }
    }],
    "substance" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/toimeained",
        "code" : "8744",
        "display" : "bensüülpenitsilliin"
      }]
    },
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "2129002",
          "display" : "Neeluturse"
        }]
      }
    }],
    "description" : "Osadele penitsilliinitüvedele allergiline",
    "onset" : "2024-11-11",
    "severity" : "mild",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "447694001",
        "display" : "Respiratory tract route"
      }]
    }
  },
  {
    "substance" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/toimeained",
        "code" : "11212",
        "display" : "benetamiinpenitsilliin"
      }]
    },
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "2129002",
          "display" : "Neeluturse"
        }]
      }
    }]
  },
  {
    "substance" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/toimeained",
        "code" : "11828",
        "display" : "bensatiinbensüülpenitsilliin"
      }]
    },
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "2129002",
          "display" : "Neeluturse"
        }]
      }
    }]
  },
  {
    "substance" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/toimeained",
        "code" : "10920",
        "display" : "bensatiinfenoksümetüülpenitsilliin"
      }]
    },
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "2129002",
          "display" : "Neeluturse"
        }]
      }
    }]
  }]
}

```
