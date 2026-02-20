# Allergy probability - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergy probability**

## Extension: Allergy probability 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability | *Version*:0.1.0 |
| Draft as of 2025-11-18 | *Computable Name*:ExtensionEETISAllergyProbability |

Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele. Loend on pandud testimiseks, ära seda kasuta.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)
* Examples for this Extension: [AllergyIntolerance/example](AllergyIntolerance-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-probability)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-probability.csv), [Excel](StructureDefinition-ee-tis-allergy-probability.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-probability.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-probability",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability",
  "version" : "0.1.0",
  "name" : "ExtensionEETISAllergyProbability",
  "title" : "Allergy probability",
  "status" : "draft",
  "date" : "2025-11-18T11:26:15+00:00",
  "publisher" : "TEHIK",
  "contact" : [
    {
      "name" : "TEHIK",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.tehik.ee"
        },
        {
          "system" : "email",
          "value" : "fhir@tehik.ee"
        }
      ]
    },
    {
      "name" : "TEHIK Andmekorraldus",
      "telecom" : [
        {
          "system" : "email",
          "value" : "andmekorraldus@tehik.ee",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele. Loend on pandud testimiseks, ära seda kasuta.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "EE",
          "display" : "Estonia"
        }
      ]
    }
  ],
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.ee/ValueSet/valu-esinemise-sagedus"
        }
      }
    ]
  }
}

```
