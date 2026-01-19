Instance: AllergyCondition1
InstanceOf: Condition
Usage: #example
Title: "Example of a diagnose reference related to indication allergy"
Description: "Example of a diagnose related to allergy"
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition"
* language = #et
* clinicalStatus = #active
* code.coding.system = $rhk-10
* code.coding.code = #J30.1
* code.coding.display = "Õietolmu põhjustatud allergiline riniit" 
* subject = Reference(Patient/$ee-mpi-patient)