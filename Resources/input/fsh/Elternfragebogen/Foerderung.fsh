Profile: Foerderung
Parent: Observation
Id: Foerderung
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code from FoerderungVS
* code.coding MS
* subject MS
* value[x] 1..1 MS
* value[x] only CodeableConcept or string
* valueCodeableConcept MS
* valueString MS

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

ValueSet: FoerderungStatusVS
Id: FoerderungStatusVS
Title: "Elternfragebogen Förderungstatus"
Description: "Dieses ValueSet enthält alle validen Förderungstatus des Elternfragebogens"
* include codes from system FoerderungCS

CodeSystem: FoerderungStatusCS
Id: FoerderungStatusCS
Title: "Elternfragebogen Förderungstatus"
* #nein "Nein"
* #abgeschlossen "Abgeschlossen"
* #laufend "Läuft z.Zt. noch"
* #geplant "Geplant"

Instance: FoerderungBeispiel
InstanceOf: Foerderung
Usage: #example
* subject = Reference(PersonBeispiel)
* code = FoerderungCS#sonstige "Sonstige Förderung"
* valueCodeableConcept = FoerderungStatusCS#nein "Nein"