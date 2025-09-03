/*Instance: EEClinicalObservationExample
InstanceOf: EEClinicalObservation
Title: "Clinical Observation Example"
Description: "Example of a clinical observation."
Usage: #example

* status = #final
* code = EEObservationCodeSystem#temperature "Body Temperature"
* category = $observation-category#vital-signs
* subject.reference = "Patient/example"
* effectiveDateTime = "2025-05-01T14:30:00Z"
* valueQuantity.value = 37.5
* valueQuantity.unit = "°C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* extension[bodyPosition].valueCodeableConcept = $sct#33586001 "Sitting position"
*/