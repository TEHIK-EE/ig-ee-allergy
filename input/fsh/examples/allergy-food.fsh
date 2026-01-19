Instance: AllergyFood
InstanceOf: AllergyIntolerance
Title: "Example of a food allergy"
Description: "An example of a food allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* code.coding[0].system = $sct
* code.coding[=].code = #860604008
* code.coding[=].display = "Allergy to apple"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #food
* type.coding.code = #allergy
* type.coding.system = $allergy-type
* type.coding.display = "Allergy"
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#confirmed "Confirmed"
* note.text = "Käinud juba 5 erineva allergoloogi juures."
* onsetDateTime = "2024-12-12"
* criticality = $criticality#low "Low Risk"
* reaction.extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction.extension[=].valueReference = Reference(AllergyCondition1) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition" //Reference(Condition/$allergy-condition) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #271807003
* reaction.manifestation.concept.coding.display = "Nahalööve"
* reaction.severity = $severity#mild "Mild"
* reaction.exposureRoute = $sct#448598008 "Cutaneous route"
* reaction.onset = "2024-11-11"
* reaction.description = "koleluguonhirmus"
