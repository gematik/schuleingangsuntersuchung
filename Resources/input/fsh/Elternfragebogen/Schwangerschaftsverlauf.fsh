Profile: Schwangerschaftsverlauf
Parent: Observation
Id: Schwangerschaftsverlauf
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#118185001 "Finding related to pregnancy (finding)"
* subject MS
* value[x] only CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from SchwangerschaftsverlaufsTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

ValueSet: SchwangerschaftsverlaufsTypVS
Id: SchwangerschaftsverlaufsTypVS
Title: "Elternfragebogen Schwangerschaftsverlaufsart"
Description: "Dieses ValueSet enthält alle validen Schwangerschaftsverlaufsarten des Elternfragebogens"
* include $sct#72892002 "Normal pregnancy (finding)"
* include $sct#11082009 "Abnormal pregnancy (finding)"
* include $sct#261665006 "Unknown (qualifier value)"

Instance: SchwangerschaftsverlaufBeispiel
InstanceOf: Schwangerschaftsverlauf
Usage: #example
* valueCodeableConcept = $sct#72892002 "Normal pregnancy (finding)"
* subject = Reference(PersonBeispiel)