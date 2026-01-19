Extension: ExtensionEETISAllergyDiagnosis
Id: ee-tis-allergy-diagnosis
Title: "Diagnose of allergy/intolerance"
Description: "Reference to a diagnose related to allergy/intolerance. (ee Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.)"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* value[x] only Reference(Condition)
