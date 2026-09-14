# Example Allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Allergy**

## Example AllergyIntolerance: Example Allergy

**Allergy probability**: Esines 1-2 päeva vältel viimase 3 päeva jooksul

**code**: allergeen

**patient**: `Patient/$ee-mpi-patient`



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example",
  "extension" : [
    {
      "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://fhir.ee/CodeSystem/valu-esinemise-sagedus",
            "code" : "02",
            "display" : "Esines 1-2 päeva vältel viimase 3 päeva jooksul"
          }
        ]
      }
    }
  ],
  "code" : {
    "text" : "allergeen"
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  }
}

```
