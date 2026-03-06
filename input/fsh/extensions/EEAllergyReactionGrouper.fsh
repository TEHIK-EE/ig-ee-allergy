Extension: ExtensionEETISAllergyReactionGrouper
Id: ee-tis-allergy-reaction-grouper
Title: "Grouper for reactions"
Description: "When tehre are more than one substance causing SAME reaction, these reactions are grouped together with this grouper. (ee Kui erinevatel toimeainetel on sama reaktsioon, grupeeritakse reaktsioonid selle laiendiga kokku.)"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance.reaction"
* value[x] only string 