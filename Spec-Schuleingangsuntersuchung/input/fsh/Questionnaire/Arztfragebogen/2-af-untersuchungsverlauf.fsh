//VS Beschreibungen noch anpassen

RuleSet: 2-af-untersuchungsverlauf
* item[+] insert addGroup(2, Angaben zum Untersuchungsverlauf)
  * item[+] insert addGroup (2_1, Untersuchungsstatus)
    * item[+] insert addItem(2.1, #choice, Untersuchungsstatus)
      * answerValueSet = Canonical(UntersuchungsstatusVS)
    * item[+] insert addItem(2.2, #date, Datum der Datenerfassung) //TODO richtiges EnableWhen
      * insert EnableWhenCode(2.1, !=, UntersuchungsstatusCS, 01)
      * insert EnableWhenCode(2.1, !=, UntersuchungsstatusCS, 02)
      * insert EnableWhenCode(2.1, !=, UntersuchungsstatusCS, 03)
      * insert EnableWhenCode(2.1, !=, UntersuchungsstatusCS, 04)
      * enableBehavior = #any
    * item[+] insert addItem(2.3, #choice, Besonderheiten)
      * answerValueSet = Canonical(BesonderheitenVS)
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
      * answerValueSet = Canonical(WiedervorlageGrundVS)
  * item[+] insert addGroup (2_4, Ergebnis nach dem Screening und/oder Elternfragebogen)
    * item[+] insert addItem(2.17, #boolean, [[Weitere Abklärung beim Augenarzt]])
    * item[+] insert addItem(2.18, #boolean, [[Weitere Abklärung beim HNO-Arzt]])
    * item[+] insert addItem(2.19, #boolean, [[Weitere Abklärung beim Kinder-/Jugendarzt (nur bzgl. Impfen!)]])
    * item[+] insert addItem(2.20, #boolean, [[Weitere Abklärung beim Zahnarzt]])
    * item[+] insert addItem(2.21, #choice, [[Vorstellung beim Schularzt indiziert (1.SÄU)]])
      * answerValueSet = Canonical(VorstellungSchularztVS)
    * item[+] insert addItem(2.22, #choice, [[Durchführung 1. SÄU]])
      * answerValueSet = Canonical(DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_5, Ergebnis nach der 1. schulärztlichen Untersuchung)
    * item[+] insert addItem(2.21, #choice, [[Vorstellung beim Schularzt indiziert (2.SÄU)]])
      * answerValueSet = Canonical(VorstellungSchularztVS)
    * item[+] insert addItem(2.22, #choice, [[Durchführung 2. SÄU]])
      * answerValueSet = Canonical(DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_6, Gesamtergebnis zu rSEU/SEU)
    * item[+] insert addItem(2.25, #choice, [[Ans Jugendamt gemeldet]])
      * answerValueSet = Canonical(MeldungJugendamtVS)
    * item[+] insert addItem(2.26, #boolean, [[Mitteilungsbogen für Schule mitgegeben/verschickt]])
    * item[+] insert addItem(2.27, #string, [[Kind abgeschlossen]]) //TODO Vorbelegung basierend auf anderen Eingaben, alles expirimental hier
      * insert calculatedExpression("calculateKindAbgeschlossen", [["%Answer226 = true or %Answer226.empty() = false or %Answer21 = 19 or %Answer21 = 10"]])
    * insert variable("Answer226", [["item.where(linkId='2.26').answer.value"]])
    * insert variable("Answer225", [["item.where(linkId='2.25').answer.valueCoding.code"]])
    * insert variable("Answer21", [["item.where(linkId='2.1').answer.valueCoding.code"]])
    * insert debug("%Answer226")
    * insert debug("%Answer225")
    * insert debug("%Answer21")
  * item[+] insert addGroup (2_7, Angaben zu Studienzwecken)
    * item[+] insert addItem(2.28, #boolean, [[Einwilligung Kontaktaufnahme]])
    * item[+] insert addItem(2.29, #boolean, [[Einwilligung Studienteilnahme]])
    * item[+] insert addItem(2.30, #choice, [[Gewünschte Sprache Studie]])
      * answerValueSet = Canonical(SpracheStudieVS)

Alias: $ISO639 = http://terminology.hl7.org/CodeSystem/iso639-1

ValueSet: SpracheStudieVS
Id: SpracheStudieVS
Title: "SEU Sprache Studie"
Description: "Diese Codes enthalten Besonderheiten"
* $ISO639#SQ "Albanisch"
* $ISO639#AR "Arabisch"
* $ISO639#EN "Englisch"
* $ISO639#RO "Rumänisch"
* $ISO639#RU "Russisch"
* $ISO639#TR "Türkisch"
* $ISO639#UK "Ukraninisch"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #SQ
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #AR
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #EN
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #RO
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #RU
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #TR
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = $ISO639
* ^expansion.contains[=].code = #UK
* ^expansion.contains[=].display = "Ukraninisch"



CodeSystem: MeldungJugendamtCS
Id: MeldungJugendamtCS
Title: "SEU Meldung Jugendamt"
* #1  "aus Gründen des Kinderschutzes"
* #2  "Verweigerung Teilnahme rSEU"
* #3  "Verweigerung 1. SÄU"
* #4  "Verweigerung 2. SÄU"
* #5  "keine rSEU Teilnahme, Adresse unbekannt"
* #6  "sonstige Gründe"


ValueSet: MeldungJugendamtVS
Id: MeldungJugendamtVS
Title: "SEU Meldung Jugendamt"
Description: "Diese Codes enthalten Besonderheiten"
* include codes from system MeldungJugendamtCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "aus Gründen des Kinderschutzes"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Verweigerung Teilnahme rSEU"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Verweigerung 1. SÄU"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Verweigerung 2. SÄU"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "keine rSEU Teilnahme, Adresse unbekannt"
* ^expansion.contains[+].system = Canonical(MeldungJugendamtCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "sonstige Gründe"


CodeSystem: DurchfuehrungSaeuCS
Id: DurchfuehrungSaeuCS
Title: "SEU Durchfuehrung SÄU"
* #1  " Ja"
* #2  " Nein"
* #3  " nicht mehr erforderlich"
* #4  " verweigert"

ValueSet: DurchfuehrungSaeuVS
Id: DurchfuehrungSaeuVS
Title: "SEU Durchfuehrung SÄU"
Description: "Diese Codes enthalten Besonderheiten"
* include codes from system DurchfuehrungSaeuCS

CodeSystem:  VorstellungSchularztCS
Id: VorstellungSchularztCS
Title: "SEU Vorstellung Schularzt"
* #1  " ja, "
* #2  " nein,"
* #3  " Teilnahme empfohlen (freiwillig)"

ValueSet: VorstellungSchularztVS
Id: VorstellungSchularztVS
Title: "SEU Vorstellung Schularzt"
Description: "Diese Codes enthalten Besonderheiten"
* include codes from system VorstellungSchularztCS

CodeSystem:  WiedervorlageGrundCS
Id: WiedervorlageGrundCS
Title: "SEU Wiedervorlage Grund"
* #1  " 1. Mahnung"
* #2  " 2. Mahnung "
* #3  " U8/U9 nachgereicht"
* #4  " Einladung 1. SÄU"
* #5  " Einladung 2. SÄU"
* #6  " Meldung Jugendamt"
* #7  " Mitteilungsbogen verschicken"
* #8  " sonstiges"

ValueSet: WiedervorlageGrundVS
Id: WiedervorlageGrundVS
Title: "SEU Wiedervorlage Grund"
Description: "Diese Codes enthalten Besonderheiten"
* include codes from system WiedervorlageGrundCS

CodeSystem:  BesonderheitenCS
Id: BesonderheitenCS
Title: "SEU Besonderheiten"
* #1  " Kind vor Abschluss von rSEU/SEU in anderen LK/BL/Ausland verzogen"
* #2  " Kind nach 1. Untersuchungsjahr zugezogen"
* #3  " rSEU/SEU aus sonstigen Gründen nicht beendet"

ValueSet: BesonderheitenVS
Id: BesonderheitenVS
Title: "SEU Besonderheiten"
Description: "Diese Codes enthalten Besonderheiten"
* include codes from system BesonderheitenCS

CodeSystem:  UntersuchungsstatusCS
Id: UntersuchungsstatusCS
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

ValueSet: UntersuchungsstatusVS
Id: UntersuchungsstatusVS
Title: "SEU Untersuchungsstatus"
Description: "Diese Codes enthalten Untersuchungsstatus"
* include codes from system UntersuchungsstatusCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "untersucht"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "untersucht für anderen LK"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "untersucht für anderes BL"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "untersucht, Kind im Vorjahr zurückgestellt"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "nicht erschienen, da verzogen"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem LK"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem BL"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "nicht erschienen, amerikanische Basis/Nato/Europ. Patentamt"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "nicht erschienen, lebt im Ausland"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "nicht erschienen, da Adresse nicht ermittelbar"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "nicht erschienen, bereits vor Screening zurückgestellt"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #15
* ^expansion.contains[=].display = "nicht erschienen, sonstige Gründe"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Verstorben"
* ^expansion.contains[+].system = Canonical(UntersuchungsstatusCS)
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "nicht erschienen, nur nach Aktenlage"
