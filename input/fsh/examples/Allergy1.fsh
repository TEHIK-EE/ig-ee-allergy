Instance: Allergy1
InstanceOf: AllergyIntolerance
Title: "Example Allergy"
Description: "A simple example of a FHIR allergy resource."
* id = "example"
* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-allergy-probability-extension" //0 tähistab esimest extensioni
* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
* code.text = "allergeen"
* patient = Reference(PatientExample)
