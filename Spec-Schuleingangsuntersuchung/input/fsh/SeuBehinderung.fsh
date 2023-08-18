Profile: SeuBehinderung
Parent: Observation
Id: SeuBehinderung
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
* valueCodeableConcept from SeuBehinderungTypeVs
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuBehinderungTypeCs
Id: SeuBehinderungTypeCs
Title: "SEU Behinderungsart"
* #K "Körperlich"
* #G "Geistig"
* #S "Seelisch"
* #M "Mehrfach"

ValueSet: SeuBehinderungTypeVs
Id: SeuDisabilitTypeVs
Title: "SEU Behinderungsart"
Description: "Diese Codes enthalten alle Behinderungsarten"
* include codes from system SeuBehinderungTypeCs

Instance: SeuBehinderungExample
InstanceOf: SeuBehinderung
Usage: #example
* status = #final
* valueCodeableConcept = SeuBehinderungTypeCs#K "Körperlich"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"