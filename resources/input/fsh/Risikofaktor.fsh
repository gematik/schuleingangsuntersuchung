Profile: Risikofaktor
Parent: Observation
Id: Risikofaktor
* status MS
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#80943009 "Risk factor (observable entity)"
* subject MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from RisikofaktorVS
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  RisikofaktorCS
Id: RisikofaktorCS
Title: "SEU Risikofaktoren"
* #familie "Familie"
* #nonkompliance "Nonkompliance"
* #sozial "Sozial"
* #migration "Migration"
* #sonstiges "Sonstiges Risiko"

ValueSet: RisikofaktorVS
Id: RisikofaktorVS
Title: "SEU Risikofaktoren"
* include codes from system RisikofaktorCS

Instance: RisikofaktorBeispiel
InstanceOf: Risikofaktor
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* valueCodeableConcept = RisikofaktorCS#familie "Familie"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"