Profile: SeuRisikofaktor
Parent: Observation
Id: SeuRisikofaktor
* status MS
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#80943009 "Risk factor (observable entity)"
* subject MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SeuRisikofaktorVs
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SeuRisikofaktorCs
Id: SeuRisikofaktorCs
Title: "SEU Risikofaktoren"
* #familie "Familie"
* #nonkompliance "Nonkompliance"
* #sozial "Sozial"
* #migration "Migration"
* #sonstiges "Sonstiges Risiko"

ValueSet: SeuRisikofaktorVs
Id: SeuRisikofaktorVs
Title: "SEU Risikofaktoren"
* include codes from system SeuRisikofaktorCs

Instance: SeuRisikofaktorBeispiel
InstanceOf: SeuRisikofaktor
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* valueCodeableConcept = SeuRisikofaktorCs#familie "Familie"
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"