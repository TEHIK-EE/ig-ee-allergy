Instance: noAllergy
InstanceOf: AllergyIntolerance
Title: "Example of no known Allergy"
Description: "An example of a no known allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance-no-allergy"
* language = #et
//* id = "example"
//* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability" //0 tähistab esimest extensioni
//* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
//* code.coding[0].system = $sct
* code.coding.code = #716186003 //"No Known Allergy"
* code.coding.display = "No Known Allergy"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
//* category = #food
* recordedDate = "2025-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#presumed "Presumed"

