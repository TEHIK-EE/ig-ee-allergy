# Diagnose of allergy/intolerance - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diagnose of allergy/intolerance**

## Extension: Diagnose of allergy/intolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:ExtensionEETISAllergyDiagnosis |

Reference to a diagnose related to allergy/intolerance. (ee Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md)
* Examples for this Extension: [AllergyIntolerance/AllergyBiologic](AllergyIntolerance-AllergyBiologic.md), [AllergyIntolerance/AllergyEnvironment](AllergyIntolerance-AllergyEnvironment.md), [AllergyIntolerance/AllergyFood](AllergyIntolerance-AllergyFood.md), [AllergyIntolerance/AllergyMedication](AllergyIntolerance-AllergyMedication.md) and [AllergyIntolerance/AllergyMedicationFourSubstances](AllergyIntolerance-AllergyMedicationFourSubstances.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-diagnosis)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-diagnosis.csv), [Excel](StructureDefinition-ee-tis-allergy-diagnosis.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-diagnosis.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-diagnosis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis",
  "version" : "0.1.0",
  "name" : "ExtensionEETISAllergyDiagnosis",
  "title" : "Diagnose of allergy/intolerance",
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
  "description" : "Reference to a diagnose related to allergy/intolerance. (ee Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.)",
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
      "id" : "Extension",
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    }]
  }
}

```
