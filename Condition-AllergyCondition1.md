# Example of a diagnose reference related to allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a diagnose reference related to allergy**

## Example Condition: Example of a diagnose reference related to allergy

Language: et

Profile: [EE TIS Condition](StructureDefinition-ee-tis-allergy-condition.md)

**clinicalStatus**: Active

**code**: Õietolmu põhjustatud allergiline riniit

**subject**: `Patient/$ee-mpi-patient`



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "AllergyCondition1",
  "meta" : {
    "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition"]
  },
  "language" : "et",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/rhk-10",
      "code" : "J30.1",
      "display" : "Õietolmu põhjustatud allergiline riniit"
    }]
  },
  "subject" : {
    "reference" : "Patient/$ee-mpi-patient"
  }
}

```
