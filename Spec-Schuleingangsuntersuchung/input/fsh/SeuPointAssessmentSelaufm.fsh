Profile: SeuPointAssessmentSelaufm
Parent: SeuPointAssessment
Id: SeuPointAssessmentSelaufm
* code = SeuPointAssessmentTypesCs#selaufm "SOPESS- Selektive-Aufmerksamkeit"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 10 '1' "Punktwert"
* referenceRange[borderline].low = 11 '1' "Punktwert"
* referenceRange[borderline].high = 13 '1' "Punktwert"
* referenceRange[normal].low = 14 '1' "Punktwert"
* referenceRange[normal].high = 29 '1' "Punktwert"

Instance: SeuPointAssessmentSelaufm-Example
InstanceOf: SeuPointAssessmentSelaufm
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 28 '1' "Punktwert"