Profile: SeuStatusKind
Parent: Observation
Id: SeuStatusKind
* status MS
* category = $observation-category#exam "Exam"
* code = $sct#308402004 "Child development status (finding)"
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from SeuStatusKindVs
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuStatusKindCs
Id: SeuStatusKindCs
Title: "SEU Status Kind"
* #regel "Regelstufe"
* #kann "Kannstufe"
* #eingangsstufe "Eingangsstufe"

ValueSet: SeuStatusKindVs
Id: SeuStatusKindVs
Title: "SEU Status Kind"
Description: "Diese Codes enthalten die möglichen Status des Kindes"
* include codes from system SeuStatusKindCs

Instance: SeuStatusKindBeispiel
InstanceOf: SeuStatusKind
Usage: #example
* status = #final
* valueCodeableConcept = SeuStatusKindCs#regel "Regel"
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"