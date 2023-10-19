Profile: Medikamenteneinnahme
Parent: Observation
Id: Medikamenteneinnahme
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#129019007 "Taking medication (observable entity)"
* code.coding MS
* subject MS
* value[x] only string
* valueString MS

Instance: MedikamenteneinnahmeBeispiel
InstanceOf: Medikamenteneinnahme
Usage: #example
* valueString = "Amlodipin jeden Morgen"
* subject = Reference(PersonBeispiel)