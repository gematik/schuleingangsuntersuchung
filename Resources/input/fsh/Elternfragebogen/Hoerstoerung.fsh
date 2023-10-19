Profile: Hoerstoerung
Parent: Condition
Id: Hoerstoerung
* clinicalStatus MS
* clinicalStatus = #unknown
* category = #problem-list-item
* category MS
* code MS
* code = $sct#3561000119106 "Severe hearing loss (disorder)"
* code.coding MS
* subject MS

Instance: HoerstoerungBeispiel
InstanceOf: Hoerstoerung
Usage: #example
* category = #problem-list-item
* clinicalStatus = #unknown
* code = $sct#3561000119106 "Severe hearing loss (disorder)"
* subject = Reference(PersonBeispiel)