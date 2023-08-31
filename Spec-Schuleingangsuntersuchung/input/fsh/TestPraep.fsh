Profile: TestPraep
Parent: Test
Id: TestPraep
* code = TestTypesCs#praep "SOPESS-Präpositionen"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 4 '1' "Punktwert"
* referenceRange[borderline].low = 5 '1' "Punktwert"
* referenceRange[borderline].high = 5 '1' "Punktwert"
* referenceRange[normal].low = 6 '1' "Punktwert"
* referenceRange[normal].high = 8 '1' "Punktwert"

Instance: TestPraepBeispiel
InstanceOf: TestPraep
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 5 '1' "Punktwert"