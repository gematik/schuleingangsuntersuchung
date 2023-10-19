Profile: Multilingual
Parent: Observation
Id: Multilingual
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#3281000175104 "Speaks multiple languages (finding)"
* code.coding MS
* subject MS
* value[x] only boolean
* valueBoolean MS

Instance: MultilingualBeispiel
InstanceOf: Multilingual
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)
