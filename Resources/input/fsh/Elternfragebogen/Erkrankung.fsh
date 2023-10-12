Profile: Erkrankung
Parent: Condition
Id: Erkrankung
* clinicalStatus MS
* clinicalStatus = #unknown
* category = #problem-list-item
* category MS
* code MS
* code from ErkrankungsTypVS (extensible)
* code.coding MS
* subject MS

ValueSet: ErkrankungsTypVS
Id: ErkrankungsTypVS
Title: "Elternfragebogen Erkrankungsart"
Description: "Dieses ValueSet enthält alle validen Erkrankungsarten des Elternfragebogens"
* include $sct#300959008 "Allergic cough (finding)"
* include $sct#128351009 "Eye infection (disorder)"
* include $sct#43275000 "Otitis (disorder)"
* include $sct#7180009 "Meningitis (disorder)"
* include $sct#195967001 "Asthma (disorder)"
* include $sct#84757009 "Epilepsy (disorder)"
* include $sct#41497008 "Febrile convulsion (finding)"
* include $sct#53891004 "Lichen simplex chronicus (disorder)"
* include $sct#38907003 "Varicella (disorder)"
* include $sct#724630004 "Problem of hip (finding)"
* include $sct#90708001 "Kidney disease (disorder)"
* include $sct#41368006 "Disorder of urinary tract proper (disorder)"
* include $sct#35253001 "Attention deficit hyperactivity disorder, predominantly inattentive type (disorder)"

Instance: ErkrankungBeispiel
InstanceOf: Erkrankung
Usage: #example
* code = $sct#300959008 "Allergic cough (finding)"
* subject = Reference(PersonBeispiel)