Profile: SeuSchoolRecommendation
Parent: Observation
Id: SeuSchoolRecommendation
* status MS
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code.coding MS
* code = $sct#420227002 "Recommendation to (procedure)" // TODO Find better code
* subject MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SeuSchoolRecommendationVs
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuSchoolRecommendationCs
Id: SeuSchoolRecommendationCs
Title: "SEU Schulempfehlungen"
* #nein "keine regelabweichende Schulempfehlung"
* #zurk "Zurückstellung Regelkind"
* #zuek "Zurückstellung Eingangsstufenkind"
* #bekk "Bedenken Kannkind"
* #bfz "Vorstellung Beratungs- und Förderzentrum"
* #zukk "Zurückstellung Kannkind"
* #sopf "Sonderpädagogische Förderung"

ValueSet: SeuSchoolRecommendationVs
Id: SeuSchoolRecommendationVs
Title: "SEU Schulempfehlungen"
* include codes from system SeuSchoolRecommendationCs

Instance: SeuSchoolRecommendationExampleNutrition
InstanceOf: SeuSchoolRecommendation
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* valueCodeableConcept = SeuSchoolRecommendationCs#nein "keine regelabweichende Schulempfehlung"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"