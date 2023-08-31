Profile: TestMeng
Parent: Test
Id: TestMeng
* code = TestTypesCs#meng "SOPESS- Mengenvergleich, Simultanerfassung"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 10 '1' "Punktwert"
* referenceRange[borderline].low = 11 '1' "Punktwert"
* referenceRange[borderline].high = 13 '1' "Punktwert"
* referenceRange[normal].low = 14 '1' "Punktwert"
* referenceRange[normal].high = 16 '1' "Punktwert"

Instance: TestMengBeispiel
InstanceOf: TestMeng
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 15 '1' "Punktwert"