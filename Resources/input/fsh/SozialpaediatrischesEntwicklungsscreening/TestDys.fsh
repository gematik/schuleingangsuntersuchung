Profile: TestDys
Parent: Test
Id: TestDys
* code = TestTypesCS#dys "Anzahl auffälliger Laut/Stammfehler"
* referenceRange[abnormal].low = 10 '1' "Punktwert"
* referenceRange[abnormal].high = 30 '1' "Punktwert"
* referenceRange[borderline].low = 9 '1' "Punktwert"
* referenceRange[borderline].high = 10 '1' "Punktwert"
* referenceRange[normal].low = 0 '1' "Punktwert"
* referenceRange[normal].high = 8 '1' "Punktwert"

Instance: TestDysBeispiel
InstanceOf: TestDys
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 2 '1' "Punktwert"