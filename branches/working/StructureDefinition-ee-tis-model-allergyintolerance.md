# Allergy Intolerance Logical Model - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergy Intolerance Logical Model**

## Logical Model: Allergy Intolerance Logical Model 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/allergy/StructureDefinition/ee-tis-model-allergyintolerance | *Version*:0.1.0 |
| Draft as of 2025-11-18 | *Computable Name*:EETISModelAllergyIntolerance |

 
Allergy / Intolerance logical model 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ig-ee-allergy|current/StructureDefinition/ee-tis-model-allergyintolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-tis-model-allergyintolerance.csv), [Excel](StructureDefinition-ee-tis-model-allergyintolerance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-tis-model-allergyintolerance",
  "url" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-model-allergyintolerance",
  "version" : "0.1.0",
  "name" : "EETISModelAllergyIntolerance",
  "title" : "Allergy Intolerance Logical Model",
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
  "description" : "Allergy / Intolerance logical model",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.ee/allergy/StructureDefinition/ee-tis-model-allergyintolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "ee-tis-model-allergyintolerance",
        "path" : "ee-tis-model-allergyintolerance",
        "short" : "Allergy Intolerance Logical Model",
        "definition" : "Allergy / Intolerance logical model"
      },
      {
        "id" : "ee-tis-model-allergyintolerance.patsient",
        "path" : "ee-tis-model-allergyintolerance.patsient",
        "short" : "Viide patsiendile, kelle kohta allergia/talumatuse info käib.",
        "definition" : "Viide patsiendile, kelle kohta allergia/talumatuse info käib.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.asutus",
        "path" : "ee-tis-model-allergyintolerance.asutus",
        "short" : "Tervishoiuteenuse osutaja (TTO), kus teave salvestati.",
        "definition" : "Tervishoiuteenuse osutaja (TTO), kus teave salvestati.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.tervishoiutootaja",
        "path" : "ee-tis-model-allergyintolerance.tervishoiutootaja",
        "short" : "Tervishoiuteenuse osutaja (TTO), kes teabe salvestas.",
        "definition" : "Tervishoiuteenuse osutaja (TTO), kes teabe salvestas.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.kliinilineStaatus",
        "path" : "ee-tis-model-allergyintolerance.kliinilineStaatus",
        "short" : "Allergia või talumatuse praegune kliiniline seisund.",
        "definition" : "Allergia või talumatuse praegune kliiniline seisund.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.diagnoosiStaatus",
        "path" : "ee-tis-model-allergyintolerance.diagnoosiStaatus",
        "short" : "Allergia või talumatuse diagnoosi kinnitatuse tase (nt kinnitatud, kinnitamata).",
        "definition" : "Allergia või talumatuse diagnoosi kinnitatuse tase (nt kinnitatud, kinnitamata).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.kriitilisus",
        "path" : "ee-tis-model-allergyintolerance.kriitilisus",
        "short" : "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid.",
        "definition" : "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.toenaosus",
        "path" : "ee-tis-model-allergyintolerance.toenaosus",
        "short" : "Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.",
        "definition" : "Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.allergeeniKood",
        "path" : "ee-tis-model-allergyintolerance.allergeeniKood",
        "short" : "Allergeenile vastav standardiseeritud kood (siia tuleb loend). Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.",
        "definition" : "Allergeenile vastav standardiseeritud kood (siia tuleb loend). Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.allergeeniKirjeldus",
        "path" : "ee-tis-model-allergyintolerance.allergeeniKirjeldus",
        "short" : "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.",
        "definition" : "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.allergeeniKirjeldus.allergeeniKategooria",
        "path" : "ee-tis-model-allergyintolerance.allergeeniKirjeldus.allergeeniKategooria",
        "short" : "Allergeeni üldine kategooria (nt ravim, toit, putukamürk, olme).",
        "definition" : "Allergeeni üldine kategooria (nt ravim, toit, putukamürk, olme).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.Alguskuupaev",
        "path" : "ee-tis-model-allergyintolerance.Alguskuupaev",
        "short" : "Kuupäev, millal reaktsioon esmakordselt täheldati.",
        "definition" : "Kuupäev, millal reaktsioon esmakordselt täheldati.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.Lopukuupaev",
        "path" : "ee-tis-model-allergyintolerance.Lopukuupaev",
        "short" : "Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks.",
        "definition" : "Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.Avastamisaeg",
        "path" : "ee-tis-model-allergyintolerance.Avastamisaeg",
        "short" : "Allergia avastamise aeg (võib erineda esmasest avaldumisest).",
        "definition" : "Allergia avastamise aeg (võib erineda esmasest avaldumisest).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.Manustamisaeg",
        "path" : "ee-tis-model-allergyintolerance.Manustamisaeg",
        "short" : "Aine (nt ravimi) manustamise aeg, kui see on reaktsiooni hindamisel oluline.",
        "definition" : "Aine (nt ravimi) manustamise aeg, kui see on reaktsiooni hindamisel oluline.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.ReaktsiooniTyyp",
        "path" : "ee-tis-model-allergyintolerance.ReaktsiooniTyyp",
        "short" : "Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).",
        "definition" : "Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.ReaktsiooniAvaldumine",
        "path" : "ee-tis-model-allergyintolerance.ReaktsiooniAvaldumine",
        "short" : "Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.",
        "definition" : "Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.ReaktsiooniTosidusRaskusaste",
        "path" : "ee-tis-model-allergyintolerance.ReaktsiooniTosidusRaskusaste",
        "short" : " Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske).",
        "definition" : " Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.KokkupuuteKirjeldusManustamisviis",
        "path" : "ee-tis-model-allergyintolerance.KokkupuuteKirjeldusManustamisviis",
        "short" : "Kuidas toimus kokkupuude ainega.",
        "definition" : "Kuidas toimus kokkupuude ainega.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.ReaktsiooniKordumine",
        "path" : "ee-tis-model-allergyintolerance.ReaktsiooniKordumine",
        "short" : "Kas reaktsioon kordus hilisemal kokkupuutel?",
        "definition" : "Kas reaktsioon kordus hilisemal kokkupuutel?",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "description" : "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"
        }
      },
      {
        "id" : "ee-tis-model-allergyintolerance.AllergiaTalumatuseKirjeldus",
        "path" : "ee-tis-model-allergyintolerance.AllergiaTalumatuseKirjeldus",
        "short" : "Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu).",
        "definition" : "Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "ee-tis-model-allergyintolerance.Lisainfo",
        "path" : "ee-tis-model-allergyintolerance.Lisainfo",
        "short" : "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada.",
        "definition" : "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
