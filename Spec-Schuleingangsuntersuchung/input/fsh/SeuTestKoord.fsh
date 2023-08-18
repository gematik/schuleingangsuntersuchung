Profile: SeuTestKoord
Parent: SeuTest
Id: SeuTestKoord
* code = SeuTestTypesCs#koord "Regelstufe"
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 6 '1' "Punktwert"
* referenceRange[borderline].low = 7 '1' "Punktwert"
* referenceRange[borderline].high = 8 '1' "Punktwert"
* referenceRange[normal].low = 9 '1' "Punktwert"
* referenceRange[normal].high = 30 '1' "Punktwert"

Instance: SeuTestKoordBeispiel
InstanceOf: SeuTestKoord
Usage: #example
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 12 '1' "Punktwert"