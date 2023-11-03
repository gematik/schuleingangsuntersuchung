Profile: Mehraufwand
Parent: Observation
Id: Mehraufwand
* status MS
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code = $sct#416393001 "Procedure time out (procedure)"
* code.coding MS
* subject MS
* effective[x] MS
* value[x] only boolean 
* valueBoolean MS

Instance: MehraufwandBeispiel
InstanceOf: Mehraufwand
Usage: #example
* status = #final
* valueBoolean = true
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"