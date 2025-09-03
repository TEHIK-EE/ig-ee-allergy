/* Extension: EEBodyPositionExtension
Id: ee-body-position-extension
Title: "Body Position During Measurement"
Description: "Records the body position (e.g., sitting, standing) at the time of measurement."
* value[x] only CodeableConcept
* valueCodeableConcept from EEBodyPositionVS (required)
* ^context.type = #element
* ^context.expression = "Observation"
*/