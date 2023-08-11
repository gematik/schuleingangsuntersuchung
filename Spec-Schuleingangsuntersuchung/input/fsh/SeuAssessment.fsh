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
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuAssessmentResultCs
Id: SeuAssessmentResultCs
Title: "SEU Assessment Results"
* #I "In Ordnung"
* #B "Behandelt"
* #A "Arztbrief"
* #G "Grenzwertig"
* #U "Unbekannt"

ValueSet: SeuAssessmentResultVs
Id: SeuAssessmentResultVs
Title: "SEU Assessment Result"
Description: "Diese Codes enthalten die möglichen Antworten einer Untersuchung"
* include codes from system SeuAssessmentResultCs

ValueSet: SeuAssessmentArtVs
Id: SeuAssessmentArtVs
Title: "SEU Assessment Type"
Description: "Dieses ValueSet enthält die Untersuchungsarten"
* $sct#87276001 "Nutritional status"
* $sct#79984008 "Skeletal muscle system structure (body structure)"
* $sct#113192009 "Skeletal system structure (body structure)"
* $sct#394591006 "Neurological Status"
* $sct#123036008 "Endocrine function"
* $sct#719983008 "Breathing process (qualifier value)"
* $sct#70337006 "Cardiovascular function"
* $sct#818983003 "Abdomen"
* $sct#39937001 "Skin"
* $sct#386045008 "Hair"
* $sct#770802007 "Nail unit structure (body structure)"
* $sct#271928008 "Ear, nose and throat test finding"
* $sct#27624003 "Chronic disease (disorder)"
* $sct#21134002 "Disability (finding)"
* $sct#717038004 "Test of Language Competence score"
* $sct#1173048002 "Auditory perception function"
* $sct#311886005 "Visual perception, function"
* $sct#282716004 "Gross motor functions"
* $sct#284363000 "Fine motor functions"

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