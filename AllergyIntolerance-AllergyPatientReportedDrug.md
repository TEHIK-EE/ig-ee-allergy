# Patient reported medication allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient reported medication allergy**

## Example AllergyIntolerance: Patient reported medication allergy

Language: et

Profile: [EE TIS AllergyIntolerance Patient Reported](StructureDefinition-ee-tis-allergy-patient-reported.md)

**clinicalStatus**: Active

**category**: Medication

**code**: Aspirin allergy

**patient**: `Patient/$ee-mpi-patient`

**recordedDate**: 2012-12-13

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | `Patient/$ee-mpi-patient` |

**note**: 

> 

võtsin peavalurohtu ja läksin täiesti kärna


> **reaction**

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Glossoptosis |

**description**: ja nii on**onset**: 2023-12-23**exposureRoute**: Oral route



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyPatientReportedDrug",
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
  "category" : ["medication"],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "293586001",
      "display" : "Aspirin allergy"
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
    "text" : "võtsin peavalurohtu ja läksin täiesti kärna"
  }],
  "reaction" : [{
    "manifestation" : [{
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "3639002",
          "display" : "Glossoptosis"
        }]
      }
    }],
    "description" : "ja nii on",
    "onset" : "2023-12-23",
    "exposureRoute" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }]
    }
  }]
}

```
