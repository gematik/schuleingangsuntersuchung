Profile: GewichtGeburtNormal
Parent: Observation
Id: GewichtGeburtNormal
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#276712009 "Normal birth weight (finding)"
* code.coding MS
* subject MS
* value[x] only boolean
* valueBoolean MS

Instance: GewichtGeburtNormalBeispiel
InstanceOf: GewichtGeburtNormal
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)