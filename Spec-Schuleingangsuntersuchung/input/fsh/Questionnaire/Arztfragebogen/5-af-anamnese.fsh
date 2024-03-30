RuleSet: 5-af-anamnese
* item[+] insert addGroup(5, Anamnese)
  * item[+] insert addItem(5.1, #choice, [[Besonderheiten bei Anamnese]])
    * answerValueSet = Canonical(AnamneseBesonderheitenVS)
  * item[+] insert addGroup(5_1, Anamnese)
    * insert EnableWhenCode(5.1, !=, AnamneseBesonderheitenCS, 0)
    * item[+] insert addItem(5.2, #choice, [[Geschwister]])
      * answerValueSet = Canonical(AntwortGeschwisterVS)
    * item[+] insert addItemMl(5.3, #string, Staatsangehörigkeit des Kindes, 20) //Darf ich hier das Länder-ISO dran binden?
    * item[+] insert addItemMl(5.4, #string, Geburtsland des Kindes, 20) //Darf ich hier das Länder-ISO dran binden?
    * item[+] insert addItem(5.5, #choice, [[Krippe/KITA/Kindergartenbesuch]])
      * answerValueSet = Canonical(AntwortKindergartenBesuchVS)
    * item[+] insert addItem(5.6, #boolean, [[Derzeitiger Besuch eines Kindergartens]])
    * item[+] insert addItem(5.7, #boolean, [[Art des Kindergartens]])
      * answerValueSet = Canonical(KindergartenArtVS)
    * item[+] insert addItem(5.8, #integer, [[Geburtsgewicht (in g)]])
      * insert uunit(g, "g")
    * item[+] insert addItem(5.9, #integer, [[Vollendete Schwangerschaftswochen]])
      * insert uunit(wk, "Schwangerschaftswochen")
    * item[+] insert addItem(5.10, #boolean, [[Mehrling]])
    * item[+] insert addItem(5.11, #boolean, [[Sprachauffälligkeit in Entwicklung]])
    * item[+] insert addItem(5.12, #boolean, [[Kind wächst mehrsprachig auf]])
    * item[+] insert addItem(5.13, #choice, [[Kontakt mit der deutschen Sprache]])
      * answerValueSet = Canonical(KontaktDeutscheSpracheVS)
    * item[+] insert addGroup(5_1_13, Kontakt mit der deutschen Sprache)
      * insert EnableWhenCode(5.13, =, KontaktDeutscheSpracheCS, 2)
      * item[+] insert addItem(5.14, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Jahren)]])
        * insert uunit(a, "Jahre")
      * item[+] insert addItem(5.15, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Monaten)]])
        * insert uunit(mo, "Monate")
    * item[+] insert addItem(5.16, #choice, [[Elternsprache  1]])
      //VS auf ISO Basis plus andere und keine Angabe
    * item[+] insert addItem(5.17, #boolean, [[Elternsprache 1 andere]])
      // * insert EnableWhenCode(5.16, =, TODO, 98)
    * item[+] insert addItem(5.18, #choice, [[Elternsprache  2]])
      //VS auf ISO Basis plus andere und keine Angabe
    * item[+] insert addItem(5.19, #boolean, [[Elternsprache 2 andere]])
      // * insert EnableWhenCode(5.16, =, TODO, 98)
    * item[+] insert addItem(5.20, #choice, [[Zu Hause gesprochene Sprache(n)]])
      * answerValueSet = Canonical(GesprocheneSpracheVS)
    * item[+] insert addItem(5.21, #string, [[Zu Hause gesprochene Sprache(n) andere]])
      * insert EnableWhenCode(5.20, =, GesprocheneSpracheCS, 2)
      * insert EnableWhenCode(5.20, =, GesprocheneSpracheCS, 8)
      * enableBehavior = #any
    * item[+] insert addItem(5.22, #choice, [[Händigkeit]])
      * answerValueSet = Canonical(HaendigkeitVS)
    * item[+] insert addItem(5.23, #boolean, [[Auffälligkeiten im sozialen Verhalten (Stimmung, Konzentration, Verhalten, Umgang mit Anderen)]])
  * item[+] insert addGroup(5_2, Fördermaßnahmen oder Behandlungen)
    * item[+] insert addItem(5.24, #choice, [[Teilnahme Vorkurs Deutsch]])
      * answerValueSet = Canonical(TeilnahmeVorkursDeutschVS)
    * item[+] insert addItem(5.25, #choice, [[Sprachtherapie (Logopädie) jemals]])
      * answerValueSet = Canonical(SprachtherapieVS)
  * item[+] insert addGroup(5_3, Angaben zu Vorerkrankungen oder gesundheitlichen Einschränkungen)
    * item[+] insert addItem(5.26, #boolean, [[Augenarztbesuch]])
    * item[+] insert addItem(5.27, #choice, [[Feststellung / Veranlassung Augenarzt]])
      * answerValueSet = Canonical(AntwortAugenarztVS)
      * insert EnableWhenBoolean(5.26, =, true)
    * item[+] insert addItem(5.28, #boolean, [[Besuch beim Zahnarzt in letzten 12 Monaten]]) //TODO JN-KeineAngabe
    * item[+] insert addItem(5.29, #boolean, [[Angeborene schwere Hörstörung]]) //TODO JN-KeineAngabe
  * item[+] insert addGroup(5_4, Zusatzangaben zur Hörstörung)
    * insert EnableWhenBoolean(2.29, =, true)
    * item[+] insert addItem(5.30, #choice, [[Angeborene Hörstörung]])
      * answerValueSet = Canonical(AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.31, #choice, [[mit Hörgerät versorgt]])
      * answerValueSet = Canonical(AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.32, #choice, [[mit Cochlea-Implant versorgt]])
      * answerValueSet = Canonical(AntwortenHoerstoerungVS)
    * item[+] insert addItem(5.33, #boolean, [[Elterneinwilligung mitgegeben (Hören)]])
  * item[+] insert addGroup(5_5, Stoffwechselstörung)
    * item[+] insert addItem(5.34, #boolean, [[Stoffwechselerkrankung oder Hormonstörung (nur ärztl. diag. Befunde angeben)]])
  * item[+] insert addGroup(5_6, Zusatzangaben zu Stoffwechselstörungen)
    * insert EnableWhenBoolean(5.34, =, true)
    * item[+] insert addItem(5.35, #boolean, [[MCAD-Mangel (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.36, #boolean, [[Hypothyreose (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.37, #boolean, [[Phenylketonurie (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.38, #boolean, [[AGS (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.39, #boolean, [[Mukoviszidose (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.40, #boolean, [[Diabetes mellitus (Typ 1) (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.41, #boolean, [[Diabetes mellitus (Typ 2) (nur ärztlich diag. Befunde angeben)]])
    * item[+] insert addItem(5.42, #boolean, [[sonstige Stoffwechselerkrankungen (nur ärztlich diag. Befunde)]])
    * item[+] insert addItem(5.43, #string, [[wenn ja, welche (nur ärztlich diag. Befunde)]])
      * insert EnableWhenBoolean(5.42, =, true)
    * item[+] insert addItem(5.44, #integer, [[Alter bei Diagnosestellung (in Jahren)]]) //TODO Hinweistext
      * insert uunit(a, "Jahre")
    * item[+] insert addItem(5.45, #integer, [[Alter bei Diagnosestellung (in Monaten)]])
      * insert uunit(mo, "Monate")
    * item[+] insert addItem(5.46, #boolean, [[Elterneinwilligung mitgegeben (Stoffwechselerkrankungen)]])
  * item[+] insert addGroup(5_7, Chronische Erkankung)
    * item[+] insert addItem(5.47, #boolean, [[Chronische Erkrankung]])
    * item[+] insert addItem(5.48, #string, [[Art der chronischen Erkrankung]])
      * insert EnableWhenBoolean(5.47, =, true)
  * item[+] insert addGroup(5_8, Schwere Behinderung)
    * item[+] insert addItem(5.49, #boolean, [[Schwere Behinderung]])
    * item[+] insert addItem(5.50, #string, [[Art der Behinderung]])
      * insert EnableWhenBoolean(5.49, =, true)
  * item[+] insert addGroup(5_9, Medikamente)
    * item[+] insert addItem(5.51, #boolean, [[regelmäßige Medikamenteneinnahme]])
    * item[+] insert addItem(5.52, #string, [[Art des Medikaments]])
      * insert EnableWhenBoolean(5.51, =, true)
  * item[+] insert addGroup(5_10, Erkrankungen, die ggf. Notfallmaßnahmen erfordern)
    * item[+] insert addItem(5.53, #boolean, [[Erkrankungen mit ggf. erfoderlichen Vorgehensweisen]])
    * item[+] insert addItem(5.54, #string, [[Erkrankung]])
      * insert EnableWhenBoolean(5.53, =, true)
  * item[+] insert addGroup(5_11, Sonstige Angaben)
    * item[+] insert addItem(5.55, #boolean, [[familiäre Leserechtschreibschwäche]])
    * item[+] insert addItem(5.56, #boolean, [[familiäre Rechenschwäche]])
  * item[+] insert addGroup(5_12, FREIWILLIGE Angaben zu den Personensorgeberechtigten)
    * item[+] insert addItem(5.57, #choice, [[Anzahl Erwachsene im Haushalt]]) //TODO: CS
    * item[+] insert addItem(5.58, #choice, [[Geburtsland Elternteil 1]]) //TODO: CS
    * item[+] insert addItem(5.59, #choice, [[Geburtsland Elternteil 2]]) //TODO: CS
    * item[+] insert addItem(5.60, #choice, [[Staatsangehörigkeit Elternteil 1]]) //TODO: CS
    * item[+] insert addItem(5.61, #choice, [[Staatsangehörigkeit Elternteil 2]]) //TODO: CS
    * item[+] insert addItem(5.62, #choice, [[Höchster Schulabschluss Elternteil 1]]) //TODO: CS
    * item[+] insert addItem(5.63, #choice, [[Höchster Schulabschluss Elternteil 2]]) //TODO: CS
    * item[+] insert addItem(5.64, #choice, [[Erwerbstätigkeit Elternteil 1]]) //TODO: CS
    * item[+] insert addItem(5.65, #choice, [[Erwerbstätigkeit Elternteil 2]]) //TODO: CS

CodeSystem: AntwortenHoerstoerungCS
Id: AntwortenHoerstoerungCS
Title: "SEU Antworten Hörstörung"
* #1 "links"
* #2 "rechts"
* #3 "beidseitig"
* #9 "keine Angaben"

ValueSet: AntwortenHoerstoerungVS
Id: AntwortenHoerstoerungVS
Title: "SEU Antworten Hörstörung"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system AntwortenHoerstoerungCS

CodeSystem: AntwortAugenarztCS
Id: AntwortAugenarztCS
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

ValueSet: AntwortAugenarztVS
Id: AntwortAugenarztVS
Title: "SEU Antwort Augenarzt"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system AntwortAugenarztCS

CodeSystem: TeilnahmeVorkursDeutschCS
Id: TeilnahmeVorkursDeutschCS
Title: "SEU Teilnahme Vorkurs Deutsch"
* #1 "ja"
* #2 "nein"
* #3 "geplant"
* #9 "keine Angaben"

ValueSet: TeilnahmeVorkursDeutschVS
Id: TeilnahmeVorkursDeutschVS
Title: "SEU Teilnahme Vorkurs Deutsch"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system TeilnahmeVorkursDeutschCS

CodeSystem: SprachtherapieCS
Id: SprachtherapieCS
Title: "SEU Sprachtherapie"
* #2 "nein"
* #3 "abgeschlossen"
* #4 "läuft noch"
* #5 "geplant"
* #9 "keine Angaben"

ValueSet: SprachtherapieVS
Id: SprachtherapieVS
Title: "SEU Sprachtherapie"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system SprachtherapieCS

CodeSystem: HaendigkeitCS
Id: HaendigkeitCS
Title: "SEU Händigkeit"
* #1 "Rechtshänder"
* #2 "Linkshänder"
* #3 "noch unentschieden"
* #9 "keine Angabe"

ValueSet: HaendigkeitVS
Id: HaendigkeitVS
Title: "SEU Händigkeit"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system HaendigkeitCS

CodeSystem: GesprocheneSpracheCS
Id: GesprocheneSpracheCS
Title: "SEU Gesprochene Sprache"
* #1 "Deutsch"
* #2 "Deutsch UND andere"
* #8 "Andere"
* #9 "keine Angaben"

ValueSet: GesprocheneSpracheVS
Id: GesprocheneSpracheVS
Title: "SEU Gesprochene Sprache"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system GesprocheneSpracheCS

CodeSystem: KontaktDeutscheSpracheCS
Id: KontaktDeutscheSpracheCS
Title: "SEU Kontakt mit der deutschen Sprache"
* #1 "seit Geburt"
* #2 "NICHT seit Geburt"
* #9 "keine Angabe"

ValueSet: KontaktDeutscheSpracheVS
Id: KontaktDeutscheSpracheVS
Title: "SEU Kontakt mit der deutschen Sprache"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system KontaktDeutscheSpracheCS

CodeSystem: KindergartenArtCS
Id: KindergartenArtCS
Title: "SEU Art des Kindergarten"
* #1 "Regel KiGa"
* #2 "SVE"
* #3 "HPT"
* #9 "keine Angaben"

ValueSet: KindergartenArtVS
Id: KindergartenArtVS
Title: "SEU Art des Kindergarten"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system KindergartenArtCS

CodeSystem: AntwortKindergartenBesuchCS
Id: AntwortKindergartenBesuchCS
Title: "SEU Antwort Kindergartenbesuch"
* #0 "0 Jahre"
* #1 "1 Jahr"
* #2 "2 Jahre"
* #3 "3 Jahre"
* #4 "4 Jahre"
* #5 "5 und mehr Jahre"
* #9 "keine Angaben"

ValueSet: AntwortKindergartenBesuchVS
Id: AntwortKindergartenBesuchVS
Title: "SEU Antwort Kindergartenbesuch"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system AntwortKindergartenBesuchCS

CodeSystem: AntwortGeschwisterCS
Id: AntwortGeschwisterCS
Title: "SEU Antwort Geschwister"
* #0 "keine"
* #1 "eins"
* #2 "zwei"
* #3 "drei"
* #4 "vier und mehr"
* #9 "keine Angaben"

ValueSet: AntwortGeschwisterVS
Id: AntwortGeschwisterVS
Title: "SEU Antwort Geschwister"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system AntwortGeschwisterCS

CodeSystem:  AnamneseBesonderheitenCS
Id: AnamneseBesonderheitenCS
Title: "SEU Anamnese Besonderheiten"
* #0 "Es liegen keinerlei Angaben zur Anamnese vor"
* #1 "Erschwert wegen unzureichender Deutschkenntnisse"

ValueSet: AnamneseBesonderheitenVS
Id: AnamneseBesonderheitenVS
Title: "SEU Anamnese Besonderheiten"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system AnamneseBesonderheitenCS