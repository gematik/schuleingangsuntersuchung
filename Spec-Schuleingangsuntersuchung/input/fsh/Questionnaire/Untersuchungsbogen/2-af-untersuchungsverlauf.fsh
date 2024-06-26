//VS Beschreibungen noch anpassen

RuleSet: 2-af-untersuchungsverlauf
* item[+] insert addGroup(2, Angaben zum Untersuchungsverlauf)
  * insert variable("Answer21", [["item.repeat(item).where(linkId='2.1').answer.valueCoding.code"]])
  * insert variable("Answer225", [["item.repeat(item).where(linkId='2.25').answer.valueCoding.code"]])
  * insert variable("Answer226", [["item.repeat(item).where(linkId='2.26').answer.value"]])
  * item[+] insert addGroup (2_1, Untersuchungsstatus)
    * item[+] insert addItem(2.1, #choice, Untersuchungsstatus)
      * answerValueSet = Canonical(SEU-AF-UntersuchungsstatusVS)
    * item[+] insert addItem(2.2, #date, Datum der Datenerfassung)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 07)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 08)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 09)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 10)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 11)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 12)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 13)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 15)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 19)
      * insert EnableWhenCode(2.1, =, SEU-AF-UntersuchungsstatusCS, 20)
      * enableBehavior = #any
    * item[+] insert addItem(2.3, #choice, Besonderheiten)
      * answerValueSet = Canonical(SEU-AF-BesonderheitenVS)
    * item[+] insert addItem(2.4, #boolean, [[Altersentspr. U-Nachweis erbracht (inkl. Teilnahme an SÄU)]]) //TODO Vorbefüllung u.a. basierend auf berechnetem Alter, Feature-Set noch nicht ausreichend
  * item[+] insert addGroup (2_2, Verschickte Anschreiben)
    * item[+] insert addItem(2.5, #boolean, [[Einladung]])
    * item[+] insert addItem(2.6, #boolean, [[1. Mahnung ]])
    * item[+] insert addItem(2.7, #boolean, [[2. Mahnung ]])
    * item[+] insert addItem(2.8, #boolean, [[Mahnung altersentspr. U-Nachweis]])
    * item[+] insert addItem(2.9, #boolean, [[Einladung 1. SÄU]])
    * item[+] insert addItem(2.10, #boolean, [[Einladung 2. SÄU]])
    * item[+] insert addItem(2.11, #boolean, [[Mitteilungsbogen rSEU]])
    * item[+] insert addItem(2.12, #boolean, [[Mitteilung Schule Vorkurs Deutsch]])
    * item[+] insert addItem(2.13, #boolean, [[Mitteilung Schule Förderung /med. Maßnahmen]])
  * item[+] insert addGroup (2_3, Wiedervorlage)
    * item[+] insert addItem(2.14, #boolean, [[Wiedervorlage erforderlich]])
    * item[+] insert addItem(2.15, #date, [[Wiedervorlage Datum]])
    * item[+] insert addItem(2.16, #choice, [[Wiedervorlage Grund]])
      * answerValueSet = Canonical(SEU-AF-WiedervorlageGrundVS)
  * item[+] insert addGroup (2_4, Ergebnis nach dem Screening und/oder Elternfragebogen)
    * item[+] insert addItem(2.17, #boolean, [[Weitere Abklärung beim Augenarzt]])
    * item[+] insert addItem(2.18, #boolean, [[Weitere Abklärung beim HNO-Arzt]])
    * item[+] insert addItem(2.19, #boolean, [[Weitere Abklärung beim Kinder-/Jugendarzt (nur bzgl. Impfen!)]])
    * item[+] insert addItem(2.20, #boolean, [[Weitere Abklärung beim Zahnarzt]])
    * item[+] insert addItem(2.21, #choice, [[Vorstellung beim Schularzt indiziert (1.SÄU)]])
      * answerValueSet = Canonical(SEU-AF-VorstellungSchularztVS)
    * item[+] insert addItem(2.22, #choice, [[Durchführung 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_5, Ergebnis nach der 1. schulärztlichen Untersuchung)
    * item[+] insert addItem(2.23, #choice, [[Vorstellung beim Schularzt indiziert (2.SÄU)]])
      * answerValueSet = Canonical(SEU-AF-VorstellungSchularztVS)
    * item[+] insert addItem(2.24, #choice, [[Durchführung 2. SÄU]])
      * answerValueSet = Canonical(SEU-AF-DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_6, Gesamtergebnis zu rSEU/SEU)
    * item[+] insert addItem(2.25, #choice, [[Ans Jugendamt gemeldet]])
      * answerValueSet = Canonical(SEU-AF-MeldungJugendamtVS)
    * item[+] insert addItem(2.26, #boolean, [[Mitteilungsbogen für Schule mitgegeben/verschickt]])
    * item[+] insert addItem(2.27, #string, [[Kind abgeschlossen]]) //TODO Klappt nur, wenn es String ist...
      * insert calculatedExpression("calculateKindAbgeschlossen", [["%Answer226 or (%Answer225.empty() = false) or (%Answer21 = '19') or (%Answer21 = '10')"]])
      * readOnly = true
  * item[+] insert addGroup (2_7, Angaben zu Studienzwecken)
    * item[+] insert addItem(2.28, #boolean, [[Einwilligung Kontaktaufnahme]])
    * item[+] insert addItem(2.29, #boolean, [[Einwilligung Studienteilnahme]])
    * item[+] insert addItem(2.30, #choice, [[Gewünschte Sprache Studie]])
      * answerValueSet = Canonical(SEU-AF-SpracheStudieVS)

ValueSet: SEU-AF-SpracheStudieVS
Id: SEU-AF-SpracheStudieVS
Title: "SEU Sprache Studie"
Description: "Dieses ValueSet enthält die auswählbaren Sprachen zu einer Studie. Als CodeSystem wird 'urn:ietf:bcp:47' als Basis genommen."
* $ietf-47#sq "Albanisch"
* $ietf-47#ar "Arabisch"
* $ietf-47#en "Englisch"
* $ietf-47#ro "Rumänisch"
* $ietf-47#ru "Russisch"
* $ietf-47#tr "Türkisch"
* $ietf-47#uk "Ukraninisch"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #sq
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ar
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #en
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ro
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ru
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #tr
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #uk
* ^expansion.contains[=].display = "Ukraninisch"

CodeSystem: SEU-AF-MeldungJugendamtCS
Id: SEU-AF-MeldungJugendamtCS
Title: "SEU-AF Meldung Jugendamt"
* #1  "aus Gründen des Kinderschutzes"
* #2  "Verweigerung Teilnahme rSEU"
* #3  "Verweigerung 1. SÄU"
* #4  "Verweigerung 2. SÄU"
* #5  "keine rSEU Teilnahme, Adresse unbekannt"
* #6  "sonstige Gründe"

ValueSet: SEU-AF-MeldungJugendamtVS
Id: SEU-AF-MeldungJugendamtVS
Title: "SEU-AF Meldung Jugendamt"
Description: "Diese Codes enthalten möglichge Gründe für eine Meldung beim Jugendamt"
* include codes from system SEU-AF-MeldungJugendamtCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "aus Gründen des Kinderschutzes"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Verweigerung Teilnahme rSEU"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Verweigerung 1. SÄU"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Verweigerung 2. SÄU"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "keine rSEU Teilnahme, Adresse unbekannt"
* ^expansion.contains[+].system = Canonical(SEU-AF-MeldungJugendamtCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "sonstige Gründe"

CodeSystem: SEU-AF-DurchfuehrungSaeuCS
Id: SEU-AF-DurchfuehrungSaeuCS
Title: "SEU Durchführung SÄU"
* #1  "Ja"
* #2  "Nein"
* #3  "nicht mehr erforderlich"
* #4  "verweigert"

ValueSet: SEU-AF-DurchfuehrungSaeuVS
Id: SEU-AF-DurchfuehrungSaeuVS
Title: "SEU Durchführung SÄU"
Description: "Diese Codes enthalten Angaben über die Durchführung einer SEU"
* include codes from system SEU-AF-DurchfuehrungSaeuCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht mehr erforderlich"
* ^expansion.contains[+].system = Canonical(SEU-AF-DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "verweigert"

CodeSystem:  SEU-AF-VorstellungSchularztCS
Id: SEU-AF-VorstellungSchularztCS
Title: "SEU Vorstellung Schularzt"
* #1  "Ja"
* #2  "Nein"
* #3  "Teilnahme empfohlen (freiwillig)"

ValueSet: SEU-AF-VorstellungSchularztVS
Id: SEU-AF-VorstellungSchularztVS
Title: "SEU Vorstellung Schularzt"
Description: "Diese Codes Angaben über die Vorstellung beim Schularzt"
* include codes from system SEU-AF-VorstellungSchularztCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-VorstellungSchularztCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-VorstellungSchularztCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-VorstellungSchularztCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Teilnahme empfohlen (freiwillig)"

CodeSystem:  SEU-AF-WiedervorlageGrundCS
Id: SEU-AF-WiedervorlageGrundCS
Title: "SEU Wiedervorlage Grund"
* #1  "1. Mahnung"
* #2  "2. Mahnung "
* #3  "U8/U9 nachgereicht"
* #4  "Einladung 1. SÄU"
* #5  "Einladung 2. SÄU"
* #6  "Meldung Jugendamt"
* #7  "Mitteilungsbogen verschicken"
* #8  "sonstiges"

ValueSet: SEU-AF-WiedervorlageGrundVS
Id: SEU-AF-WiedervorlageGrundVS
Title: "SEU Wiedervorlage Grund"
Description: "Diese Codes enthalten Gründe für die Wiedervorlage der SEU"
* include codes from system SEU-AF-WiedervorlageGrundCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "1. Mahnung"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "2. Mahnung "
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "U8/U9 nachgereicht"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Einladung 1. SÄU"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Einladung 2. SÄU"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Meldung Jugendamt"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Mitteilungsbogen verschicken"
* ^expansion.contains[+].system = Canonical(SEU-AF-WiedervorlageGrundCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "sonstiges"

CodeSystem:  SEU-AF-BesonderheitenCS
Id: SEU-AF-BesonderheitenCS
Title: "SEU Besonderheiten"
* #1  "Kind vor Abschluss von rSEU/SEU in anderen LK/BL/Ausland verzogen"
* #2  "Kind nach 1. Untersuchungsjahr zugezogen"
* #3  "rSEU/SEU aus sonstigen Gründen nicht beendet"

ValueSet: SEU-AF-BesonderheitenVS
Id: SEU-AF-BesonderheitenVS
Title: "SEU Besonderheiten"
Description: "Diese Codes enthalten Besonderheiten bei der SEU"
* include codes from system SEU-AF-BesonderheitenCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-BesonderheitenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Kind vor Abschluss von rSEU/SEU in anderen LK/BL/Ausland verzogen"
* ^expansion.contains[+].system = Canonical(SEU-AF-BesonderheitenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Kind nach 1. Untersuchungsjahr zugezogen"
* ^expansion.contains[+].system = Canonical(SEU-AF-BesonderheitenCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "rSEU/SEU aus sonstigen Gründen nicht beendet"

CodeSystem:  SEU-AF-UntersuchungsstatusCS
Id: SEU-AF-UntersuchungsstatusCS
Title: "SEU Untersuchungsstatus"
* #01 "untersucht"
* #02 "untersucht für anderen LK"
* #03 "untersucht für anderes BL"
* #04 "untersucht, Kind im Vorjahr zurückgestellt"
* #07 "nicht erschienen, da verzogen"
* #08 "nicht erschienen, weil Untersuchung in anderem LK"
* #09 "nicht erschienen, weil Untersuchung in anderem BL"
* #10 "nicht erschienen, amerikanische Basis/Nato/Europ. Patentamt"
* #11 "nicht erschienen, lebt im Ausland"
* #12 "nicht erschienen, da Adresse nicht ermittelbar"
* #13 "nicht erschienen, bereits vor Screening zurückgestellt"
* #15 "nicht erschienen, sonstige Gründe"
* #19 "Verstorben"
* #20 "nicht erschienen, nur nach Aktenlage"

ValueSet: SEU-AF-UntersuchungsstatusVS
Id: SEU-AF-UntersuchungsstatusVS
Title: "SEU Untersuchungsstatus"
Description: "Diese Codes enthalten Untersuchungsstatus der SEU"
* include codes from system SEU-AF-UntersuchungsstatusCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "untersucht"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "untersucht für anderen LK"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "untersucht für anderes BL"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "untersucht, Kind im Vorjahr zurückgestellt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "nicht erschienen, da verzogen"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem LK"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem BL"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "nicht erschienen, amerikanische Basis/Nato/Europ. Patentamt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "nicht erschienen, lebt im Ausland"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "nicht erschienen, da Adresse nicht ermittelbar"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "nicht erschienen, bereits vor Screening zurückgestellt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #15
* ^expansion.contains[=].display = "nicht erschienen, sonstige Gründe"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Verstorben"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusCS)
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "nicht erschienen, nur nach Aktenlage"
