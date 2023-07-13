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

Instance: SeuStatusKindExample
InstanceOf: SeuStatusKind
Usage: #example
* status = #final
* valueCodeableConcept = SeuStatusKindCs#regel "Regel"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"