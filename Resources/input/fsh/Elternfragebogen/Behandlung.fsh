Profile: Behandlung
Parent: Observation
Id: Behandlung
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#182991002 "Treatment given (situation)"
* code.coding MS
* subject MS
* value[x] only boolean
* valueBoolean MS

Instance: BehandlungBeispiel
InstanceOf: Behandlung
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)