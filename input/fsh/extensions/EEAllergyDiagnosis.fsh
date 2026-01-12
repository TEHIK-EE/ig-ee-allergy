Extension: ExtensionEETISAllergyDiagnosis
Id: ee-tis-allergy-diagnosis
Title: "Allergy diagnose"
Description: "Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele. Loend on pandud testimiseks, ära seda kasuta."
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* value[x] only Reference(Condition)
