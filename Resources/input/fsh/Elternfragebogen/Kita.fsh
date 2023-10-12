Profile: Kita
Parent: Observation
Id: Kita
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#161117005 "Nursery (finding)"
* code.coding MS
* subject MS
* effective[x] MS
* value[x] only integer
* valueInteger MS

Instance: KitaBeispiel
InstanceOf: Kita
Usage: #example
* valueInteger = 36
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"