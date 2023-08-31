Profile: PaediatrischeLeistung
Parent: ServiceRequest
Id: PaediatrischeLeistung
* status MS
* status = #active
* code MS
* code from PaediatrischeLeistungVs
* code.coding MS
* subject MS
* intent MS 
* intent = #directive

CodeSystem:  PaediatrischeLeistungCs
Id: PaediatrischeLeistungCs
Title: "Sozialpädiatrische Leistungen"
* #sonstige "Sonstige Hilfen"
* #info "Infobrief Schule"

ValueSet: PaediatrischeLeistungVs
Id: PaediatrischeLeistungVs
Title: "SEU Assessment Result"
* include codes from system PaediatrischeLeistungCs
* $sct#409063005 "Counseling (procedure)"
* $sct#409065003 "Education programs education, guidance and counseling (procedure)"
* $sct#723401005 "Motor planning skills training (procedure)"
* $sct#410279000 "Caretaking/parenting skills education, guidance, and counseling (procedure)"
* $sct#424308004 "Speech and language therapy education, guidance, and counseling (procedure)"
* $sct#424753004 "Dietary management education, guidance, and counseling (procedure)"
* $sct#702971000 "Counseling for childhood immunization (procedure)"
* $sct#306238000 "Referral to Social Services (procedure)"

Instance: PaediatrischeLeistungBeispiel
InstanceOf: PaediatrischeLeistung
Usage: #example
* code = $sct#410279000 "Caretaking/parenting skills education, guidance, and counseling (procedure)"
* subject = Reference(PersonBeispiel)