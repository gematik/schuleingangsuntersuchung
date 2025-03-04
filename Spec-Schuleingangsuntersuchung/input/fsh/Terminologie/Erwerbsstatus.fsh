CodeSystem: ErwerbsstatusCS
Id: erwerbsstatus-cs
Title: "Erwerbsstatus CodeSystem"
Description: "ErwerbsstatusCS"
* #nicht_erwerbstaetig "Nicht erwerbstätig"
* #teilzeit "Teilzeit"
* #vollzeit "Vollzeit"
* #sonstiges "Sonstiges"

ValueSet: ErwerbsstatusVS
Id: erwerbsstatus-vs
Title: "Erwerbsstatus ValueSet"
Description: "ErwerbsstatusVS"
* ErwerbsstatusCS#nicht_erwerbstaetig "Nicht erwerbstätig"
* ErwerbsstatusCS#teilzeit "Teilzeit"
* ErwerbsstatusCS#vollzeit "Vollzeit"
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig
* ^expansion.contains[=].display = "Nicht erwerbstätig"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #teilzeit
* ^expansion.contains[=].display = "Teilzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #vollzeit
* ^expansion.contains[=].display = "Vollzeit"

ValueSet: ErwerbsstatusInclSonstigesVS
Id: erwerbsstatus-incl-sonstiges-vs
Title: "Erwerbsstatus ValueSet incl. Sonstiges"
Description: "ErwerbsstatusInclSonstigesVS"
* include codes from system ErwerbsstatusCS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig
* ^expansion.contains[=].display = "Nicht erwerbstätig"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #teilzeit
* ^expansion.contains[=].display = "Teilzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #vollzeit
* ^expansion.contains[=].display = "Vollzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #sonstiges
* ^expansion.contains[=].display = "Sonstiges"