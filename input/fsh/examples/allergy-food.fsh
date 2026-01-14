Instance: AllergyFood
InstanceOf: AllergyIntolerance
Title: "Example of a food allergy"
Description: "An example of a food allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* code.coding[0].system = $sct
* code.coding[=].code = #200001
* code.coding[=].display = "Berberine"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #food
* type.coding.code = #allergy "Allergy"
* type.coding.system = $allergy-type
* type.coding.display = "Allergy"
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#confirmed "Confirmed"
* note.text = "tõsine allergia"
* onsetDateTime = "2024-12-12"
* criticality = $criticality#low "Low Risk"
* reaction.extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction.extension[=].valueReference.reference = "https://fhir.ee/StructureDefinition/blabla-condition"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #168000 
* reaction.manifestation.concept.coding.display = "Typhlolithiasis"
* reaction.severity = $severity#mild "Mild"
* reaction.exposureRoute = $sct#448598008 "Cutaneous route"
* reaction.onset = "2024-11-11"
* reaction.description = "koleluguonhirmus"
