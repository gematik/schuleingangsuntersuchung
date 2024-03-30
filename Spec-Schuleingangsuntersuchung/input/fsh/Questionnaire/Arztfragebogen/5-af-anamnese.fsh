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