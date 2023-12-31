Profile: PersonDeutschkenntnis
Parent: Observation
Id: PersonDeutschkenntnis
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
* valueCodeableConcept from PersonDeutschkenntnisVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

Instance: PersonDeutschkenntnisBeispiel
InstanceOf: PersonDeutschkenntnis
Usage: #example
* valueCodeableConcept = PersonDeutschkenntnisCS#4 "flüssig mit leichten Fehlern"
* subject = Reference(PersonBeispiel)