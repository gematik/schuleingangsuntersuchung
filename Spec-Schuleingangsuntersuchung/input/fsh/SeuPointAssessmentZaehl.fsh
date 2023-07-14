Profile: SeuPointAssessmentZaehl
Parent: SeuPointAssessment
Id: SeuPointAssessmentZaehl
* code = SeuPointAssessmentTypesCs#zaehl "SOPESS-Zahlen und Mengenwissen"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 12 '1' "Punktwert"
* referenceRange[borderline].low = 13 '1' "Punktwert"
* referenceRange[borderline].high = 16 '1' "Punktwert"
* referenceRange[normal].low = 17 '1' "Punktwert"
* referenceRange[normal].high = 20 '1' "Punktwert"

Instance: SeuPointAssessmentZaehl-Example
InstanceOf: SeuPointAssessmentZaehl
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 14 '1' "Punktwert"