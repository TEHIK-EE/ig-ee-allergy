Instance: Allergy1
InstanceOf: AllergyIntolerance
Title: "Example Allergy"
Description: "A simple example of a FHIR allergy resource."
* id = "example"
//* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability" //0 tähistab esimest extensioni
//* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[=].code = #200001
* code.coding[=].display = "Berberine"
* code.coding[+].system = "http://snomed.info/sct"
* code.coding[=].code = #377002	
* code.coding[=].display = "Sparteine"
* code.coding[+].system = "http://snomed.info/sct"
* code.coding[=].code = #566009	
* code.coding[=].display = "Acrosin"
* patient = Reference(Patient/$ee-mpi-patient)
* category = #food
* recordedDate = "2012-12-13" 
* clinicalStatus = #active
* verificationStatus = #confirmed
* reaction.manifestation.concept.coding.system = "http://snomed.info/sct"
* reaction.manifestation.concept.coding.code = #168000 
* reaction.manifestation.concept.coding.display = "Typhlolithiasis"