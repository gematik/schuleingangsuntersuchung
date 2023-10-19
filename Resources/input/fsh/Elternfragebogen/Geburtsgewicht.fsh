Profile: Geburtsgewicht
Parent: Observation
Id: Geburtsgewicht
* status MS
* status = #final
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code = $sct#364589006 "Birth weight (observable entity)"
* code.coding MS
* subject MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit MS
* valueQuantity.unit = "Gram"
* valueQuantity.system MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code MS
* valueQuantity.code = #g

Instance: GeburtsgewichtBeispiel
InstanceOf: Geburtsgewicht
Usage: #example
* valueQuantity.value = 1000
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "Gram"
* valueQuantity.code = #g
* subject = Reference(PersonBeispiel)