Profile: SeuDisability
Parent: Observation
Id: SeuDisability
* status MS
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code = $sct#21134002 "Disability (finding)"
* code.coding MS
* subject MS
* effective[x] MS
* value[x] only CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from SeuDisabilityTypeVs
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuDisabilityTypeCs
Id: SeuDisabilityTypeCs
Title: "SEU Behinderungsart"
* #K "Körperlich"
* #G "Geistig"
* #S "Seelisch"
* #M "Mehrfach"

ValueSet: SeuDisabilityTypeVs
Id: SeuDisabilitTypeVs
Title: "SEU Behinderungsart"
Description: "Diese Codes enthalten alle Behinderungsarten"
* include codes from system SeuDisabilityTypeCs

Instance: SeuDisabilityExample
InstanceOf: SeuDisability
Usage: #example
* status = #final
* valueCodeableConcept = SeuDisabilityTypeCs#K "Körperlich"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"