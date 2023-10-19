Profile: Krankenhausaufenthalt
Parent: Procedure
Id: Krankenhausaufenthalt
* status MS
* status = #completed
* code MS
* code = $sct#32485007 "Hospital admission (procedure)"
* code.coding MS
* subject MS

Instance: KrankenhausaufenthaltBeispiel
InstanceOf: Krankenhausaufenthalt
Usage: #example
* subject = Reference(PersonBeispiel)
* code = $sct#32485007 "Hospital admission (procedure)"
