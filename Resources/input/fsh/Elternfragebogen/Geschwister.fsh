Profile: Geschwister
Parent: FamilyMemberHistory
Id: Geschwister
* status MS
* status = #completed
* patient MS
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SIB "Sibling"
* born[x] only date
* bornDate MS
* sex MS

Instance: GeschwisterBeispiel
InstanceOf: Geschwister
Usage: #example
* patient = Reference(PersonBeispiel)
* bornDate = "2000-01-01"
* sex = #female