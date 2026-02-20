Instance: AllergyMedicationFourSubstances
InstanceOf: AllergyIntolerance
Title: "An example of a medication allergy, reaction with many substances."
Description: "Example of a medication allergy where several different penicillin related substances cause reaction"
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
* reaction[0].extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction[0].extension[=].valueReference = Reference(AllergyCondition1) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition" //Reference(Condition/$allergy-condition) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition"
* reaction[0].substance = $toimeained#8744 "bensüülpenitsilliin"
* reaction[0].manifestation.concept.coding.system = $sct
* reaction[0].manifestation.concept.coding.code = #40275004
* reaction[0].manifestation.concept.coding.display = "Kontaktdermatiit"
* reaction[0].severity = $severity#mild "Mild"
* reaction[0].exposureRoute = $sct#447694001 "Respiratory tract route"
* reaction[0].onset = "2024-11-11"
* reaction[0].description = "koleluguonhirmus"
* reaction[1].substance = $toimeained#11212 "benetamiinpenitsilliin"
* reaction[1].manifestation.concept.coding.system = $sct
* reaction[1].manifestation.concept.coding.code = #40275004
* reaction[1].manifestation.concept.coding.display = "Kontaktdermatiit"
* reaction[2].substance = $toimeained#11828 "bensatiinbensüülpenitsilliin"
* reaction[2].manifestation.concept.coding.system = $sct
* reaction[2].manifestation.concept.coding.code = #40275004
* reaction[2].manifestation.concept.coding.display = "Kontaktdermatiit"
* reaction[3].substance = $toimeained#10920 "bensatiinfenoksümetüülpenitsilliin"
* reaction[3].manifestation.concept.coding.system = $sct
* reaction[3].manifestation.concept.coding.code = #40275004
* reaction[3].manifestation.concept.coding.display = "Kontaktdermatiit"
