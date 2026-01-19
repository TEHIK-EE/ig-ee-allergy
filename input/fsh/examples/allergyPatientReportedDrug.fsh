Instance: AllergyPatientReportedDrug
InstanceOf: AllergyIntolerance
Title: "Patient reported medication allergy"
Description: "A medication allergy reported by patient."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported"
* language = #et
//* id = "example"
//* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability" //0 tähistab esimest extensioni
//* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
* code.coding[0].system = $sct
* code.coding[=].code = #293586001
* code.coding[=].display = "Aspirin allergy"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(Patient/$ee-mpi-patient)
* category = #medication
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical-status#active "Active"
//* verificationStatus = $verification#presumed "Presumed"
//* reaction.substance.coding = $toimeained#9773 "atsetüülsalitsüülhape"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #3639002	
* reaction.manifestation.concept.coding.display = "Glossoptosis"
* reaction.onset = "2023-12-23"
* reaction.exposureRoute.coding = $sct#26643006	"Oral route"
* reaction.description = "ja nii on"
* note.text = "võtsin peavalurohtu ja läksin täiesti kärna"