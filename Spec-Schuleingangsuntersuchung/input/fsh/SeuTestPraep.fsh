Profile: SeuTestPraep
Parent: SeuTest
Id: SeuTestPraep
* code = SeuTestTypesCs#praep "SOPESS-Präpositionen"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 4 '1' "Punktwert"
* referenceRange[borderline].low = 5 '1' "Punktwert"
* referenceRange[borderline].high = 5 '1' "Punktwert"
* referenceRange[normal].low = 6 '1' "Punktwert"
* referenceRange[normal].high = 8 '1' "Punktwert"

Instance: SeuTestPraep-Example
InstanceOf: SeuTestPraep
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 5 '1' "Punktwert"