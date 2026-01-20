Profile: EETISAllergyIntolerance
Parent: AllergyIntolerance
Id: ee-tis-allergy-intolerance
Title: "EE TIS AllergyIntolerance"
Description: "A base profile for allergy and intolerance. (ee Tervishoiutöötaja poolt registreeritav allergia.)"
* contained 0..0
* extension 0..0
* patient only Reference($ee-mpi-patient) //  // andis errori 
* encounter ^short = "Reference to a contact during which the allergy was discovered. (ee Viide kontaktile, mille käigus allergia tuvastati.)"
* participant 1..1 
* participant.actor only Reference(PractitionerRole)
* participant.function = #author
* participant.extension 0..0
* participant.id 0..0
* participant.modifierExtension 0..0
* note ^short = "Other relevant information. (ee Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada.)"
* note 0..1
* code ^short = "Allergy code. (ee Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik.)"
* code 1..1
* code.id 0..0
* code.extension 0..0
* code from $allergy-code-VS
* code.text ^short = "Description of allergy when there is no suitable code. (ee Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust.)"
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
* clinicalStatus ^short = "Clinical status. (ee Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud)."
* clinicalStatus 1..1
* clinicalStatus from $clinical-status-VS
* verificationStatus ^short = "Verification status. (ee Seisundi kinnitatuse tase.)"
* verificationStatus 1..1
* verificationStatus from $verification-status-VS 
* criticality ^short = "Criticality of allergy. (ee Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid.)"
* criticality from $criticality-VS // "siia tuleb loend"
* type ^short = "Allergy, intolerance or non-allerganic reaction. (ee Kirjeldab, kas seisund on allergia, mitteallergiline talumatus või teadmata tüüpi (nt kui pole teada, kas tegemist on allergiaga või talumatusega).)"
* type from $allergy-type-VS
* reaction 1..*
* reaction.id 0..0
* reaction.modifierExtension 0..0
* reaction.note 0..0
* reaction.extension 0..*
* reaction.extension contains
    ExtensionEETISAllergyDiagnosis named diagnose 0..1
* reaction.extension ^short = "This is a reference to a Condition-extension which will be replaced in the future when Condition IG is ready and available."
* reaction.substance ^short = "Main ingredient which caused allergy. (ee Toimeaine, mis põhjustas reaktsiooni.Kasutatakse kategooria |Ravim| korral.)"
* reaction.substance ^short = "Use https://fhir.ee/ValueSet/toimeained Nb! VS is from MedIn. NB!(ee Toimeainete loend Ravimiregistrist. NB! Ei ole Terminoloogiaserveris!)"
* reaction.manifestation ^short = "How allergy is manifested. (ee Allergilise reaktsiooni kliinilise avaldumise kirjeldus (nt anafülaksia, angioödeem, nõgestõbi). Allergia avaldumine VÕI Reaktsioon allergeenile.)"
* reaction.manifestation from $manifest-VS
* reaction.severity ^short = "Severity of the reaction. (ee Täheldatud reaktsiooni kliiniline tõsidus (nt kerge, mõõdukas, raske)."
* reaction.severity from $severity-VS
* reaction.onset ^short = "Date of reaction. (ee Kuupäev, millal reaktsioon esmakordselt täheldati.)"
* reaction.exposureRoute ^short = "What was the route of exposure to the allergen. (ee Kuidas toimus kokkupuude ainega.)"
* reaction.exposureRoute from $exposure-route-VS
* reaction.description ^short = "Additional explanation of the allergy. (ee Täiendav tekstiline kirjeldus allergiast, talumatusest või meditsiinilisest hoiatusest (nt aspiriini talumatus seedetrakti verejooksu tõttu)."
* lastOccurrence 0..0
