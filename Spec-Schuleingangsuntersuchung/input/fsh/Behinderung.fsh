Profile: Behinderung
Parent: Observation
Id: Behinderung
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
* valueCodeableConcept from BehinderungsTypVs
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  BehinderungsTypCs
Id: BehinderungsTypCs
Title: "SEU Behinderungsart"
* #K "Körperlich"
* #G "Geistig"
* #S "Seelisch"
* #M "Mehrfach"

ValueSet: BehinderungsTypVs
Id: BehinderungsTypVs
Title: "SEU Behinderungsart"
Description: "Diese Codes enthalten alle Behinderungsarten"
* include codes from system BehinderungsTypCs

Instance: BehinderungBeispiel
InstanceOf: Behinderung
Usage: #example
* status = #final
* valueCodeableConcept = BehinderungsTypCs#K "Körperlich"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"