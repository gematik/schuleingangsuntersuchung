Profile: LeseRechtschreibSchwaeche
Parent: Observation
Id: LeseRechtschreibSchwaeche
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#59770006 "Dyslexia (finding)"
* code.coding MS
* subject MS
* effective[x] MS
* value[x] only boolean
* valueBoolean MS

Instance: LeseRechtschreibSchwaecheBeispiel
InstanceOf: LeseRechtschreibSchwaeche
Usage: #example
* valueBoolean = true
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"