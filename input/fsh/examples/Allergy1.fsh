Instance: Allergy1
InstanceOf: AllergyIntolerance
Title: "Example Allergy"
Description: "A simple example of a FHIR allergy resource."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* id = "example"
//* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability" //0 tähistab esimest extensioni
//* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
* code.coding[0].system = $sct
* code.coding[=].code = #200001
* code.coding[=].display = "Berberine"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #food
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical#active "Active"
* verificationStatus = $verification#confirmed "Confirmed"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #168000 
* reaction.manifestation.concept.coding.display = "Typhlolithiasis"

