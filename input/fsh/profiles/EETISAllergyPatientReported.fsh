Profile: EETISAllergyPatientReported
Parent: AllergyIntolerance
Id: ee-tis-allergy-patient-reported
Title: "EE TIS AllergyIntolerance Patient Reported"
Description: "A profile for allergy and intolerance which is reported by patient or RelatedPerson."
* patient only Reference($ee-mpi-patient) //  // andis errori 
* encounter 0..0 //^short = "Reference to a contact during which the allergy was discovered. (ee Viide kontaktile, mille käigus allergia tuvastati.)"
* participant 1..1 
* participant.actor only Reference(Patient or RelatedPerson)
* note ^short = "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada."
* code ^short = "Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik."
* code 1..1
* code from $allergy-code  
* code.text ^short = "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust."
* category ^short = "Allergeeni üldine kategooria."
* category 1..1
* category from $allergy-category
* recordedDate 1..1
* recordedDate ^short = "Date when the allergy was first time recorded. (ee Kuupäev, millal allergia esimest korda registreeriti (määratakse süsteemi poolt automaatselt allergia esimese versiooni salvestamisel, järgmistes versioonides ei muudeta).)"
* onsetPeriod.end 0..1 
* onsetPeriod.end ^short = "Date when allergy was considered resolved/not-active. (ee Kuupäev, millal allergia/talumatus loeti lahenenuks või mitteaktiivseks."
* clinicalStatus ^short = "Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud)."
* clinicalStatus 1..1
* clinicalStatus from $clinical-status 
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
* reaction.manifestation ^short = "Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile"
* reaction.severity 0..0 //^short = "Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske). LOEND!"
* reaction.onset ^short = "Kuupäev, millal reaktsioon esmakordselt täheldati."
* reaction.exposureRoute ^short = "Kuidas toimus kokkupuude ainega."
* reaction.description ^short = "Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
* lastOccurrence 0..0
