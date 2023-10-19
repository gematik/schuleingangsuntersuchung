Profile: Besonderheiten
Parent: Observation
Id: Besonderheiten
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#866145009 "General patient record note (record artifact)"
* code.coding MS
* subject MS
* value[x] only string
* valueString MS

Instance: BesonderheitenBeispiel
InstanceOf: Besonderheiten
Usage: #example
* valueString = "Polyphasischer Schlaf beobachtet"
* subject = Reference(PersonBeispiel)