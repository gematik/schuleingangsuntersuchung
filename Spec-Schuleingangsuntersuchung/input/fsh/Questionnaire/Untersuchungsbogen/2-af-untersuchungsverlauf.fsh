//VS Beschreibungen noch anpassen

RuleSet: 2-af-untersuchungsverlauf
* item[+] insert addGroup(2, Angaben zum Untersuchungsverlauf)
  * insert variable("Answer21", [["item.repeat(item).where(linkId='2.1').answer.valueCoding.code"]])
  * insert variable("Answer225", [["item.repeat(item).where(linkId='2.25').answer.valueCoding.code"]])
  * insert variable("Answer226", [["item.repeat(item).where(linkId='2.26').answer.value"]])
  * item[+] insert addGroup (2_1, Untersuchungsstatus)
    * item[+] insert addItem(2.1, #choice, Untersuchungsstatus)
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsstatusVS)
    * item[+] insert addItemWithSource(2.1a, #choice, Untersuchungsstatus, #DE-HE)
      * answerValueSet = Canonical(SEU_UB_VorgangsstatusVS)
    * item[+] insert addItem(2.2, #date, Datum der Datenerfassung)
      * insert addSource(#DE-BY)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 07)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 08)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 09)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 10)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 11)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 12)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 13)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 15)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 19)
      * insert enableWhenCode(2.1, =, SEU_UB_UntersuchungsstatusCS, 20)
      * enableBehavior = #any
    * item[+] insert addItem(2.3, #choice, Besonderheiten)
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_BesonderheitenVS)
    * item[+] insert addItem(2.4, #boolean, [[Altersentspr. U-Nachweis erbracht (inkl. Teilnahme an SÄU)]]) //TODO Vorbefüllung u.a. basierend auf berechnetem Alter, Feature-Set noch nicht ausreichend
      * insert addSource(#DE-BY)
  * item[+] insert addGroup (2_2, Verschickte Anschreiben)
    * item[+] insert addItem(2.5, #boolean, [[Einladung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.6, #boolean, [[1. Mahnung ]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.7, #boolean, [[2. Mahnung ]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.8, #boolean, [[Mahnung altersentspr. U-Nachweis]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.9, #boolean, [[Einladung 1. SÄU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.10, #boolean, [[Einladung 2. SÄU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.11, #boolean, [[Mitteilungsbogen rSEU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.12, #boolean, [[Mitteilung Schule Vorkurs Deutsch]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.13, #boolean, [[Mitteilung Schule Förderung /med. Maßnahmen]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup (2_3, Wiedervorlage)
    * item[+] insert addItem(2.14, #boolean, [[Wiedervorlage erforderlich]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.15, #date, [[Wiedervorlage Datum]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.16, #choice, [[Wiedervorlage Grund]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_WiedervorlageGrundVS)
  * item[+] insert addGroup (2_4, Ergebnis nach dem Screening und/oder Elternfragebogen)
    * item[+] insert addItem(2.17, #boolean, [[Weitere Abklärung beim Augenarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.18, #boolean, [[Weitere Abklärung beim HNO-Arzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.19, #boolean, [[Weitere Abklärung beim Kinder-/Jugendarzt (nur bzgl. Impfen!)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.20, #boolean, [[Weitere Abklärung beim Zahnarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.21, #choice, [[Vorstellung beim Schularzt indiziert (1.SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VorstellungSchularztVS)
    * item[+] insert addItem(2.22, #choice, [[Durchführung 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_5, Ergebnis nach der 1. schulärztlichen Untersuchung)
    * item[+] insert addItem(2.23, #choice, [[Vorstellung beim Schularzt indiziert (2.SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VorstellungSchularztVS)
    * item[+] insert addItem(2.24, #choice, [[Durchführung 2. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_DurchfuehrungSaeuVS)
  * item[+] insert addGroup (2_6, Gesamtergebnis zu rSEU/SEU)
    * item[+] insert addItem(2.25, #choice, [[Ans Jugendamt gemeldet]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_MeldungJugendamtVS)
    * item[+] insert addItem(2.26, #boolean, [[Mitteilungsbogen für Schule mitgegeben/verschickt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.27, #string, [[Kind abgeschlossen]]) //TODO Klappt nur, wenn es String ist...
      * insert addSource(#DE-BY)
      * insert calculatedExpression("calculateKindAbgeschlossen", [["%Answer226 or (%Answer225.empty() = false) or (%Answer21 = '19') or (%Answer21 = '10')"]])
      * readOnly = true
  * item[+] insert addGroup (2_7, Angaben zu Studienzwecken)
    * item[+] insert addItem(2.28, #boolean, [[Einwilligung Kontaktaufnahme]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.29, #boolean, [[Einwilligung Studienteilnahme]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(2.30, #choice, [[Gewünschte Sprache Studie]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_SpracheStudieVS)

ValueSet: SEU_UB_SpracheStudieVS
Id: SEU-UB-SpracheStudieVS
Title: "SEU Sprache Studie"
Description: "Dieses ValueSet enthält die auswählbaren Sprachen zu einer Studie. Als CodeSystem wird 'urn:iso:std:iso:639-2' als Basis genommen."
* ISO6392_LanguageCS#alb "Albanisch"
* ISO6392_LanguageCS#ara "Arabisch"
* ISO6392_LanguageCS#eng "Englisch"
* ISO6392_LanguageCS#rum "Rumänisch"
* ISO6392_LanguageCS#rus "Russisch"
* ISO6392_LanguageCS#tur "Türkisch"
* ISO6392_LanguageCS#ukr "Ukrainisch"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #alb
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ara
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #eng
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rum
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rus
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tur
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ukr
* ^expansion.contains[=].display = "Ukrainisch"


CodeSystem: SEU_UB_MeldungJugendamtCS
Id: SEU-UB-MeldungJugendamtCS
Title: "SEU-AF Meldung Jugendamt"
* #1  "aus Gründen des Kinderschutzes"
* #2  "Verweigerung Teilnahme rSEU"
* #3  "Verweigerung 1. SÄU"
* #4  "Verweigerung 2. SÄU"
* #5  "keine rSEU Teilnahme, Adresse unbekannt"
* #6  "sonstige Gründe"

ValueSet: SEU_UB_MeldungJugendamtVS
Id: SEU-UB-MeldungJugendamtVS
Title: "SEU-AF Meldung Jugendamt"
Description: "Diese Codes enthalten möglichge Gründe für eine Meldung beim Jugendamt"
* include codes from system SEU_UB_MeldungJugendamtCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "aus Gründen des Kinderschutzes"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Verweigerung Teilnahme rSEU"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Verweigerung 1. SÄU"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Verweigerung 2. SÄU"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "keine rSEU Teilnahme, Adresse unbekannt"
* ^expansion.contains[+].system = Canonical(SEU_UB_MeldungJugendamtCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "sonstige Gründe"

CodeSystem: SEU_UB_DurchfuehrungSaeuCS
Id: SEU-UB-DurchfuehrungSaeuCS
Title: "SEU Durchführung SÄU"
* #1  "Ja"
* #2  "Nein"
* #3  "nicht mehr erforderlich"
* #4  "verweigert"

ValueSet: SEU_UB_DurchfuehrungSaeuVS
Id: SEU-UB-DurchfuehrungSaeuVS
Title: "SEU Durchführung SÄU"
Description: "Diese Codes enthalten Angaben über die Durchführung einer SEU"
* include codes from system SEU_UB_DurchfuehrungSaeuCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht mehr erforderlich"
* ^expansion.contains[+].system = Canonical(SEU_UB_DurchfuehrungSaeuCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "verweigert"

CodeSystem:  SEU_UB_VorstellungSchularztCS
Id: SEU-UB-VorstellungSchularztCS
Title: "SEU Vorstellung Schularzt"
* #1  "Ja"
* #2  "Nein"
* #3  "Teilnahme empfohlen (freiwillig)"

ValueSet: SEU_UB_VorstellungSchularztVS
Id: SEU-UB-VorstellungSchularztVS
Title: "SEU Vorstellung Schularzt"
Description: "Diese Codes Angaben über die Vorstellung beim Schularzt"
* include codes from system SEU_UB_VorstellungSchularztCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_VorstellungSchularztCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_VorstellungSchularztCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_VorstellungSchularztCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Teilnahme empfohlen (freiwillig)"

CodeSystem:  SEU_UB_WiedervorlageGrundCS
Id: SEU-UB-WiedervorlageGrundCS
Title: "SEU Wiedervorlage Grund"
* #1  "1. Mahnung"
* #2  "2. Mahnung "
* #3  "U8/U9 nachgereicht"
* #4  "Einladung 1. SÄU"
* #5  "Einladung 2. SÄU"
* #6  "Meldung Jugendamt"
* #7  "Mitteilungsbogen verschicken"
* #8  "sonstiges"

ValueSet: SEU_UB_WiedervorlageGrundVS
Id: SEU-UB-WiedervorlageGrundVS
Title: "SEU Wiedervorlage Grund"
Description: "Diese Codes enthalten Gründe für die Wiedervorlage der SEU"
* include codes from system SEU_UB_WiedervorlageGrundCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "1. Mahnung"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "2. Mahnung"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "U8/U9 nachgereicht"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Einladung 1. SÄU"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Einladung 2. SÄU"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Meldung Jugendamt"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Mitteilungsbogen verschicken"
* ^expansion.contains[+].system = Canonical(SEU_UB_WiedervorlageGrundCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "sonstiges"

CodeSystem:  SEU_UB_BesonderheitenCS
Id: SEU-UB-BesonderheitenCS
Title: "SEU Besonderheiten"
* #1  "Kind vor Abschluss von rSEU/SEU in anderen LK/BL/Ausland verzogen"
* #2  "Kind nach 1. Untersuchungsjahr zugezogen"
* #3  "rSEU/SEU aus sonstigen Gründen nicht beendet"

ValueSet: SEU_UB_BesonderheitenVS
Id: SEU-UB-BesonderheitenVS
Title: "SEU Besonderheiten"
Description: "Diese Codes enthalten Besonderheiten bei der SEU"
* include codes from system SEU_UB_BesonderheitenCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_BesonderheitenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Kind vor Abschluss von rSEU/SEU in anderen LK/BL/Ausland verzogen"
* ^expansion.contains[+].system = Canonical(SEU_UB_BesonderheitenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Kind nach 1. Untersuchungsjahr zugezogen"
* ^expansion.contains[+].system = Canonical(SEU_UB_BesonderheitenCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "rSEU/SEU aus sonstigen Gründen nicht beendet"

CodeSystem:  SEU_UB_UntersuchungsstatusCS
Id: SEU-UB-UntersuchungsstatusCS
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

ValueSet: SEU_UB_UntersuchungsstatusVS
Id: SEU-UB-UntersuchungsstatusVS
Title: "SEU Untersuchungsstatus"
Description: "Diese Codes enthalten Untersuchungsstatus der SEU"
* include codes from system SEU_UB_UntersuchungsstatusCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "untersucht"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "untersucht für anderen LK"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "untersucht für anderes BL"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "untersucht, Kind im Vorjahr zurückgestellt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "nicht erschienen, da verzogen"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem LK"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "nicht erschienen, weil Untersuchung in anderem BL"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "nicht erschienen, amerikanische Basis/Nato/Europ. Patentamt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #11
* ^expansion.contains[=].display = "nicht erschienen, lebt im Ausland"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "nicht erschienen, da Adresse nicht ermittelbar"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #13
* ^expansion.contains[=].display = "nicht erschienen, bereits vor Screening zurückgestellt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #15
* ^expansion.contains[=].display = "nicht erschienen, sonstige Gründe"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #19
* ^expansion.contains[=].display = "Verstorben"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusCS)
* ^expansion.contains[=].code = #20
* ^expansion.contains[=].display = "nicht erschienen, nur nach Aktenlage"

CodeSystem: SEU_UB_VorgangsstatusCS
Id: seu-ub-vorgangsstatus-cs
Title: "SEU_UB_Vorgangsstatus CodeSystem"
Description: "CodeSystem für die Angabe des Status eines Vorgangs."
* #offen "OFFEN: Der Vorgang wurde erzeugt und das Kind wurde noch nicht eingeladen"
* #in_planung "IN PLANUNG: Das Kind wurde eingeladen. Es wird erwartet, dass das Kind zu vergebenen Untersuchungstermin erscheint, oder dass die Eltern des Kindes den Termin umbuchen. Des weiteren wird erwartet, dass die Eltern des Kindes eine Selbstanamnese durchführen."
* #untersuchung "UNTERSUCHUNG: Das Kind wird untersucht."
* #geschlossen "GESCHLOSSEN: Das Kind wurde untersucht oder der Vorgang wurde geschlossen weil z.B. verstorben, verzogen etc."
* #wiedereroeffnet "WIEDERÖFFNET: Es werden Ergebnisse im Vorgang nachgetragen."

ValueSet: SEU_UB_VorgangsstatusVS
Id: seu-ub-vorgangsstatus-vs
Title: "SEU_UB_Vorgangsstatus ValueSet"
Description: "ValueSet, das verschiedene Status eines Vorgangs enthält."
* include codes from system SEU_UB_VorgangsstatusCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_VorgangsstatusCS)
* ^expansion.contains[=].code = #offen
* ^expansion.contains[=].display = "OFFEN: Der Vorgang wurde erzeugt und das Kind wurde noch nicht eingeladen"
* ^expansion.contains[+].system = Canonical(SEU_UB_VorgangsstatusCS)
* ^expansion.contains[=].code = #in_planung
* ^expansion.contains[=].display = "IN PLANUNG: Das Kind wurde eingeladen. Es wird erwartet, dass das Kind zu vergebenen Untersuchungstermin erscheint, oder dass die Eltern des Kindes den Termin umbuchen. Des weiteren wird erwartet, dass die Eltern des Kindes eine Selbstanamnese durchführen."
* ^expansion.contains[+].system = Canonical(SEU_UB_VorgangsstatusCS)
* ^expansion.contains[=].code = #untersuchung
* ^expansion.contains[=].display = "UNTERSUCHUNG: Das Kind wird untersucht."
* ^expansion.contains[+].system = Canonical(SEU_UB_VorgangsstatusCS)
* ^expansion.contains[=].code = #geschlossen
* ^expansion.contains[=].display = "GESCHLOSSEN: Das Kind wurde untersucht oder der Vorgang wurde geschlossen weil z.B. verstorben, verzogen etc."
* ^expansion.contains[+].system = Canonical(SEU_UB_VorgangsstatusCS)
* ^expansion.contains[=].code = #wiedereroeffnet
* ^expansion.contains[=].display = "WIEDERÖFFNET: Es werden Ergebnisse im Vorgang nachgetragen."
