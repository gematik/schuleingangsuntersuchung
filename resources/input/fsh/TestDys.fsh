Profile: TestDys
Parent: Test
Id: TestDys
* code = TestTypesCS#dys "Anzahl auffälliger Laut/Stammfehler"
* referenceRange.low = 0 '1' "Punktwert"
* referenceRange.high = 10 '1' "Punktwert"

Instance: TestDysBeispiel
InstanceOf: TestDys
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 2 '1' "Punktwert"