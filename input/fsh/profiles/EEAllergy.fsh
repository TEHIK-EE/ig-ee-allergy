Profile: EEAllergy
Parent: AllergyIntolerance
Id: ee-allergy
Title: "Allergy"
Description: "An example profile for allergy."

* extension contains
    EEAllergyProbability named probability 0..1 

// patient only Reference(https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified) andis errori 
* note ^short = "Muu asjakohane teave, mida ei saanud mujal struktureeritult esitada."
* code ^short = "Allergeenile vastav standardiseeritud kood. Kui allergeeni kood ei ole saadaval, peab allergeeni kirjeldus olema võimalikult täielik."
* code 1..1 
* code.text ^short = "Aine kirjeldus, mis võib vallandada reaktsiooni. Kohustuslik ja võib korduda, kui kood pole piisav või on mitu kirjeldust."
* category ^short = "Allergeeni üldine kategooria."
* category 0..1
* clinicalStatus ^short = "Allergia või talumatuse praegune kliiniline seisund (nt aktiivne, remissioonis, lahendatud)."
* verificationStatus ^short = "Seisundi kinnitatuse tase."
* criticality ^short = "Potentsiaalne risk tulevaste eluohutavate kõrvaltoimete tekkeks, kui inimene puutub kokku ainega, mis on teadaolevalt põhjustanud kõrvaltoimeid."
* criticality ^binding.description = "siia tuleb loend"