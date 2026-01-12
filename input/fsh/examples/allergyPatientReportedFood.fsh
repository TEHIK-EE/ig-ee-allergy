Instance: AllergyPatientReportedFood
InstanceOf: AllergyIntolerance
Title: "Example Allergy of patient reported food"
Description: "A food allergy reported by patient."
* meta.profile = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-patient-reported"
* language = #et
//* id = "example"
//* extension[0].url = "https://fhir.ee/allergy/StructureDefinition/ee-tis-allergy-probability" //0 tähistab esimest extensioni
//* extension[=].valueCodeableConcept = $valu#02 "Esines 1-2 päeva vältel viimase 3 päeva jooksul" // = tähendab, et sama loend
* code.coding[0].system = $sct
* code.coding[=].code = #91938006
* code.coding[=].display = "Allergy to strawberries"
* patient = Reference(Patient/$ee-mpi-patient)
* participant.actor = Reference(Patient/$ee-mpi-patient)
* category = #food
* recordedDate = "2012-12-13" 
* clinicalStatus = $clinical#active "Active"
//* verificationStatus = $verification#presumed "Presumed"
* reaction.manifestation.concept.coding.system = $sct
* reaction.manifestation.concept.coding.code = #168000 
* reaction.manifestation.concept.coding.display = "Typhlolithiasis"
* reaction.onset.value = "2023-12-23"
* reaction.exposureRoute.coding = $sct#47625008	"Oral route"
* reaction.description = "ja nii on"
* note.text = "sõin maasikaidja hakkasin sügelema"