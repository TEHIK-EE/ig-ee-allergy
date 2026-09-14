# EE TIS AllergyIntolerance - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS AllergyIntolerance**

## Resource Profile: EE TIS AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2025-11-18 | *Computable Name*:EETISAllergyIntolerance |

 
A base profile for allergy and intolerance. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-allergy-intolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-allergy-intolerance.csv), [Excel](StructureDefinition-ee-tis-allergy-intolerance.xlsx), [Schematron](StructureDefinition-ee-tis-allergy-intolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-allergy-intolerance",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance",
  "version" : "0.1.0",
  "name" : "EETISAllergyIntolerance",
  "title" : "EE TIS AllergyIntolerance",
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
  "description" : "A base profile for allergy and intolerance.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AllergyIntolerance",
        "path" : "AllergyIntolerance"
      },
      {
        "id" : "AllergyIntolerance.extension",
        "path" : "AllergyIntolerance.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "AllergyIntolerance.extension:probability",
        "path" : "AllergyIntolerance.extension",
        "sliceName" : "probability",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.clinicalStatus",
        "path" : "AllergyIntolerance.clinicalStatus",
        "short" : "Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud)."
      },
      {
        "id" : "AllergyIntolerance.verificationStatus",
        "path" : "AllergyIntolerance.verificationStatus",
        "short" : "Seisundi kinnitatuse tase."
      },
      {
        "id" : "AllergyIntolerance.category",
        "path" : "AllergyIntolerance.category",
        "short" : "Allergeeni üldine kategooria.",
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.criticality",
        "path" : "AllergyIntolerance.criticality",
        "short" : "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid.",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "AllergyIntoleranceCriticality"
            }
          ],
          "strength" : "required",
          "description" : "siia tuleb loend",
          "valueSet" : "http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|5.0.0"
        }
      },
      {
        "id" : "AllergyIntolerance.code",
        "path" : "AllergyIntolerance.code",
        "short" : "Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.",
        "min" : 1
      },
      {
        "id" : "AllergyIntolerance.code.text",
        "path" : "AllergyIntolerance.code.text",
        "short" : "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust."
      },
      {
        "id" : "AllergyIntolerance.note",
        "path" : "AllergyIntolerance.note",
        "short" : "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada."
      }
    ]
  }
}

```
