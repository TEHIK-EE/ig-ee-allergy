Logical: EETISModelAllergyIntolerance
Id: ee-tis-model-allergyintolerance
Parent: Base
Title: "Allergy Intolerance Logical Model"
Description:    "Allergy / Intolerance logical model"

* patsient 1..1 Reference "Viide patsiendile, kelle kohta allergia/talumatuse info käib."
* asutus 1..1 Reference "Tervishoiuteenuse osutaja (TTO), kus teave salvestati."
* tervishoiutootaja 0..1 Reference "Tervishoiuteenuse osutaja (TTO), kes teabe salvestas."
//* Staatus 0..1 BackboneElement
* kliinilineStaatus 0..1 code "Allergia või talumatuse praegune kliiniline seisund."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* diagnoosiStaatus 0..1 code "Allergia või talumatuse diagnoosi kinnitatuse tase (nt kinnitatud, kinnitamata)."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* kriitilisus 0..1 code "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* toenaosus 0..1 code "Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
//* Aine 0..1 BackboneElement
* allergeeniKood 1..1 code "Allergeenile vastav standardiseeritud kood (siia tuleb loend). Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* allergeeniKirjeldus 1..* string "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust."
  * allergeeniKategooria 0..1 code "Allergeeni üldine kategooria (nt ravim, toit, putukamürk, olme)."
    * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
//* Aeg 0..1 BackboneElement
* Alguskuupaev 0..1 dateTime "Kuupäev, millal reaktsioon esmakordselt täheldati."
* Lopukuupaev 0..1 dateTime "Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks."
* Avastamisaeg 0..1 dateTime "Allergia avastamise aeg (võib erineda esmasest avaldumisest)."
* Manustamisaeg 0..1 dateTime "Aine (nt ravimi) manustamise aeg, kui see on reaktsiooni hindamisel oluline."
//* Reaktsioon 0..* BackboneElement
* ReaktsiooniTyyp 0..1 code "Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega)."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* ReaktsiooniAvaldumine 1..* code "Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""  
* ReaktsiooniTosidusRaskusaste 0..1 code " Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske)."
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical""" 
* KokkupuuteKirjeldusManustamisviis 0..* string "Kuidas toimus kokkupuude ainega."
* ReaktsiooniKordumine 0..1 code "Kas reaktsioon kordus hilisemal kokkupuutel?"
  * ^binding.description = """http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"""
* AllergiaTalumatuseKirjeldus 0..* string "Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
* Lisainfo 0..* string "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada."