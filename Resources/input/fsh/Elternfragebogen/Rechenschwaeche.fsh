Profile: Rechenschwaeche
Parent: Observation
Id: Rechenschwaeche
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#47916000 "Developmental arithmetic disorder (disorder)"
* code.coding MS
* subject MS
* effective[x] MS
* value[x] only boolean
* valueBoolean MS

Instance: RechenschwaecheBeispiel
InstanceOf: Rechenschwaeche
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"