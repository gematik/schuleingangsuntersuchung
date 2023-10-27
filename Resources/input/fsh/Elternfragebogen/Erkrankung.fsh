Profile: Erkrankung
Parent: Condition
Id: Erkrankung
* clinicalStatus MS
* clinicalStatus = #unknown
* category = #problem-list-item
* category MS
* code MS
* code from ErkrankungsTypVS (extensible)
* code.text MS
* code.coding MS
* subject MS
* onset[x] MS
* onset[x] only dateTime
* onsetDateTime MS

ValueSet: ErkrankungsTypVS
Id: ErkrankungsTypVS
Title: "Elternfragebogen Erkrankungsart"
Description: "Dieses ValueSet enthält alle validen Erkrankungsarten des Elternfragebogens"
* include $sct#84757009 "Epilepsy (disorder)"
* include $sct#35253001 "Attention deficit hyperactivity disorder, predominantly inattentive type (disorder)"
* include $sct#286378009 "Difficulty talking (finding)"
* include $sct#95677002 "Disorder of vision (disorder)"
* include $sct#128540005 "Hearing disorder (disorder)"
* include $sct#56265001 "Heart disease (disorder)"
* include $sct#41368006 "Disorder of urinary tract proper (disorder)"
* include $sct#300959008 "Allergic cough (finding)"
* include $sct#195967001 "Asthma (disorder)"
* include $sct#422290000 "Allergic disorder of skin (disorder)"
* include $sct#53891004 "Lichen simplex chronicus (disorder)"
* include $sct#414285001 "Allergy to food (finding)"
* include $sct#363346000 "Malignant neoplastic disease (disorder)"
* include $sct#118935006 "Disorder of hip region (disorder)"
* include $sct#410730009 "Disorder of spinal region (disorder)"
* include $sct#60342002 "Movement disorder (disorder)"
* include $sct#73211009 "Diabetes mellitus (disorder)"
* include $sct#35919005 "Pervasive developmental disorder (disorder)"
* include $sct#14304000 "Disorder of thyroid gland (disorder)"

Instance: ErkrankungBeispiel
InstanceOf: Erkrankung
Usage: #example
* onsetDateTime = 2023-01-01
* code = $sct#300959008 "Allergic cough (finding)"
* subject = Reference(PersonBeispiel)