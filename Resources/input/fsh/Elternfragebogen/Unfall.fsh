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
* extension MS
* extension contains UnfallOrtEX named UnfallOrt 1..1 MS and UnfallBeschwerdenEX named UnfallBeschwerden 0..1 MS

Extension: UnfallOrtEX
Id: UnfallOrtEX
Title:  "Unfallort Extension"
Description: "Diese Extension enthält Angaben zum Unfallort"
* value[x] only CodeableConcept
* valueCodeableConcept from UnfallOrtVS

Extension: UnfallBeschwerdenEX
Id: UnfallBeschwerdenEX
Title:  "Unfall Beschwerden Extension"
Description: "Diese Extension enthält Angaben zu aus einem Unfall resultierenden Beschwerden"
* value[x] only string

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

ValueSet: UnfallOrtVS
Id: UnfallOrtVS
Title: "Elternfragebogen Unfallort"
Description: "Dieses ValueSet enthält alle Unfallorte des Elternfragebogens"
* include $sct#264362003 "Home (environment)"
* include $sct#285084006 "Day nursery (environment)"
* include $sct#272510001 "Road (environment)"
* include $sct#257557008 "Place (environment)"

Instance: UnfallBeispiel
InstanceOf: Unfall
Usage: #example
* valueCodeableConcept = $sct#125605004 "Fracture of bone (disorder)"
* subject = Reference(PersonBeispiel)
* extension[UnfallOrt].valueCodeableConcept = $sct#272510001 "Road (environment)"
* extension[UnfallBeschwerden].valueString = "Leichter Schmerz an Bruchstelle"