Profile: SeuRiskFactor
Parent: Observation
Id: SeuRiskFactor
* status MS
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#80943009 "Risk factor (observable entity)"
* subject MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SeuRiskFactorVs
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuRiskFactorCs
Id: SeuRiskFactorCs
Title: "SEU Risikofaktoren"
* #familie "Familie"
* #nonkompliance "Nonkompliance"
* #sozial "Sozial"
* #migration "Migration"
* #sonstiges "Sonstiges Risiko"

ValueSet: SeuRiskFactorVs
Id: SeuRiskFactorVs
Title: "SEU Risikofaktoren"
* include codes from system SeuRiskFactorCs

Instance: SeuRiskFactorExampleNutrition
InstanceOf: SeuRiskFactor
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* valueCodeableConcept = SeuRiskFactorCs#familie "Familie"
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"