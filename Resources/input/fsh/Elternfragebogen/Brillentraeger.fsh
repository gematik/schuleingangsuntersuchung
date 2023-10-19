Profile: Brillentraeger
Parent: Observation
Id: Brillentraeger
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#225582009 "Wears glasses (finding)"
* code.coding MS
* subject MS
* value[x] only boolean
* valueBoolean MS

Instance: BrillentraegerBeispiel
InstanceOf: Brillentraeger
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)
