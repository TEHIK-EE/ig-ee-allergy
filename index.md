# Home - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/ImplementationGuide/ig-ee-allergy | *Version*:0.1.0 |
| Draft as of 2026-02-20 | *Computable Name*:EETISIGAllergy |

### Intro

This implementation guide is for the allergy and intolerances data exchange in the context of patient summary and cross boarder activities.

#### Source code

This IG source code is available in [GitHub](https://github.com/TEHIK-EE/ig-ee-starter).

### How to start

1. Copy project and rename project.
1. Replace this IG specific values: look for comments marked**REPLACE_ME:**
1. Remove unnecessary pages, fsh files etc., look for comments marked**REMOVE_ME:**
1. Add domain specific profiles, markdown pages etc.
1. Change alias.fsh and include your domain specific values, please follow the naming pattern.

### Learning resources

* [FSH starter guide](https://fshschool.org/) (describes how to start with IG development using FSH)
* [FHIR Shorthand (FSH) documentation](https://build.fhir.org/ig/HL7/fhir-shorthand/)
* [IG guidance](https://build.fhir.org/ig/FHIR/ig-guidance/) (describes how to style IG, structure and manage content, best practices, etc.)
* [IG publisher documentation](https://confluence.hl7.org/spaces/FHIR/pages/35718627/IG+Publisher+Documentation)

### Structure

**input/fsh/*.fsh** files are logically grouped into folders, which are used to generate the website structure. Please follow the same structure when adding new files.

**input/pagecontent** folder contains markdown files which are used to generate the website pages. Menu and page name mappings are defined in **sushi-config.yaml** file.

### Build and deploy

Building and deploying information is located in [GitHub](https://github.com/TEHIK-EE/ig-ee-starter) project [README](https://github.com/TEHIK-EE/ig-ee-starter/blob/main/README.md) file.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ig-ee-allergy",
  "url" : "https://fhir.ee/allergy/ImplementationGuide/ig-ee-allergy",
  "version" : "0.1.0",
  "name" : "EETISIGAllergy",
  "title" : "EE TIS Allergy IG",
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
  "description" : "TEHIK IG starter project to Allergy",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EE",
      "display" : "Estonia"
    }]
  }],
  "packageId" : "ig-ee-allergy",
  "license" : "MIT",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.0.1"
  },
  {
    "id" : "hl7_fhir_uv_extensions",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions",
    "version" : "current"
  },
  {
    "id" : "ee_fhir_base",
    "uri" : "https://fhir.ee/base/ImplementationGuide/ee.fhir.base",
    "packageId" : "ee.fhir.base",
    "version" : "2.0.0"
  },
  {
    "id" : "ee_fhir_mpi",
    "uri" : "https://fhir.ee/mpi/ImplementationGuide/ee.fhir.mpi",
    "packageId" : "ee.fhir.mpi",
    "version" : "1.5.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#0.9.0"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyMedicationFourSubstances"
      },
      "name" : "An example of a medication allergy, reaction with many substances.",
      "description" : "Example of a medication allergy where several different penicillin related substances cause reaction",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-tis-allergy-diagnosis"
      },
      "name" : "Diagnose of allergy/intolerance",
      "description" : "Reference to a diagnose related to allergy/intolerance. (ee Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-tis-allergy-intolerance"
      },
      "name" : "EE TIS AllergyIntolerance",
      "description" : "A base profile for allergy and intolerance. (ee Tervishoiutöötaja poolt registreeritav allergia.)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-tis-allergy-patient-reported"
      },
      "name" : "EE TIS AllergyIntolerance Patient Reported",
      "description" : "A profile for allergy or intolerance which is reported by patient or RelatedPerson.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-tis-allergy-intolerance-no-allergy"
      },
      "name" : "EE TIS AllergyIntoleranceNoAllergy",
      "description" : "A profile when there is NO KNOWN allergy/intolerance.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ee-tis-allergy-condition"
      },
      "name" : "EE TIS Condition",
      "description" : "A profile for condition/diagnose allergy and intolerance.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyBiologic"
      },
      "name" : "Example of a biologic allergy",
      "description" : "An example of a biologic allergy.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/AllergyCondition1"
      },
      "name" : "Example of a diagnose reference related to allergy",
      "description" : "Example of a diagnose related to allergy",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyEnvironment"
      },
      "name" : "Example of a environmental allergy",
      "description" : "An example of a environmental allergy.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyFood"
      },
      "name" : "Example of a food allergy",
      "description" : "An example of a food allergy.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyMedication"
      },
      "name" : "Example of a medication allergy",
      "description" : "An example of a medication allergy.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/noAllergy"
      },
      "name" : "Example of no known Allergy",
      "description" : "An example of a no known allergy.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-no-allergy"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyPatientReportedFood"
      },
      "name" : "Example of patient reported food allergy.",
      "description" : "A food allergy reported by patient.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/AllergyPatientReportedDrug"
      },
      "name" : "Patient reported medication allergy",
      "description" : "A medication allergy reported by patient.",
      "isExample" : true,
      "profile" : ["https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported"]
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "intolerance.html",
        "name" : "intolerance.html",
        "title" : "Intolerance",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "page2.html",
        "name" : "page2.html",
        "title" : "Sample page 2",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "downloads.html",
        "name" : "downloads.html",
        "title" : "Downloads",
        "generation" : "html"
      },
      {
        "sourceUrl" : "contacts.html",
        "name" : "contacts.html",
        "title" : "Contacts",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "search.html",
        "name" : "search.html",
        "title" : "Search",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2025+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "draft"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludettl"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "validation"
      },
      "value" : "allow-any-extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "show-inherited-invariants"
      },
      "value" : "false"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://fhir.ee/allergy/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
