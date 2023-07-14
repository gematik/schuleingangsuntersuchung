Profile: SeuPointAssessmentVismot
Parent: SeuPointAssessment
Id: SeuPointAssessmentVismot
* code = SeuPointAssessmentTypesCs#vismot "Visuomotorik"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 4 '1' "Punktwert"
* referenceRange[borderline].low = 5 '1' "Punktwert"
* referenceRange[borderline].high = 6 '1' "Punktwert"
* referenceRange[normal].low = 7 '1' "Punktwert"
* referenceRange[normal].high = 12 '1' "Punktwert"

Instance: SeuPointAssessmentVismot-Example
InstanceOf: SeuPointAssessmentVismot
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 6 '1' "Punktwert"