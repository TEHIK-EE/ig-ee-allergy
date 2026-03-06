# Example of no known Allergy - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of no known Allergy**

## Example AllergyIntolerance: Example of no known Allergy

Language: et

Profile: [EE TIS AllergyIntoleranceNoAllergy](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.md)

**clinicalStatus**: Active

**verificationStatus**: Presumed

**code**: No Known Allergy

**patient**: `Patient/$ee-mpi-patient`

**recordedDate**: 2025-12-13

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | `PractitionerRole/$ee-pract-role` |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "noAllergy",
  "meta" : {
    "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-no-allergy"]
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
      "code" : "presumed",
      "display" : "Presumed"
    }]
  },
  "code" : {
    "coding" : [{
      "code" : "716186003",
      "display" : "No Known Allergy"
    }]
  },
  "patient" : {
    "reference" : "Patient/$ee-mpi-patient"
  },
  "recordedDate" : "2025-12-13",
  "participant" : [{
    "actor" : {
      "reference" : "PractitionerRole/$ee-pract-role"
    }
  }]
}

```
