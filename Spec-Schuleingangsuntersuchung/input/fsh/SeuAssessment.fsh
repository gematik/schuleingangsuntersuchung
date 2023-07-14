Profile: SeuAssessment
Parent: Observation
Id: SeuAssessment
* status MS
* category MS
* category = $observation-category#exam "Exam"
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

Instance: SeuAssessmentExampleNutrition
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#87276001 "Nutritional Status"
* valueCodeableConcept = SeuAssessmentResultCs#A "Arztbrief"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"

Instance: SeuAssessmentExampleMuscle
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#79984008 "Skeletal muscle system structure (body structure)"
* valueCodeableConcept = SeuAssessmentResultCs#I "In Ordnung"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"

Instance: SeuAssessmentExampleNeurological
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#394591006 "Neurological Status"
* valueCodeableConcept = SeuAssessmentResultCs#I "In Ordnung"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"

Instance: SeuAssessmentExampleEndocrine
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#123036008 "Endocrine function"
* valueCodeableConcept = SeuAssessmentResultCs#G "Grenzwertig"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"

Instance: SeuAssessmentExampleChronicDisease
InstanceOf: SeuAssessment
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#27624003 "Chronic disease (disorder)"
* valueCodeableConcept = SeuAssessmentResultCs#U "Unbekannt"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"