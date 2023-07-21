Profile: SeuPointAssessmentDys
Parent: SeuPointAssessment
Id: SeuPointAssessmentDys
* code = SeuPointAssessmentTypesCs#dys "Anzahl auffälliger Laut/Stammfehler"
* referenceRange.low = 0 '1' "Punktwert"
* referenceRange.high = 10 '1' "Punktwert"

Instance: SeuPointAssessmentDys-Example
InstanceOf: SeuPointAssessmentDys
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 2 '1' "Punktwert"