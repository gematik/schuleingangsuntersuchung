RuleSet: 5-af-anamnese
* item[+] insert addGroup(5, Anamnese)
  * item[+] insert addItem(5.1, #choice, [[Besonderheiten bei Anamnese]])
    * insert addSource(#DE-BY)
    * answerValueSet = Canonical(SEU_UB_AnamneseBesonderheitenVS)
  * item[+] insert addGroup(5_1, Anamnese)
    * insert addSource(#DE-BY)
    * insert enableWhenCode(5.1, !=, SEU_UB_AnamneseBesonderheitenCS, 0)
    * item[+] insert addItem(5.2, #choice, [[Geschwister]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortGeschwisterVS)
    * item[+] insert addItemMl(5.3, #string, Staatsangehörigkeit des Kindes, 20) //TODO-JS Darf ich hier das Länder-ISO dran binden? Laut Excel soll string der Datentyp sein
      * insert addSource(#DE-BY)
    * item[+] insert addItemMl(5.4, #string, Geburtsland des Kindes, 20) //TODO-JS Darf ich hier das Länder-ISO dran binden? Laut Excel soll string der Datentyp sein
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.5, #choice, [[Krippe/KITA/Kindergartenbesuch]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortKindergartenBesuchVS)
    * item[+] insert addItem(5.6, #boolean, [[Derzeitiger Besuch eines Kindergartens]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.7, #boolean, [[Art des Kindergartens]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_KindergartenArtVS)
    * item[+] insert addItem(5.8, #integer, [[Geburtsgewicht (in g)]])
      * insert addSource(#DE-BY)
      * insert uunit(g, "g")
    * item[+] insert addItem(5.9, #integer, [[Vollendete Schwangerschaftswochen]])
      * insert addSource(#DE-BY)
      * insert uunit(wk, "Schwangerschaftswochen")
    * item[+] insert addItem(5.10, #boolean, [[Mehrling]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.11, #boolean, [[Sprachauffälligkeit in Entwicklung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.12, #boolean, [[Kind wächst mehrsprachig auf]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.13, #choice, [[Kontakt mit der deutschen Sprache]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_KontaktDeutscheSpracheVS)
    * item[+] insert addGroup(5_1_13, Kontakt mit der deutschen Sprache)
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.13, =, SEU_UB_KontaktDeutscheSpracheCS, 2)
      * item[+] insert addItem(5.14, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Jahren)]])
        * insert addSource(#DE-BY)
        * insert uunit(a, "Jahre")
      * item[+] insert addItem(5.15, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Monaten)]])
        * insert addSource(#DE-BY)
        * insert uunit(mo, "Monate")
    * item[+] insert addItem(5.16, #choice, [[Elternsprache  1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
    * item[+] insert addItem(5.17, #boolean, [[Elternsprache 1 andere]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.16, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
    * item[+] insert addItem(5.18, #choice, [[Elternsprache  2]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
    * item[+] insert addItem(5.19, #boolean, [[Elternsprache 2 andere]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.16, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
    * item[+] insert addItem(5.20, #choice, [[Zu Hause gesprochene Sprache(n)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_GesprocheneSpracheVS)
    * item[+] insert addItem(5.21, #string, [[Zu Hause gesprochene Sprache(n) andere]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.20, =, SEU_UB_GesprocheneSpracheCS, 2)
      * insert enableWhenCode(5.20, =, SEU_UB_GesprocheneSpracheCS, 8)
      * enableBehavior = #any
    * item[+] insert addItem(5.22, #choice, [[Händigkeit]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_HaendigkeitVS)
    * item[+] insert addItem(5.23, #boolean, [[Auffälligkeiten im sozialen Verhalten (Stimmung, Konzentration, Verhalten, Umgang mit Anderen)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_2, Fördermaßnahmen oder Behandlungen)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.24, #choice, [[Teilnahme Vorkurs Deutsch]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_TeilnahmeVorkursDeutschVS)
    * item[+] insert addItem(5.25, #choice, [[Sprachtherapie (Logopädie) jemals]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_SprachtherapieVS)
  * item[+] insert addGroup(5_3, Angaben zu Vorerkrankungen oder gesundheitlichen Einschränkungen)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.26, #boolean, [[Augenarztbesuch]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.27, #choice, [[Feststellung / Veranlassung Augenarzt]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAugenarztVS)
      * insert enableWhenBoolean(5.26, =, true)
    * item[+] insert addItem(5.28, #choice, [[Besuch beim Zahnarzt in letzten 12 Monaten]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
    * item[+] insert addItem(5.29, #boolean, [[Angeborene schwere Hörstörung]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
  * item[+] insert addGroup(5_4, Zusatzangaben zur Hörstörung)
    * insert addSource(#DE-BY)
    * insert enableWhenBoolean(2.29, =, true)
    * item[+] insert addItem(5.30, #choice, [[Angeborene Hörstörung]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.31, #choice, [[mit Hörgerät versorgt]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.32, #choice, [[mit Cochlea-Implant versorgt]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.33, #boolean, [[Elterneinwilligung mitgegeben (Hören)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_5, Stoffwechselstörung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.34, #boolean, [[Stoffwechselerkrankung oder Hormonstörung (nur ärztl. diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_6, Zusatzangaben zu Stoffwechselstörungen)
    * insert addSource(#DE-BY)
    * insert enableWhenBoolean(5.34, =, true)
    * item[+] insert addItem(5.35, #boolean, [[MCAD-Mangel (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.36, #boolean, [[Hypothyreose (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.37, #boolean, [[Phenylketonurie (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.38, #boolean, [[AGS (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.39, #boolean, [[Mukoviszidose (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.40, #boolean, [[Diabetes mellitus (Typ 1) (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.41, #boolean, [[Diabetes mellitus (Typ 2) (nur ärztlich diag. Befunde angeben)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.42, #boolean, [[sonstige Stoffwechselerkrankungen (nur ärztlich diag. Befunde)]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.43, #string, [[wenn ja, welche (nur ärztlich diag. Befunde)]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.42, =, true)
    * item[+] insert addItem(5.44, #integer, [[Alter bei Diagnosestellung (in Jahren)]])
      * insert addSource(#DE-BY)
      * insert uunit(a, "Jahre")
      * insert enableWhenBoolean(5.35, =, true)
      * insert enableWhenBoolean(5.36, =, true)
      * insert enableWhenBoolean(5.37, =, true)
      * insert enableWhenBoolean(5.38, =, true)
      * insert enableWhenBoolean(5.39, =, true)
      * insert enableWhenBoolean(5.40, =, true)
      * insert enableWhenBoolean(5.41, =, true)
      * insert enableWhenBoolean(5.42, =, true)
      * enableBehavior = #any
      * item[+] insert helpItem(5.44H, [[Wurde mehr als 1 Erkrankung (Variablen 5.35 - 5.42) mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben.]])
    * item[+] insert addItem(5.45, #integer, [[Alter bei Diagnosestellung (in Monaten)]])
      * insert addSource(#DE-BY)
      * insert uunit(mo, "Monate")
      * insert enableWhenBoolean(5.35, =, true)
      * insert enableWhenBoolean(5.36, =, true)
      * insert enableWhenBoolean(5.37, =, true)
      * insert enableWhenBoolean(5.38, =, true)
      * insert enableWhenBoolean(5.39, =, true)
      * insert enableWhenBoolean(5.40, =, true)
      * insert enableWhenBoolean(5.41, =, true)
      * insert enableWhenBoolean(5.42, =, true)
      * enableBehavior = #any
      * item[+] insert helpItem(5.44H, [[Wurde mehr als 1 Erkrankung (Variablen 5.35 - 5.42) mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben.]])
    * item[+] insert addItem(5.46, #boolean, [[Elterneinwilligung mitgegeben (Stoffwechselerkrankungen)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_7, Chronische Erkankung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.47, #boolean, [[Chronische Erkrankung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.48, #string, [[Art der chronischen Erkrankung]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.47, =, true)
  * item[+] insert addGroup(5_8, Schwere Behinderung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.49, #boolean, [[Schwere Behinderung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.50, #string, [[Art der Behinderung]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.49, =, true)
  * item[+] insert addGroup(5_9, Medikamente)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.51, #boolean, [[regelmäßige Medikamenteneinnahme]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.52, #string, [[Art des Medikaments]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.51, =, true)
  * item[+] insert addGroup(5_10, [[Erkrankungen, die ggf. Notfallmaßnahmen erfordern]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.53, #boolean, [[Erkrankungen mit ggf. erfoderlichen Vorgehensweisen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.54, #string, [[Erkrankung]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.53, =, true)
  * item[+] insert addGroup(5_11, Sonstige Angaben)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.55, #boolean, [[familiäre Leserechtschreibschwäche]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.56, #boolean, [[familiäre Rechenschwäche]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_12, FREIWILLIGE Angaben zu den Personensorgeberechtigten)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.57, #choice, [[Anzahl Erwachsene im Haushalt]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortErwachseneVS)
    * item[+] insert addItem(5.58, #choice, [[Geburtsland Elternteil 1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_GeburtslandVS)
    * item[+] insert addItem(5.59, #choice, [[Geburtsland Elternteil 2]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_GeburtslandVS)
    * item[+] insert addItem(5.60, #choice, [[Staatsangehörigkeit Elternteil 1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_StaatsangehoerigkeitVS)
    * item[+] insert addItem(5.61, #choice, [[Staatsangehörigkeit Elternteil 2]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_StaatsangehoerigkeitVS)
    * item[+] insert addItem(5.62, #choice, [[Höchster Schulabschluss Elternteil 1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_SchulabschlussVS)
    * item[+] insert addItem(5.63, #choice, [[Höchster Schulabschluss Elternteil 2]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_SchulabschlussVS)
    * item[+] insert addItem(5.64, #choice, [[Erwerbstätigkeit Elternteil 1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ErwerbstaetigkeitVS)
    * item[+] insert addItem(5.65, #choice, [[Erwerbstätigkeit Elternteil 2]])
      * insert addSource(#DE-BY) 

CodeSystem: SEU_UB_AntwortenHoerstoerungCS
Id: SEU-UB-AntwortenHoerstoerungCS
Title: "SEU Antworten Hörstörung"
* #1 "links"
* #2 "rechts"
* #3 "beidseitig"
* #9 "keine Angaben"

ValueSet: SEU_UB_AntwortenHoerstoerungVS
Id: SEU-UB-AntwortenHoerstoerungVS
Title: "SEU Antworten Hörstörung"
Description: "Diese Codes enthalten die Antworten auf die Frage zu einer Hörstöhrung"
* include codes from system SEU_UB_AntwortenHoerstoerungCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenHoerstoerungCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "links"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenHoerstoerungCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "rechts"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenHoerstoerungCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "beidseitig"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenHoerstoerungCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_AntwortAugenarztCS
Id: SEU-UB-AntwortAugenarztCS
Title: "SEU Antwort Augenarzt"
* #1 "unauffälliger Befund"
* #2 "Kurzsichtigkeit (Myopie)"
* #3 "Weitsichtigkeit (Hyperopie)"
* #4 "Schielen"
* #5 "Verordnung Brille"
* #6 "Verordnung Brille bei Myopie"
* #7 "Verodnung Brille bei Hyperopie"
* #8 "Verordnung Brille bei Schielen"
* #9 "keine Angaben"

ValueSet: SEU_UB_AntwortAugenarztVS
Id: SEU-UB-AntwortAugenarztVS
Title: "SEU Antwort Augenarzt"
Description: "Diese Codes enthalten die Antworten auf Fragen zu einer Augenarztuntersuchung"
* include codes from system SEU_UB_AntwortAugenarztCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "unauffälliger Befund"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Kurzsichtigkeit (Myopie)"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Weitsichtigkeit (Hyperopie)"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Schielen"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Verordnung Brille"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Verordnung Brille bei Myopie"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Verodnung Brille bei Hyperopie"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Verordnung Brille bei Schielen"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAugenarztCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_JaNeinGeplantKeineAngabeCS
Id: SEU-UB-JaNeinGeplantKeineAngabeCS
Title: "SEU Ja-Nein-Geplant-KeineAngabe"
* #1 "ja"
* #2 "nein"
* #3 "geplant"
* #9 "keine Angaben"

ValueSet: SEU_UB_JaNeinKeineAngabeVS
Id: SEU-UB-JaNeinKeineAngabeVS
Title: "SEU Ja-Nein-KeineAngabe"
Description: "Diese Codes können Boolean erweitern um 'Keine Angabe'"
* SEU_UB_JaNeinGeplantKeineAngabeCS#1 "ja"
* SEU_UB_JaNeinGeplantKeineAngabeCS#2 "nein"
* SEU_UB_JaNeinGeplantKeineAngabeCS#9 "keine Angaben"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

ValueSet: SEU_UB_TeilnahmeVorkursDeutschVS
Id: SEU-UB-TeilnahmeVorkursDeutschVS
Title: "SEU Teilnahme Vorkurs Deutsch"
Description: "Diese Codes enthalten die Angabe über eine Teilnahme am Vorkurs Deutsch"
* include codes from system SEU_UB_JaNeinGeplantKeineAngabeCS
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "geplant"
* ^expansion.contains[+].system = Canonical(SEU_UB_JaNeinGeplantKeineAngabeCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_SprachtherapieCS
Id: SEU-UB-SprachtherapieCS
Title: "SEU Sprachtherapie"
* #2 "nein"
* #3 "abgeschlossen"
* #4 "läuft noch"
* #5 "geplant"
* #9 "keine Angaben"

ValueSet: SEU_UB_SprachtherapieVS
Id: SEU-UB-SprachtherapieVS
Title: "SEU Sprachtherapie"
Description: "Diese Codes enthalten Angaben zu einer Sprachtherapie"
* include codes from system SEU_UB_SprachtherapieCS
* ^expansion.contains[+].system = Canonical(SEU_UB_SprachtherapieCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_SprachtherapieCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "abgeschlossen"
* ^expansion.contains[+].system = Canonical(SEU_UB_SprachtherapieCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "läuft noch"
* ^expansion.contains[+].system = Canonical(SEU_UB_SprachtherapieCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "geplant"
* ^expansion.contains[+].system = Canonical(SEU_UB_SprachtherapieCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_HaendigkeitCS
Id: SEU-UB-HaendigkeitCS
Title: "SEU Händigkeit"
* #1 "Rechtshänder"
* #2 "Linkshänder"
* #3 "noch unentschieden"
* #9 "keine Angabe"

ValueSet: SEU_UB_HaendigkeitVS
Id: SEU-UB-HaendigkeitVS
Title: "SEU Händigkeit"
Description: "Diese Codes enthalten Angaben zur Händigkeit"
* include codes from system SEU_UB_HaendigkeitCS
* ^expansion.contains[+].system = Canonical(SEU_UB_HaendigkeitCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Rechtshänder"
* ^expansion.contains[+].system = Canonical(SEU_UB_HaendigkeitCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Linkshänder"
* ^expansion.contains[+].system = Canonical(SEU_UB_HaendigkeitCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "noch unentschieden"
* ^expansion.contains[+].system = Canonical(SEU_UB_HaendigkeitCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: SEU_UB_GesprocheneSpracheCS
Id: SEU-UB-GesprocheneSpracheCS
Title: "SEU Gesprochene Sprache"
* #1 "Deutsch"
* #2 "Deutsch UND andere"
* #8 "Andere"
* #9 "keine Angaben"

ValueSet: SEU_UB_GesprocheneSpracheVS
Id: SEU-UB-GesprocheneSpracheVS
Title: "SEU Gesprochene Sprache"
Description: "Diese Codes enthalten Angaben zur gesprochenen Sprache"
* include codes from system SEU_UB_GesprocheneSpracheCS
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Deutsch UND andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_KontaktDeutscheSpracheCS
Id: SEU-UB-KontaktDeutscheSpracheCS
Title: "SEU Kontakt mit der deutschen Sprache"
* #1 "seit Geburt"
* #2 "NICHT seit Geburt"
* #9 "keine Angabe"

ValueSet: SEU_UB_KontaktDeutscheSpracheVS
Id: SEU-UB-KontaktDeutscheSpracheVS
Title: "SEU Kontakt mit der deutschen Sprache"
Description: "Diese Codes enthalten Angaben über den Kontakt zur deutschen Sprache"
* include codes from system SEU_UB_KontaktDeutscheSpracheCS
* ^expansion.contains[+].system = Canonical(SEU_UB_KontaktDeutscheSpracheCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "seit Geburt"
* ^expansion.contains[+].system = Canonical(SEU_UB_KontaktDeutscheSpracheCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "NICHT seit Geburt"
* ^expansion.contains[+].system = Canonical(SEU_UB_KontaktDeutscheSpracheCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: SEU_UB_KindergartenArtCS
Id: SEU-UB-KindergartenArtCS
Title: "SEU Art des Kindergarten"
* #1 "Regel KiGa"
* #2 "SVE"
* #3 "HPT"
* #9 "keine Angaben"

ValueSet: SEU_UB_KindergartenArtVS
Id: SEU-UB-KindergartenArtVS
Title: "SEU Art des Kindergarten"
Description: "Diese Codes enthalten Abgaben über die Art des Kindergarten"
* include codes from system SEU_UB_KindergartenArtCS
* ^expansion.contains[+].system = Canonical(SEU_UB_KindergartenArtCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Regel KiGa"
* ^expansion.contains[+].system = Canonical(SEU_UB_KindergartenArtCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "SVE"
* ^expansion.contains[+].system = Canonical(SEU_UB_KindergartenArtCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "HPT"
* ^expansion.contains[+].system = Canonical(SEU_UB_KindergartenArtCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_AntwortKindergartenBesuchCS
Id: SEU-UB-AntwortKindergartenBesuchCS
Title: "SEU Antwort Kindergartenbesuch"
* #0 "0 Jahre"
* #1 "1 Jahr"
* #2 "2 Jahre"
* #3 "3 Jahre"
* #4 "4 Jahre"
* #5 "5 und mehr Jahre"
* #9 "keine Angaben"

ValueSet: SEU_UB_AntwortKindergartenBesuchVS
Id: SEU-UB-AntwortKindergartenBesuchVS
Title: "SEU Antwort Kindergartenbesuch"
Description: "Diese Codes enthalten Antwortmöglichkeiten zur Länge des Kindergartenbesuch"
* include codes from system SEU_UB_AntwortKindergartenBesuchCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "0 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "2 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "3 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "4 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "5 und mehr Jahre"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortKindergartenBesuchCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_AntwortNummerierungPersonenCS
Id: SEU-UB-AntwortNummerierungPersonenCS
Title: "SEU Antwort Geschwister"
* #0 "keine"
* #1 "eins"
* #2 "zwei"
* #3 "drei"
* #4 "vier und mehr"
* #9 "keine Angaben"

ValueSet: SEU_UB_AntwortGeschwisterVS
Id: SEU-UB-AntwortGeschwisterVS
Title: "SEU Antwort Geschwister"
Description: "Diese Codes enthalten Informationen über die Anzahl der Geschwister"
* include codes from system SEU_UB_AntwortNummerierungPersonenCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "eins"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "zwei"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "drei"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "vier und mehr"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

ValueSet: SEU_UB_AntwortErwachseneVS
Id: SEU-UB-AntwortErwachseneVS
Title: "SEU Antwort Erwachsene"
Description: "Diese Codes enthalten Informationen über die Anzahl der Erwachsenen"
* SEU_UB_AntwortNummerierungPersonenCS#1
* SEU_UB_AntwortNummerierungPersonenCS#2
* SEU_UB_AntwortNummerierungPersonenCS#3
* SEU_UB_AntwortNummerierungPersonenCS#4
* SEU_UB_AntwortNummerierungPersonenCS#9
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "eins"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "zwei"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "drei"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "vier und mehr"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortNummerierungPersonenCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem:  SEU_UB_AnamneseBesonderheitenCS
Id: SEU-UB-AnamneseBesonderheitenCS
Title: "SEU Anamnese Besonderheiten"
* #0 "Es liegen keinerlei Angaben zur Anamnese vor"
* #1 "Erschwert wegen unzureichender Deutschkenntnisse"

ValueSet: SEU_UB_AnamneseBesonderheitenVS
Id: SEU-UB-AnamneseBesonderheitenVS
Title: "SEU Anamnese Besonderheiten"
Description: "Diese Codes enthalten Besonderheiten bei der Anamnese einer SEU"
* include codes from system SEU_UB_AnamneseBesonderheitenCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AnamneseBesonderheitenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "Es liegen keinerlei Angaben zur Anamnese vor"
* ^expansion.contains[+].system = Canonical(SEU_UB_AnamneseBesonderheitenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Erschwert wegen unzureichender Deutschkenntnisse"

CodeSystem: SEU_UB_StaatsangehoerigkeitCS
Id: SEU-UB-StaatsangehoerigkeitCS
Title: "SEU Staatsangehörigkeit"
* #1 "Deutsch"
* #2 "Deutsch UND andere"
* #3 "Andere"
* #9 "keine Angaben"

ValueSet: SEU_UB_StaatsangehoerigkeitVS
Id: SEU-UB-StaatsangehoerigkeitVS
Title: "SEU Staatsangehörigkeit"
Description: "Diese Codes enthalten Angaben zur Staatsangehörigkeit"
* include codes from system SEU_UB_StaatsangehoerigkeitCS
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Deutsch UND andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_GesprocheneSpracheCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_GeburtslandCS
Id: SEU-UB-GeburtslandCS
Title: "SEU Geburtsland"
* #1 "Deutschland"
* #2 "Anderes Land"
* #9 "keine Angaben"

ValueSet: SEU_UB_GeburtslandVS
Id: SEU-UB-GeburtslandVS
Title: "SEU Geburtsland"
Description: "Diese Codes enthalten Angaben zum Geburtsland"
* include codes from system SEU_UB_StaatsangehoerigkeitCS
* ^expansion.contains[+].system = Canonical(SEU_UB_GeburtslandCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Deutschland"
* ^expansion.contains[+].system = Canonical(SEU_UB_GeburtslandCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Anderes Land"
* ^expansion.contains[+].system = Canonical(SEU_UB_GeburtslandCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_SchulabschlussCS
Id: SEU-UB-SchulabschlussCS
Title: "SEU Schulabschluss"
* #1 "(noch) kein Schulabschluss"
* #2 "Haupt-/Volks-/Mittelschulabschluss/Quali"
* #3 "Realschulabschluss (Mittlere Reife)"
* #4 "allgemeine/fachgebundene Hochschulreife"
* #5 "Hochschul-/Universitätsabschluss"
* #9 "keine Angaben"

ValueSet: SEU_UB_SchulabschlussVS
Id: SEU-UB-SchulabschlussVS
Title: "SEU Schulabschluss"
Description: "Diese Codes enthalten Angaben zum Schulabschluss"
* include codes from system SEU_UB_SchulabschlussCS
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "(noch) kein Schulabschluss"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Haupt-/Volks-/Mittelschulabschluss/Quali"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Realschulabschluss (Mittlere Reife)"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "allgemeine/fachgebundene Hochschulreife"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Hochschul-/Universitätsabschluss"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulabschlussCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_ErwerbstaetigkeitCS
Id: SEU-UB-ErwerbstaetigkeitCS
Title: "SEU Erwerbstätigkeit"
* #1 "vollzeit, mind. 35 Stunden"
* #2 "teilzeit, 15-34 Stunden"
* #3 "stundenweise, weniger als 15 Stunden"
* #4 "vorübergehende Freistellung"
* #5 "Ausbildung, Lehre, Umschulung"
* #6 "nicht erwerbstätig, nicht arbeitssuchend"
* #7 "nicht erwerbstätig, arbeitssuchend"
* #9 "keine Angaben"

ValueSet: SEU_UB_ErwerbstaetigkeitVS
Id: SEU-UB-ErwerbstaetigkeitVS
Title: "SEU Erwerbstätigkeit"
Description: "Diese Codes enthalten Angaben zur Erwerbstätigkeit"
* include codes from system SEU_UB_ErwerbstaetigkeitCS
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "vollzeit, mind. 35 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "teilzeit, 15-34 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "stundenweise, weniger als 15 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "vorübergehende Freistellung"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Ausbildung, Lehre, Umschulung"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "nicht erwerbstätig, nicht arbeitssuchend"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "nicht erwerbstätig, arbeitssuchend"
* ^expansion.contains[+].system = Canonical(SEU_UB_ErwerbstaetigkeitCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angaben"

CodeSystem: SEU_UB_AuswaehlbareElternspracheErweiterungCS
Id: SEU-UB-AuswaehlbareElternspracheErweiterungCS
Title: "SEU Erwerbstätigkeit"
* #12 "Gebärdensprache"
* #98 "andere"
* #99 "keine Angabe"

ValueSet: SEU_UB_AuswaehlbareElternspracheVS
Id: SEU-UB-AuswaehlbareElternspracheVS
Title: "SEU Auswählbare Elternsprache"
Description: "Dieses ValueSet enthält die auswählbaren Elternsprachen. Als CodeSystem wird 'urn:ietf:bcp:47' als Basis genommen."
* $ietf-47#de "Deutsch"
* $ietf-47#en "Englisch"
* $ietf-47#tr "Türkisch"
* $ietf-47#ru "Russisch"
* $ietf-47#sr "Serbisch" //montenegrisch fehlt, über sr?
* $ietf-47#hr "Kroatisch"
* $ietf-47#bs "Bosnisch"
* $ietf-47#it "Italienisch"
* $ietf-47#ar "Arabisch"
* $ietf-47#ro "Rumänisch"
* $ietf-47#pl "Polnisch"
* $ietf-47#sq "Albanisch"
* $ietf-47#uk "Ukraninisch"
* include codes from system SEU_UB_AuswaehlbareElternspracheErweiterungCS
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #de
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #en
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #tr
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ru
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #sr
* ^expansion.contains[=].display = "Serbisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #hr
* ^expansion.contains[=].display = "Kroatisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #bs
* ^expansion.contains[=].display = "Bosnisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #it
* ^expansion.contains[=].display = "Italienisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ar
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #ro
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #pl
* ^expansion.contains[=].display = "Polnisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #sq
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = $ietf-47
* ^expansion.contains[=].code = #uk
* ^expansion.contains[=].display = "Ukraninisch"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Gebärdensprache"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "keine Angabe"
