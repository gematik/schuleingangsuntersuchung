Profile: SeuMehraufwand
Parent: Observation
Id: SeuMehraufwand
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

Instance: SeuMehraufwandBeispiel
InstanceOf: SeuMehraufwand
Usage: #example
* status = #final
* valueBoolean = true
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"