Instance: AllergyEnvironment
InstanceOf: AllergyIntolerance
Title: "Example of a environmental allergy"
Description: "An example of a food allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* code.coding[0].system = $sct
* code.coding[=].code = #1003755004
* code.coding[=].display = "Allergy to Hevea brasiliensis latex protein"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #environment
* type.coding.code = #allergy
* type.coding.system = $allergy-type
* type.coding.display = "Allergy"
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#confirmed "Confirmed"
* note.text = "all blaablaa ergia"
* onsetDateTime = "2024-12-12"
* criticality = $criticality#high "High Risk"
* reaction.extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction.extension[=].valueReference.reference = "https://fhir.ee/StructureDefinition/blabla-condition"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #40275004
* reaction.manifestation.concept.coding.display = "Kontaktdermatiit"
* reaction.severity = $severity#mild "Mild"
* reaction.exposureRoute = $sct#447694001 "Respiratory tract route"
* reaction.onset = "2024-11-11"
* reaction.description = "koleluguonhirmus"
