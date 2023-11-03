Profile: VerwandtePersonDeutschkenntnis
Parent: Observation
Id: VerwandtePersonDeutschkenntnis
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#297490002 "German language (qualifier value)"
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from VerwandtePersonDeutschkenntnisVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

Instance: VerwandtePersonDeutschkenntnisBeispiel
InstanceOf: VerwandtePersonDeutschkenntnis
Usage: #example
* valueCodeableConcept = VerwandtePersonDeutschkenntnisCS#1 "rudimentär"
* subject = Reference(PersonBeispiel)