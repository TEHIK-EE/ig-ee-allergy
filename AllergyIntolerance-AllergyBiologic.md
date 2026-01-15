# Example of a biological allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a biological allergy**

## Example AllergyIntolerance: Example of a biological allergy

Language: et

Profile: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Biologic

**criticality**: Low Risk

**code**: Allergy to bee venom

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

all blaablaa ergia


> **reaction****Allergy diagnose**:[https://fhir.ee/StructureDefinition/blabla-condition](https://fhir.ee/StructureDefinition/blabla-condition)

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Paistetus |

**description**: koleluguonhirmus**onset**: 2024-11-11**severity**: Mild**exposureRoute**:Topical route



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyBiologic",
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
  "category" : ["biologic"],
  "criticality" : "low",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "424213003",
        "display" : "Allergy to bee venom"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  },
  "onsetDateTime" : "2024-12-12",
  "recordedDate" : "2012-12-13",
  "participant" : [
    {
      "actor" : {
        "reference" : "PractitionerRole/$ee-pract-role"
      }
    }
  ],
  "note" : [
    {
      "text" : "all blaablaa ergia"
    }
  ],
  "reaction" : [
    {
      "extension" : [
        {
          "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis",
          "valueReference" : {
            "reference" : "https://fhir.ee/StructureDefinition/blabla-condition"
          }
        }
      ],
      "manifestation" : [
        {
          "concept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "247472004",
                "display" : "Paistetus"
              }
            ]
          }
        }
      ],
      "description" : "koleluguonhirmus",
      "onset" : "2024-11-11",
      "severity" : "mild",
      "exposureRoute" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "6064005",
            "display" : "Topical route"
          }
        ]
      }
    }
  ]
}

```
