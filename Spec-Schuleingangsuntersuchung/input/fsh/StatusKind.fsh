Profile: StatusKind
Parent: Observation
Id: StatusKind
* status MS
* category = $observation-category#exam "Exam"
* code = $sct#308402004 "Child development status (finding)"
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from StatusKindVs
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  StatusKindCs
Id: StatusKindCs
Title: "SEU Status Kind"
* #regel "Regelstufe"
* #kann "Kannstufe"
* #eingangsstufe "Eingangsstufe"

ValueSet: StatusKindVs
Id: StatusKindVs
Title: "SEU Status Kind"
Description: "Diese Codes enthalten die möglichen Status des Kindes"
* include codes from system StatusKindCs

Instance: StatusKindBeispiel
InstanceOf: StatusKind
Usage: #example
* status = #final
* valueCodeableConcept = StatusKindCs#regel "Regel"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"