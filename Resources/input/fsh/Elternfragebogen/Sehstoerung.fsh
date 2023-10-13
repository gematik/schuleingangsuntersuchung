Profile: Sehstoerung
Parent: Condition
Id: Sehstoerung
* clinicalStatus MS
* clinicalStatus = #unknown
* category = #problem-list-item
* category MS
* code MS
* code = $sct#397540003 "Visual impairment (disorder)"
* code.coding MS
* subject MS

Instance: SehstoerungBeispiel
InstanceOf: Sehstoerung
Usage: #example
* category = #problem-list-item
* clinicalStatus = #unknown
* code = $sct#397540003 "Visual impairment (disorder)"
* subject = Reference(PersonBeispiel)