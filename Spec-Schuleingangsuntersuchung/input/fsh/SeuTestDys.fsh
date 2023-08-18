Profile: SeuTestDys
Parent: SeuTest
Id: SeuTestDys
* code = SeuTestTypesCs#dys "Anzahl auffälliger Laut/Stammfehler"
* referenceRange.low = 0 '1' "Punktwert"
* referenceRange.high = 10 '1' "Punktwert"

Instance: SeuTestDysBeispiel
InstanceOf: SeuTestDys
Usage: #example
* subject = Reference(SeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 2 '1' "Punktwert"