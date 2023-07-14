Profile: SeuPointAssessmentPlur
Parent: SeuPointAssessment
Id: SeuPointAssessmentPlur
* code = SeuPointAssessmentTypesCs#plur "SOPESS-Pluralbildung"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 3 '1' "Punktwert"
* referenceRange[borderline].low = 4 '1' "Punktwert"
* referenceRange[borderline].high = 5 '1' "Punktwert"
* referenceRange[normal].low = 6 '1' "Punktwert"
* referenceRange[normal].high = 7 '1' "Punktwert"

Instance: SeuPointAssessmentPlur-Example
InstanceOf: SeuPointAssessmentPlur
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 7 '1' "Punktwert"