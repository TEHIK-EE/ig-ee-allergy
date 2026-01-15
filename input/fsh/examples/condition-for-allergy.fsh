Instance: AllergyCondition
InstanceOf: Condition
Title: "Example of a condition indication allergy"
Description: "Example of a condition indication allergy"
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-condition"
* language = #et
* clinicalStatus = #active
* code.coding.system = $rhk-10
* code.coding.code = #J30.1
* code.coding.display = "Õietolmu põhjustatud allergiline riniit" 
* subject = Reference(Patient/$ee-mpi-patient)