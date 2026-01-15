# Example Allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Allergy**

## Example AllergyIntolerance: Example Allergy

Language: et

Profile: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**code**: Berberine

**patient**: `Patient/$ee-mpi-patient`

**recordedDate**: 2012-12-13

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | `PractitionerRole/$ee-pract-role` |

> **reaction**

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Typhlolithiasis |




## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example",
  "meta" : {
    "profile" : [
      "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
    ]
  },
  "language" : "et",
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active",
        "display" : "Active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed",
        "display" : "Confirmed"
      }
    ]
  },
  "type" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/allergy-intolerance-type",
        "code" : "allergy",
        "display" : "Allergy"
      }
    ]
  },
  "category" : ["food"],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "200001",
        "display" : "Berberine"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  },
  "recordedDate" : "2012-12-13",
  "participant" : [
    {
      "actor" : {
        "reference" : "PractitionerRole/$ee-pract-role"
      }
    }
  ],
  "reaction" : [
    {
      "manifestation" : [
        {
          "concept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "168000",
                "display" : "Typhlolithiasis"
              }
            ]
          }
        }
      ]
    }
  ]
}

```
