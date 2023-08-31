Profile: TestZaehl
Parent: Test
Id: TestZaehl
* code = TestTypesCs#zaehl "SOPESS-Zahlen und Mengenwissen"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 12 '1' "Punktwert"
* referenceRange[borderline].low = 13 '1' "Punktwert"
* referenceRange[borderline].high = 16 '1' "Punktwert"
* referenceRange[normal].low = 17 '1' "Punktwert"
* referenceRange[normal].high = 20 '1' "Punktwert"

Instance: TestZaehlBeispiel
InstanceOf: TestZaehl
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 14 '1' "Punktwert"