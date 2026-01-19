Profile: EETISAllergyPatientReported
Parent: AllergyIntolerance
Id: ee-tis-allergy-patient-reported
Title: "EE TIS AllergyIntolerance Patient Reported"
Description: "A profile for allergy or intolerance which is reported by patient or RelatedPerson."
* contained 0..0
* extension 0..0
* patient only Reference($ee-mpi-patient) //  // andis errori 
* encounter 0..0 //^short = "Reference to a contact during which the allergy was discovered. (ee Viide kontaktile, mille käigus allergia tuvastati.)"
* participant 1..1 
* participant.actor only Reference(Patient or RelatedPerson)
* participant.function = #author
* participant.extension 0..0
* participant.id 0..0
* participant.modifierExtension 0..0
* note ^short = "Other relevant information. (ee Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada.)"
* note 0..1
* code ^short = "Allergy code. (ee Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.)"
* code 1..1
* code from $allergy-code-VS  
* code.text ^short = "Description of allergy when there is no suitable code. ( ee Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.)"
* code.id 0..0
* code.extension 0..0
* type 0..0
* category ^short = "Category of allergy. (ee Allergeeni üldine kategooria.)"
* category 1..1
* category from $allergy-category-VS
* recordedDate 1..1
* recordedDate ^short = "Date when the allergy was first time recorded. (ee Kuupäev, millal allergia esimest korda registreeriti (määratakse süsteemi poolt automaatselt allergia esimese versiooni salvestamisel, järgmistes versioonides ei muudeta).)"
* onsetPeriod.end 0..1 
* onsetPeriod.end ^short = "Date when allergy was considered resolved/not-active. (ee Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks."
* onsetAge 0..0
* onsetRange 0..0
* onsetString 0..0
* clinicalStatus ^short = "(Clinical status. (ee Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud)."
* clinicalStatus 1..1
* clinicalStatus from $clinical-status-VS 
//* verificationStatus ^short = "Seisundi kinnitatuse tase."
* verificationStatus 0..0
//* verificationStatus from $verification-status 
* criticality 0..0
//* criticality ^short = "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid."
//* criticality ^binding.description = "siia tuleb loend"
* type 0..0
//* type ^short = "Allergy, intolerance or non-allerganic reaction. (ee Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).)"
* reaction 1..*
//* reaction.extension 0..*
//* reaction.extension contains
//    ExtensionEETISAllergyDiagnosis named diagnose 0..1
* reaction.substance 0..0 // ^short = "Toimeaine, mis põhjustas reaktsiooni.Kasutatakse kategooria |Ravim| korral."
* reaction.id 0..0
* reaction.modifierExtension 0..0
* reaction.note 0..0
* reaction.manifestation ^short = "How allergy is manifested.(ee Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.)"
* reaction.manifestation from $manifest-VS
* reaction.severity 0..0 //^short = "Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske). LOEND!"
* reaction.onset ^short = "Date of reaction. (ee Kuupäev, millal reaktsioon esmakordselt täheldati.)"
* reaction.exposureRoute ^short = "What was the route of exposure to the allergen. (ee Kuidas toimus kokkupuude ainega.)"
* reaction.exposureRoute from $exposure-route-VS
* reaction.description ^short = "Additional explanation of the allergy. (ee Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
* lastOccurrence 0..0
