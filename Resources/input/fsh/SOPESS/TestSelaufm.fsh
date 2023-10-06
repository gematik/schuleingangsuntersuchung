Profile: TestSelaufm
Parent: Test
Id: TestSelaufm
* code = TestTypesCS#selaufm "SOPESS- Selektive-Aufmerksamkeit"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 10 '1' "Punktwert"
* referenceRange[borderline].low = 11 '1' "Punktwert"
* referenceRange[borderline].high = 13 '1' "Punktwert"
* referenceRange[normal].low = 14 '1' "Punktwert"
* referenceRange[normal].high = 29 '1' "Punktwert"

Instance: TestSelaufmBeispiel
InstanceOf: TestSelaufm
Usage: #example
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 28 '1' "Punktwert"