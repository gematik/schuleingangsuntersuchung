Profile: SeuTestSelaufm
Parent: SeuTest
Id: SeuTestSelaufm
* code = SeuTestTypesCs#selaufm "SOPESS- Selektive-Aufmerksamkeit"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 10 '1' "Punktwert"
* referenceRange[borderline].low = 11 '1' "Punktwert"
* referenceRange[borderline].high = 13 '1' "Punktwert"
* referenceRange[normal].low = 14 '1' "Punktwert"
* referenceRange[normal].high = 29 '1' "Punktwert"

Instance: SeuTestSelaufmBeispiel
InstanceOf: SeuTestSelaufm
Usage: #example
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 28 '1' "Punktwert"