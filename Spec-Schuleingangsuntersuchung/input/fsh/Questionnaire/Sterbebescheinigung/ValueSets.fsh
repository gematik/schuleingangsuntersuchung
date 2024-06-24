CodeSystem: JaNeinKeineAngabeCS
Id: JaNeinKeineAngabeCS
Title: "Ja-Nein-Keine Angabe CodeSystem"
* #yes "Ja"
* #no "Nein"
* #x "Keine Angabe"

ValueSet: JaNeinKeineAngabeVS
Id: JaNeinKeineAngabeVS
Title: "Ja-Nein-Keine Angabe ValueSet"
* include codes from system JaNeinKeineAngabeCS
* ^expansion.timestamp = "2024-06-24T12:00:00+00:00"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #yes
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #no
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #x
* ^expansion.contains[=].display = "Keine Angabe"
