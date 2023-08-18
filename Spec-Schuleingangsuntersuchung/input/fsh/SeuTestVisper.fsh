Profile: SeuTestVisper
Parent: SeuTest
Id: SeuTestVisper
* code = $sct#311886005 "Visual perception, function"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 8 '1' "Punktwert"
* referenceRange[borderline].low = 9 '1' "Punktwert"
* referenceRange[borderline].high = 10 '1' "Punktwert"
* referenceRange[normal].low = 11 '1' "Punktwert"
* referenceRange[normal].high = 15 '1' "Punktwert"

Instance: SeuTestVisperBeispiel
InstanceOf: SeuTestVisper
Usage: #example
* subject = Reference(SeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 14 '1' "Punktwert"