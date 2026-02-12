Profile: EETISAllergyCondition
Parent: Condition
Id: ee-tis-allergy-condition
Title: "EE TIS Condition"
Description: "A profile for condition/diagnose allergy and intolerance."
* subject only Reference($ee-mpi-patient)
* clinicalStatus.coding from http://hl7.org/fhir/ValueSet/condition-clinical
* code from $rhk-10-VS