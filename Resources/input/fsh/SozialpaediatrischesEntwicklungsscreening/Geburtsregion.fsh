Profile: Geburtsregion
Parent: Observation
Id: Geburtsregion
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#169812000 "Place of birth (observable entity)"
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from GeburtsregionVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

Instance: GeburtsregionBeispiel
InstanceOf: Geburtsregion
Usage: #example
* valueCodeableConcept = GeburtsregionCS#0 "Deutschland"
* subject = Reference(PersonBeispiel)