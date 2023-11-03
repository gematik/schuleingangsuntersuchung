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
* valueCodeableConcept from BehinderungsTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  BehinderungsTypCS
Id: BehinderungsTypCS
Title: "SEU Behinderungsart"
* #K "Körperlich"
* #G "Geistig"
* #S "Seelisch"
* #M "Mehrfach"

ValueSet: BehinderungsTypVS
Id: BehinderungsTypVS
Title: "SEU Behinderungsart"
Description: "Diese Codes enthalten alle Behinderungsarten"
* include codes from system BehinderungsTypCS

Instance: BehinderungBeispiel
InstanceOf: Behinderung
Usage: #example
* status = #final
* valueCodeableConcept = BehinderungsTypCS#K "Körperlich"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* category = $observation-category#exam "Exam"