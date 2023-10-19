Profile: Unfall
Parent: Observation
Id: Unfall
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#418019003 "Accidental event (event)"
* subject MS
* value[x] only CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from UnfallTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

ValueSet: UnfallTypVS
Id: UnfallTypVS
Title: "Elternfragebogen Unfallart"
Description: "Dieses ValueSet enthält alle validen Unfallarten des Elternfragebogens"
* include $sct#110030002 "Concussion injury of brain (disorder)"
* include $sct#283396008 "Incised wound (disorder)"
* include $sct#75478009 "Poisoning (disorder)"
* include $sct#125666000 "Burn (disorder)"
* include $sct#125605004 "Fracture of bone (disorder)"
* include $sct#417163006 "Traumatic or non-traumatic injury (disorder)"


Instance: UnfallBeispiel
InstanceOf: Unfall
Usage: #example
* valueCodeableConcept = $sct#125605004 "Fracture of bone (disorder)"
* subject = Reference(PersonBeispiel)