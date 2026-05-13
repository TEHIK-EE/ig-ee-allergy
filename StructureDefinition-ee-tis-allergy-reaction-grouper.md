# Grouper for reactions - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Grouper for reactions**

## Extension: Grouper for reactions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-reaction-grouper | *Version*:0.1.0 |
| Draft as of 2026-05-13 | *Computable Name*:ExtensionEETISAllergyReactionGrouper |

When there are more than one substance causing SAME reaction, these reactions are grouped together with this grouper. (ee Kui erinevatel toimeainetel on sama reaktsioon, grupeeritakse reaktsioonid selle laiendiga kokku.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EE TIS AllergyIntolerance Medication](StructureDefinition-ee-tis-allergy-intolerance-medication.md)
* Examples for this Extension: [AllergyIntolerance/AllergyMedicationFourSubstances](AllergyIntolerance-AllergyMedicationFourSubstances.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-reaction-grouper)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-reaction-grouper.csv), [Excel](StructureDefinition-ee-tis-allergy-reaction-grouper.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-reaction-grouper.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-reaction-grouper",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-reaction-grouper",
  "version" : "0.1.0",
  "name" : "ExtensionEETISAllergyReactionGrouper",
  "title" : "Grouper for reactions",
  "status" : "draft",
  "date" : "2026-05-13T11:26:40+00:00",
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
  "description" : "When there are more than one substance causing SAME reaction, these reactions are grouped together with this grouper. (ee Kui erinevatel toimeainetel on sama reaktsioon, grupeeritakse reaktsioonid selle laiendiga kokku.)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "AllergyIntolerance.reaction"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-reaction-grouper"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
