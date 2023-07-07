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
Description: "Dieses CodeSystem enthält die Untersuchungsarten"
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