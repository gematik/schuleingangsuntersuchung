Profile: Foerderung
Parent: Procedure
Id: Foerderung
* status MS
* status = #completed
* code MS
* code from FoerderungVS (required)
* code.coding MS
* subject MS
* note MS

ValueSet: FoerderungVS
Id: FoerderungVS
Title: "Elternfragebogen Förderungen"
Description: "Dieses ValueSet enthält alle validen Förderungen des Elternfragebogens"
* include codes from system FoerderungCS

CodeSystem:  FoerderungCS
Id: FoerderungCS
Title: "Elternfragebogen Förderungen"
* #vorkurs-deutsch "Vorkurs Deutsch"
* #sprachtherapie "Sprachtherapie"
* #fruehfoerderung "Frühförderung"
* #ergotherapie "Ergotherapie"
* #psychomotorik "Psychomotorik"
* #physiotherapie "Physiotherapie"
* #erziehungsberatung "Psychologe Erziehungsberatung"
* #betreuung "Integrative Betreuung"
* #sonstige "Sonstige Förderung"
* #kuren "Kuren"

Instance: FoerderungBeispiel
InstanceOf: Foerderung
Usage: #example
* subject = Reference(PersonBeispiel)
* code = FoerderungCS#sonstige "Sonstige Förderung"
* note.text = "Professionelle Emotional Förderung"