Profile: Verhalten
Parent: Observation
Id: Verhalten
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#25786006 "Abnormal behavior (finding)"
* subject MS
* value[x] only CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from VerhaltensTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

ValueSet: VerhaltensTypVS
Id: VerhaltensTypVS
Title: "Elternfragebogen Verhaltensauffälligkeit"
Description: "Dieses ValueSet enthält alle validen Verhaltenauffälligkeiten des Elternfragebogens"
* include codes from system VerhaltensTypCS

CodeSystem:  VerhaltensTypCS
Id: VerhaltensTypCS
Title: "SEU Behinderungsart"
* #1 "Zu Hause beim Spielen sehr leicht ablenkbar und unkonzentriert."
* #2 "Im Kindergarten sehr leicht ablenkbar und unkonzentriert."
* #3 "Zu Hause (z. B. beim Essen) sehr unruhig, zappelig, kann nicht stillsitzen."
* #4 "Im Kindergarten sehr unruhig, zappelig, kann nicht stillsitzen."
* #5 "Zu Hause häufig ungehorsam (starrköpfig)."
* #6 "Im Kindergarten häufig ungehorsam (starrköpfig)."
* #7 "Prügelt sich häufig mit anderen Kindern."
* #8 "Von anderen Kindern häufig geärgert, gehänselt, verprügelt."
* #9 "Angst vor anderen Kindern."
* #10 "In den letzten 3 Monaten nachts mehr als 2 mal pro Monat eingenässt."

Instance: VerhaltenBeispiel
InstanceOf: Verhalten
Usage: #example
* valueCodeableConcept = VerhaltensTypCS#1 "Zu Hause beim Spielen sehr leicht ablenkbar und unkonzentriert."
* subject = Reference(PersonBeispiel)