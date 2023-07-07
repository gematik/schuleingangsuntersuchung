Profile: SeuAssessment
Parent: Observation
Id: SeuAssessment
* status MS
* category MS
* code MS
* code from SeuAssessmentArtVs
* code.coding MS
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

Instance: SeuAssessmentExample
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#87276001 "Nutritional Status"
* valueCodeableConcept = SeuAssessmentResultCs#A "Arztbrief"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"