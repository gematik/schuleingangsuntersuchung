Profile: SeuChronischeKrankheit
Parent: Condition
Id: SeuChronischeKrankheit
* clinicalStatus MS
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* category MS
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem List Item"
* code MS
* code.coding MS
* subject MS

Instance: SeuChronischeKrankheitBeispiel
InstanceOf: SeuChronischeKrankheit
Usage: #example
* code = $sct#56265001 "Heart disease (disorder)"
* subject = Reference(OegdSeuPersonBeispiel)