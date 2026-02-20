Instance: AllergyMedication
InstanceOf: AllergyIntolerance
Title: "Example of a medication allergy"
Description: "An example of a medication allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* code.coding[0].system = $allergy-code
* code.coding[=].code = #764146007 
* code.coding[=].display = "Substance with penicillin structure"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #medication
* type.coding.code = #allergy
* type.coding.system = $allergy-type
* type.coding.display = "Allergy"
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#confirmed "Confirmed"
* note.text = "Hirmsasti sügeleb."
* onsetDateTime = "2024-12-12"
* criticality = $criticality#high "High Risk"
* reaction.extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction.extension[=].valueReference = Reference(AllergyCondition1) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition" //Reference(Condition/$allergy-condition) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition"
* reaction.substance = $toimeained#8744 "bensüülpenitsilliin"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #40275004
* reaction.manifestation.concept.coding.display = "Kontaktdermatiit"
* reaction.severity = $severity#mild "Mild"
* reaction.exposureRoute = $sct#447694001 "Respiratory tract route"
* reaction.onset = "2024-11-11"
* reaction.description = "koleluguonhirmus"
