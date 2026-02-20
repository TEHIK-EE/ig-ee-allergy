# Artifacts Summary - EE TIS Allergy IG v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EE TIS AllergyIntolerance](StructureDefinition-ee-tis-allergy-intolerance.md) | A base profile for allergy and intolerance. (ee Tervishoiutöötaja poolt registreeritav allergia.) |
| [EE TIS AllergyIntolerance Patient Reported](StructureDefinition-ee-tis-allergy-patient-reported.md) | A profile for allergy or intolerance which is reported by patient or RelatedPerson. |
| [EE TIS AllergyIntoleranceNoAllergy](StructureDefinition-ee-tis-allergy-intolerance-no-allergy.md) | A profile when there is NO KNOWN allergy/intolerance. |
| [EE TIS Condition](StructureDefinition-ee-tis-allergy-condition.md) | A profile for condition/diagnose allergy and intolerance. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Diagnose of allergy/intolerance](StructureDefinition-ee-tis-allergy-diagnosis.md) | Reference to a diagnose related to allergy/intolerance. (ee Kinnitus tõenäosusele, mis on seotud kalduvuse või potentsiaalse riskiga reaktsiooni suhtes tuvastatud ainele.) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [An example of a medication allergy, reaction with many substances.](AllergyIntolerance-AllergyMedicationFourSubstances.md) | Example of a medication allergy where several different penicillin related substances cause reaction |
| [Example of a biologic allergy](AllergyIntolerance-AllergyBiologic.md) | An example of a biologic allergy. |
| [Example of a diagnose reference related to allergy](Condition-AllergyCondition1.md) | Example of a diagnose related to allergy |
| [Example of a environmental allergy](AllergyIntolerance-AllergyEnvironment.md) | An example of a environmental allergy. |
| [Example of a food allergy](AllergyIntolerance-AllergyFood.md) | An example of a food allergy. |
| [Example of a medication allergy](AllergyIntolerance-AllergyMedication.md) | An example of a medication allergy. |
| [Example of no known Allergy](AllergyIntolerance-noAllergy.md) | An example of a no known allergy. |
| [Example of patient reported food allergy.](AllergyIntolerance-AllergyPatientReportedFood.md) | A food allergy reported by patient. |
| [Patient reported medication allergy](AllergyIntolerance-AllergyPatientReportedDrug.md) | A medication allergy reported by patient. |

