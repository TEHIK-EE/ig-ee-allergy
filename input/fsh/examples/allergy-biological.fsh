Instance: AllergyBiologic
InstanceOf: AllergyIntolerance
Title: "Example of a biologic allergy"
Description: "An example of a biologic allergy."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-intolerance"
* language = #et
* code.coding[0].system = $sct
* code.coding[=].code = #424213003
* code.coding[=].display = "Allergy to bee venom"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(PractitionerRole/$ee-pract-role)
* category = #biologic
* type.coding.code = #allergy
* type.coding.system = $allergy-type
* type.coding.display = "Allergy"
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
* verificationStatus = $verification-status#confirmed "Confirmed"
* note.text = "Hirmsasti sügeleb."
* onsetDateTime = "2024-12-12"
* criticality = $criticality#low "Low Risk"
* reaction.extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-diagnosis"
* reaction.extension[=].valueReference = Reference(AllergyCondition1) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition" //Reference(Condition/$allergy-condition) //"https://fhir.ee/StructureDefinition/ee-tis-allergy-condition"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #247472004
* reaction.manifestation.concept.coding.display = "Paistetus"
* reaction.severity = $severity#mild "Mild"
* reaction.exposureRoute = $sct#6064005 "Topical route"
* reaction.onset = "2024-11-11"
* reaction.description = "koleluguonhirmus"
