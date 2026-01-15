# Artifacts Summary - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md) | A base profile for allergy and intolerance. |
| [EE TIS AllergyIntolerance Patient Reported](StructureDefinition-ee-tis-allergy-patient-reported.md) | A profile for allergy and intolerance which is reported by patient or RelatedPerson. |
| [EE TIS AllergyIntoleranceNoAllergy](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.md) | A profile when there is NO KNOWN allergy and intolerance. |
| [EE TIS Condition](StructureDefinition-ee-tis-allergy-condition.md) | A profile for condition/diagnose allergy and intolerance. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Allergy diagnose](StructureDefinition-ee-tis-allergy-diagnosis.md) | Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele. Loend on pandud testimiseks, ära seda kasuta. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Allergy](AllergyIntolerance-example.md) | A simple example of a FHIR allergy resource. |
| [Example Allergy of patient reported food](AllergyIntolerance-AllergyPatientReportedFood.md) | A food allergy reported by patient. |
| [Example of a biological allergy](AllergyIntolerance-AllergyBiologic.md) | An example of a biologic allergy. |
| [Example of a condition indication allergy](Condition-AllergyCondition.md) | Example of a condition indication allergy |
| [Example of a environmental allergy](AllergyIntolerance-AllergyEnvironment.md) | An example of a environmental allergy. |
| [Example of a food allergy](AllergyIntolerance-AllergyFood.md) | An example of a food allergy. |
| [Example of a medication allergy](AllergyIntolerance-AllergyMedication.md) | An example of a medication allergy. |
| [Example of no known Allergy](AllergyIntolerance-noAllergy.md) | A simple example of a FHIR allergy resource. |
| [Patient reported drug Allergy](AllergyIntolerance-AllergyPatientReportedDrug.md) | A food allergy reported by patient. |

