# EE TIS Condition - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS Condition**

## Resource Profile: EE TIS Condition 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:EETISAllergyCondition |

 
A profile for condition/diagnose allergy and intolerance. 

**Usages:**

* Examples for this Profile: [Condition/AllergyCondition1](Condition-AllergyCondition1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-condition.csv), [Excel](StructureDefinition-ee-tis-allergy-condition.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-condition",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition",
  "version" : "0.1.0",
  "name" : "EETISAllergyCondition",
  "title" : "EE TIS Condition",
  "status" : "draft",
  "date" : "2026-02-20T13:54:17+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.tehik.ee"
    },
    {
      "system" : "email",
      "value" : "fhir@tehik.ee"
    }]
  },
  {
    "name" : "TEHIK Andmekorraldus",
    "telecom" : [{
      "system" : "email",
      "value" : "andmekorraldus@tehik.ee",
      "use" : "work"
    }]
  }],
  "description" : "A profile for condition/diagnose allergy and intolerance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.clinicalStatus.coding",
      "path" : "Condition.clinicalStatus.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.ee/ValueSet/rhk-10"
      }
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"]
      }]
    }]
  }
}

```
