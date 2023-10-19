Profile: Geburtsverlauf
Parent: Observation
Id: Geburtsverlauf
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#118215003 "Delivery finding (finding)"
* subject MS
* value[x] only CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from GeburtsverlaufsTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

ValueSet: GeburtsverlaufsTypVS
Id: GeburtsverlaufsTypVS
Title: "Elternfragebogen Geburtsverlaufsart"
Description: "Dieses ValueSet enthält alle validen Geburtsverlaufsarten des Elternfragebogens"
* include $sct#48782003 "Delivery normal (finding)"
* include $sct#274127000 "Abnormal delivery (finding)"
* include $sct#261665006 "Unknown (qualifier value)"

Instance: GeburtsverlaufBeispiel
InstanceOf: Geburtsverlauf
Usage: #example
* valueCodeableConcept = $sct#48782003 "Delivery normal (finding)"
* subject = Reference(PersonBeispiel)