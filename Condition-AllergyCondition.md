# Example of a condition indication allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a condition indication allergy**

## Example Condition: Example of a condition indication allergy

Language: et

Profile: [EE TIS Condition](StructureDefinition-ee-tis-allergy-condition.md)

**clinicalStatus**: active

**code**: Õietolmu põhjustatud allergiline riniit

**subject**: `Patient/$ee-mpi-patient`



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "AllergyCondition",
  "meta" : {
    "profile" : [
      "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition"
    ]
  },
  "language" : "et",
  "clinicalStatus" : {
    "coding" : [
      {
        "code" : "active"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "https://fhir.ee/CodeSystem/rhk-10",
        "code" : "J30.1",
        "display" : "Õietolmu põhjustatud allergiline riniit"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/$ee-mpi-patient"
  }
}

```
