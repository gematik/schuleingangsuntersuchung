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
Description: "Dieses ValueSet enthält alle validen Erkrankungen und Infektionserkrankungen des Elternfragebogens"
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
* include $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* include $sct#266108008 "Hand foot and mouth disease (disorder)"
* include $sct#240668005 "Borreliosis (disorder)"
* include $sct#66071002 "Viral hepatitis type B (disorder)"
* include $sct#7180009 "Meningitis (disorder)"
* include $sct#27836007 "Pertussis (disorder)"
* include $sct#14189004 "Measles (disorder)"
* include $sct#36989005 "Mumps (disorder)"
* include $sct#34730008 "Primate erythroparvovirus 1 infection (disorder)"
* include $sct#36653000 "Rubella (disorder)"
* include $sct#18624000 "Disease caused by Rotavirus (disorder)"
* include $sct#30242009 "Scarlet fever (disorder)"
* include $sct#38907003 "Varicella (disorder)"

Instance: ErkrankungBeispiel
InstanceOf: Erkrankung
Usage: #example
* onsetDateTime = 2023-01-01
* code = $sct#300959008 "Allergic cough (finding)"
* subject = Reference(PersonBeispiel)