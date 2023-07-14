Profile: SeuPointAssessmentPswoe
Parent: SeuPointAssessment
Id: SeuPointAssessmentPswoe
* code = #koord "Regelstufe"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 3 '1' "Punktwert"
* referenceRange[borderline].low = 4 '1' "Punktwert"
* referenceRange[borderline].high = 4 '1' "Punktwert"
* referenceRange[normal].low = 5 '1' "Punktwert"
* referenceRange[normal].high = 6 '1' "Punktwert"

Instance: SeuPointAssessmentPswoe-Example
InstanceOf: SeuPointAssessmentPswoe
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 6 '1' "Punktwert"