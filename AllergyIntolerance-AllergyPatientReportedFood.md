# Example of patient reported food allergy. - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of patient reported food allergy.**

## Example AllergyIntolerance: Example of patient reported food allergy.

Language: et

Profile: [EE TIS AllergyIntolerance Patient Reported](StructureDefinition-ee-tis-allergy-patient-reported.md)

**clinicalStatus**: Active

**category**: Food

**code**: Allergy to strawberries

**patient**: `Patient/$ee-mpi-patient`

**recordedDate**: 2012-12-13

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | `Patient/$ee-mpi-patient` |

**note**: 

> 

sõin maasikaidja hakkasin sügelema


> **reaction**

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Typhlolithiasis |

**description**: ja nii on**onset**: 2023-12-23**exposureRoute**: Intravenous route



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyPatientReportedFood",
  "meta" : {
    "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported"]
  },
  "language" : "et",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "category" : ["food"],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "91938006",
      "display" : "Allergy to strawberries"
    }]
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  },
  "recordedDate" : "2012-12-13",
  "participant" : [{
    "actor" : {
      "reference" : "Patient/$ee-mpi-patient"
    }
  }],
  "note" : [{
    "text" : "sõin maasikaidja hakkasin sügelema"
  }],
  "reaction" : [{
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "168000",
          "display" : "Typhlolithiasis"
        }]
      }
    }],
    "description" : "ja nii on",
    "onset" : "2023-12-23",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route"
      }]
    }
  }]
}

```
