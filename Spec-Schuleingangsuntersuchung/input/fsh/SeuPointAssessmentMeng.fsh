Profile: SeuPointAssessmentMeng
Parent: SeuPointAssessment
Id: SeuPointAssessmentMeng
* code = SeuPointAssessmentTypesCs#meng "SOPESS- Mengenvergleich, Simultanerfassung"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 10 '1' "Punktwert"
* referenceRange[borderline].low = 11 '1' "Punktwert"
* referenceRange[borderline].high = 13 '1' "Punktwert"
* referenceRange[normal].low = 14 '1' "Punktwert"
* referenceRange[normal].high = 16 '1' "Punktwert"

Instance: SeuPointAssessmentMeng-Example
InstanceOf: SeuPointAssessmentMeng
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 15 '1' "Punktwert"