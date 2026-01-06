# EE TIS AllergyIntolerance - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EE TIS AllergyIntolerance**

## Resource Profile: EE TIS AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance | *Version*:0.1.0 |
| Draft as of 2026-01-06 | *Computable Name*:EETISAllergyIntolerance |

 
A base profile for allergy and intolerance. 

**Usages:**

* Examples for this Profile: [AllergyIntolerance/example](AllergyIntolerance-example.md)

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
  "date" : "2026-01-06T14:41:40+00:00",
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
        "id" : "AllergyIntolerance.clinicalStatus",
        "path" : "AllergyIntolerance.clinicalStatus",
        "short" : "Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud).",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "AllergyIntolerance.verificationStatus",
        "path" : "AllergyIntolerance.verificationStatus",
        "short" : "Seisundi kinnitatuse tase.",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/allergyintolerance-verification"
        }
      },
      {
        "id" : "AllergyIntolerance.type",
        "path" : "AllergyIntolerance.type",
        "short" : "Allergy, intolerance or non-allerganic reaction. (ee Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).)"
      },
      {
        "id" : "AllergyIntolerance.category",
        "path" : "AllergyIntolerance.category",
        "short" : "Allergeeni üldine kategooria.",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/allergy-intolerance-category"
        }
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
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/allergyintolerance-code"
        }
      },
      {
        "id" : "AllergyIntolerance.code.text",
        "path" : "AllergyIntolerance.code.text",
        "short" : "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust."
      },
      {
        "id" : "AllergyIntolerance.patient",
        "path" : "AllergyIntolerance.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.encounter",
        "path" : "AllergyIntolerance.encounter",
        "short" : "Reference to a contact during which the allergy was discovered. (ee Viide kontaktile, mille käigus allergia tuvastati.)"
      },
      {
        "id" : "AllergyIntolerance.onset[x]",
        "path" : "AllergyIntolerance.onset[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "AllergyIntolerance.onset[x]:onsetPeriod",
        "path" : "AllergyIntolerance.onset[x]",
        "sliceName" : "onsetPeriod",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.onset[x]:onsetPeriod.end",
        "path" : "AllergyIntolerance.onset[x].end",
        "short" : "Date when allergy was considered resolved/not-active. (ee Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks."
      },
      {
        "id" : "AllergyIntolerance.recordedDate",
        "path" : "AllergyIntolerance.recordedDate",
        "short" : "Date when the allergy was first time recorded. (ee Kuupäev, millal allergia esimest korda registreeriti (määratakse süsteemi poolt automaatselt allergia esimese versiooni salvestamisel, järgmistes versioonides ei muudeta).)",
        "min" : 1
      },
      {
        "id" : "AllergyIntolerance.participant",
        "path" : "AllergyIntolerance.participant",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.participant.actor",
        "path" : "AllergyIntolerance.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.lastOccurrence",
        "path" : "AllergyIntolerance.lastOccurrence",
        "max" : "0"
      },
      {
        "id" : "AllergyIntolerance.note",
        "path" : "AllergyIntolerance.note",
        "short" : "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada."
      },
      {
        "id" : "AllergyIntolerance.reaction",
        "path" : "AllergyIntolerance.reaction",
        "min" : 1
      },
      {
        "id" : "AllergyIntolerance.reaction.extension",
        "path" : "AllergyIntolerance.reaction.extension",
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
        "id" : "AllergyIntolerance.reaction.extension:diagnose",
        "path" : "AllergyIntolerance.reaction.extension",
        "sliceName" : "diagnose",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.reaction.substance",
        "path" : "AllergyIntolerance.reaction.substance",
        "short" : "Toimeaine, mis põhjustas reaktsiooni.Kasutatakse kategooria |Ravim| korral."
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation",
        "path" : "AllergyIntolerance.reaction.manifestation",
        "short" : "Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile"
      },
      {
        "id" : "AllergyIntolerance.reaction.description",
        "path" : "AllergyIntolerance.reaction.description",
        "short" : "Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
      },
      {
        "id" : "AllergyIntolerance.reaction.onset",
        "path" : "AllergyIntolerance.reaction.onset",
        "short" : "Kuupäev, millal reaktsioon esmakordselt täheldati."
      },
      {
        "id" : "AllergyIntolerance.reaction.severity",
        "path" : "AllergyIntolerance.reaction.severity",
        "short" : "Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske). LOEND!"
      },
      {
        "id" : "AllergyIntolerance.reaction.exposureRoute",
        "path" : "AllergyIntolerance.reaction.exposureRoute",
        "short" : "Kuidas toimus kokkupuude ainega."
      }
    ]
  }
}

```
