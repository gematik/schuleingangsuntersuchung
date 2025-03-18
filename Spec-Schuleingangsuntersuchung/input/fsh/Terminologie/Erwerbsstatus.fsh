CodeSystem: ErwerbsstatusCS
Id: erwerbsstatus-cs
Title: "Erwerbsstatus CodeSystem"
Description: "ErwerbsstatusCS"
* #erwerbstaetig "Erwerbstätig"
* #nicht_erwerbstaetig "Nicht erwerbstätig"
* #teilzeit "Teilzeit"
* #vollzeit "Vollzeit"
* #sonstiges "Sonstiges"
* #stundenweise "Stundenweise"
* #fehlende_angabe "Fehlende Angabe"
* #elternzeit "Elternzeit"
* #ausbildung_oder_studium "zur Zeit Ausbildung/ Studium"

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
* ErwerbsstatusCS#nicht_erwerbstaetig "Nicht erwerbstätig"
* ErwerbsstatusCS#teilzeit "Teilzeit"
* ErwerbsstatusCS#vollzeit "Vollzeit"
* ErwerbsstatusCS#sonstiges "Sonstiges"
* ^expansion.timestamp = "2025-03-04T12:00:00+00:00"
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

ValueSet: ErwerbsstatusDerMutterVS
Id: erwerbsstatus-der-mutter-vs
Title: "Erwerbsstatus der Mutter ValueSet"
Description: "ErwerbsstatusDerMutterVS"
* ErwerbsstatusCS#vollzeit "Vollzeit"
* ErwerbsstatusCS#teilzeit "Teilzeit"
* ErwerbsstatusCS#stundenweise "Stundenweise"
* ErwerbsstatusCS#nicht_erwerbstaetig "Nein"
* ErwerbsstatusCS#fehlende_angabe "Fehlende Angabe"
* ErwerbsstatusCS#elternzeit "Elternzeit"
* ^expansion.timestamp = "2025-03-04T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #vollzeit
* ^expansion.contains[=].display = "Vollzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #teilzeit
* ^expansion.contains[=].display = "Teilzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #stundenweise
* ^expansion.contains[=].display = "Stundenweise"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #fehlende_angabe
* ^expansion.contains[=].display = "Fehlende Angabe"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #elternzeit
* ^expansion.contains[=].display = "Elternzeit"

ValueSet: ErwerbsstatusDesVatersVS
Id: erwerbsstatus-des-vaters-vs
Title: "Erwerbsstatus des Vaters ValueSet"
Description: "ErwerbsstatusDesVatersVS"
* ErwerbsstatusCS#vollzeit "Vollzeit"
* ErwerbsstatusCS#teilzeit "Teilzeit"
* ErwerbsstatusCS#stundenweise "Stundenweise"
* ErwerbsstatusCS#nicht_erwerbstaetig "Nein"
* ErwerbsstatusCS#fehlende_angabe "Fehlende Angabe"
* ^expansion.timestamp = "2025-03-04T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #vollzeit
* ^expansion.contains[=].display = "Vollzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #teilzeit
* ^expansion.contains[=].display = "Teilzeit"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #stundenweise
* ^expansion.contains[=].display = "Stundenweise"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #fehlende_angabe
* ^expansion.contains[=].display = "Fehlende Angabe"

ValueSet: ErwerbsstatusAlternativ1VS
Id: ErwerbsstatusAlternativ1VS
Title: "ErwerbsstatusAlternativ1VS"
Description: "Erwerbsstatus des Elternteils"
* ErwerbsstatusCS#erwerbstaetig "Ja"
* ErwerbsstatusCS#nicht_erwerbstaetig "Nein"
* ErwerbsstatusCS#ausbildung_oder_studium "zur Zeit Ausbildung/ Studium"
* ^expansion.contains[0].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #erwerbstaetig
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(ErwerbsstatusCS)
* ^expansion.contains[=].code = #ausbildung_oder_studium
* ^expansion.contains[=].display = "zur Zeit Ausbildung/ Studium"
