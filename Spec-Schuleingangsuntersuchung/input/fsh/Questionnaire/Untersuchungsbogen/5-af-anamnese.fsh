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
    * item[+] insert addItem(5.7, #choice, [[Art des Kindergartens]])
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
    * item[+] insert addItem(5.17, #string, [[Elternsprache 1 andere]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.16, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
    * item[+] insert addItem(5.18, #choice, [[Elternsprache  2]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
    * item[+] insert addItem(5.19, #string, [[Elternsprache 2 andere]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(5.16, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
    * item[+] insert addItem(5.19.b, #choice, [[Elternsprache 3]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
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
    * item[+] insert addItemWithSource(5.23a, #choice, [[Auffälligkeiten im sozialen Verhalten (Stimmung, Konzentration, Verhalten, Umgang mit Anderen)]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(5.23.b, #choice, [[Kind lebt überwiegend bei]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(Kind_lebt_beiVS) 
    * item[+] insert addItem(5.23.c, #integer, [[Anzahl aller im Haushalt lebenden Kinder (bis 18 J.)]])
      * insert addSource(#DE-BE)
    * item[+] insert addItem(5.23.d, #integer, [[Anzahl der Raucher/Dampfer im HH]])
      * insert addSource(#DE-BE)
        * item[+] insert addItem(5.23.e, #choice, [[durchschnittlich täglicher Konsum elektronischer Medien]])
        * insert addSource(#DE-BE)
        * answerValueSet = Canonical(TaeglicherKonsumElektronischerMedienVS) 
    * item[+] insert addItem(5.23.f, #choice, [[eigenes elektronisches Gerät des Kindes]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(ElektronischesGeraetKindVS) 
    * item[+] insert addItem(5.23.g, #choice, [[Zaehneputzen in der Kita]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(Zaehneputzen_in_der_KitaVS) 
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
    * item[+] insert addItem(5.29, #choice, [[Angeborene schwere Hörstörung]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
  * item[+] insert addGroup(5_4, Zusatzangaben zur Hörstörung)
    * insert addSource(#DE-BY)
    * insert enableWhenCode(5.29, =, SEU_UB_JaNeinGeplantKeineAngabeCS, 1)
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
      * item[+] insert helpItem(5.45H, [[Wurde mehr als 1 Erkrankung (Variablen 5.35 - 5.42) mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben.]])
    * item[+] insert addItem(5.46, #boolean, [[Elterneinwilligung mitgegeben (Stoffwechselerkrankungen)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(5_7, Chronische Erkankung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.47, #boolean, [[Chronische Erkrankung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.48, #string, [[Art der chronischen Erkrankung]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.47, =, true)
    * item[+] insert addItemWithSource(5.48a, #choice, [[Art der chronischen Erkrankung]], #DE-HE)
      * insert enableWhenBoolean(5.47, =, true)
      * answerValueSet = Canonical(icd10gm-2024)
  * item[+] insert addGroup(5_8, Schwere Behinderung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(5.49, #boolean, [[Schwere Behinderung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(5.50, #string, [[Art der Behinderung]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(5.49, =, true)
      * repeats = true
    * item[+] insert addItemWithSource(5.50.1, #string, [[erforderliche Maßnahmen]], #DE-BY)
      * insert enableWhenBoolean(5.49, =, true)
      * repeats = true
    * item[+] insert addItemWithSource(5.50a, #choice, [[Art der Behinderung]] , #DE-HE)
      * repeats = true
      * insert enableWhenBoolean(5.49, =, true)
      * answerValueSet = Canonical(SEU_UB_BeeintraechtigungsartVS)
    * item[+] insert addItemWithSource(5.50b, #choice, [[Welche der Behinderung]] , #DE-HE)
      * repeats = true
      * insert enableWhenBoolean(5.49, =, true)
      * answerValueSet = Canonical(icd10gm-2024)
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
      * repeats = true
    * item[+] insert addItemWithSource(5.54.1, #string, [[erforderliche Maßnahmen]], #DE-BY)
      * insert enableWhenBoolean(5.53, =, true)
      * repeats = true
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
    * item[+] insert addItem(5.63.a, #choice, [[berufliche Ausbildung (ggf. die höchste angeben) - Mutter]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(BeruflicheAusbildungElternVS) 
  * item[+] insert addItem(5.63.b, #choice, [[berufliche Ausbildung (ggf. die höchste angeben) - Vater]])
    * insert addSource(#DE-BE)
    * answerValueSet = Canonical(BeruflicheAusbildungElternVS) 
    * item[+] insert addItem(5.64, #choice, [[Erwerbstätigkeit Elternteil 1]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ErwerbstaetigkeitVS)
    * item[+] insert addItem(5.65, #choice, [[Erwerbstätigkeit Elternteil 2]])
      * insert addSource(#DE-BY) 
      * answerValueSet = Canonical(SEU_UB_ErwerbstaetigkeitVS)

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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
Title: "SEU_UB_AuswaehlbareElternspracheErweiterungCS"
* #12 "Gebärdensprache"
* #98 "andere"
* #99 "keine Angabe"

ValueSet: SEU_UB_AuswaehlbareElternspracheVS
Id: SEU-UB-AuswaehlbareElternspracheVS
Title: "SEU Auswählbare Elternsprache"
Description: "Dieses ValueSet enthält die auswählbaren Elternsprachen. Als CodeSystem wird 'urn:ietf:bcp:47' als Basis genommen."
* include codes from system ISO6392_LanguageCS
* include codes from system SEU_UB_AuswaehlbareElternspracheErweiterungCS
* ^expansion.timestamp = "2024-09-12T12:00:00+00:00"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aar
* ^expansion.contains[=].display = "Afar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #abk
* ^expansion.contains[=].display = "Abchasisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ace
* ^expansion.contains[=].display = "Achinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ach
* ^expansion.contains[=].display = "Acholi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ada
* ^expansion.contains[=].display = "Dangme"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ady
* ^expansion.contains[=].display = "Adygeisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #afr
* ^expansion.contains[=].display = "Afrikaans"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ain
* ^expansion.contains[=].display = "Ainu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aka
* ^expansion.contains[=].display = "Akan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #alb
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ale
* ^expansion.contains[=].display = "Aleutisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #alt
* ^expansion.contains[=].display = "Südaltaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #amh
* ^expansion.contains[=].display = "Amharisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #anp
* ^expansion.contains[=].display = "Angika"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ara
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arg
* ^expansion.contains[=].display = "Aragonesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arm
* ^expansion.contains[=].display = "Armenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arn
* ^expansion.contains[=].display = "Mapudungun"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arp
* ^expansion.contains[=].display = "Arapaho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arw
* ^expansion.contains[=].display = "Arawak"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #asm
* ^expansion.contains[=].display = "Assamesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ast
* ^expansion.contains[=].display = "Asturisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ava
* ^expansion.contains[=].display = "Awarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #awa
* ^expansion.contains[=].display = "Awadhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aym
* ^expansion.contains[=].display = "Aymara"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aze
* ^expansion.contains[=].display = "Aserbaidschanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bak
* ^expansion.contains[=].display = "Baschkirisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bal
* ^expansion.contains[=].display = "Belutschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bam
* ^expansion.contains[=].display = "Bambara"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ban
* ^expansion.contains[=].display = "Balinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #baq
* ^expansion.contains[=].display = "Baskisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bas
* ^expansion.contains[=].display = "Bassa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bej
* ^expansion.contains[=].display = "Bedscha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bel
* ^expansion.contains[=].display = "Belarussisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bem
* ^expansion.contains[=].display = "Bemba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ben
* ^expansion.contains[=].display = "Bengalisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bho
* ^expansion.contains[=].display = "Bhojpuri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bik
* ^expansion.contains[=].display = "Bikolano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bin
* ^expansion.contains[=].display = "Edo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bis
* ^expansion.contains[=].display = "Bislama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bla
* ^expansion.contains[=].display = "Blackfoot"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bos
* ^expansion.contains[=].display = "Bosnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bra
* ^expansion.contains[=].display = "Braj-Bhakha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bre
* ^expansion.contains[=].display = "Bretonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bua
* ^expansion.contains[=].display = "Burjatisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bug
* ^expansion.contains[=].display = "Buginesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bul
* ^expansion.contains[=].display = "Bulgarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bur
* ^expansion.contains[=].display = "Birmanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #byn
* ^expansion.contains[=].display = "Blin"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cad
* ^expansion.contains[=].display = "Caddo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #car
* ^expansion.contains[=].display = "Karib"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cat
* ^expansion.contains[=].display = "Katalanisch, Valencianisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ceb
* ^expansion.contains[=].display = "Cebuano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cha
* ^expansion.contains[=].display = "Chamorro"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #che
* ^expansion.contains[=].display = "Tschetschenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chi
* ^expansion.contains[=].display = "Chinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chk
* ^expansion.contains[=].display = "Chuukesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chm
* ^expansion.contains[=].display = "Mari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chn
* ^expansion.contains[=].display = "Chinook Wawa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cho
* ^expansion.contains[=].display = "Choctaw"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chp
* ^expansion.contains[=].display = "Chipewyan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chr
* ^expansion.contains[=].display = "Cherokee"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chv
* ^expansion.contains[=].display = "Tschuwaschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chy
* ^expansion.contains[=].display = "Cheyenne"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cnr
* ^expansion.contains[=].display = "Montenegrinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cor
* ^expansion.contains[=].display = "Kornisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cos
* ^expansion.contains[=].display = "Korsisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cre
* ^expansion.contains[=].display = "Cree"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #crh
* ^expansion.contains[=].display = "Krimtatarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #csb
* ^expansion.contains[=].display = "Kaschubisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cze
* ^expansion.contains[=].display = "Tschechisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dak
* ^expansion.contains[=].display = "Dakota"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dan
* ^expansion.contains[=].display = "Dänisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dar
* ^expansion.contains[=].display = "Darginisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #del
* ^expansion.contains[=].display = "Delawarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #den
* ^expansion.contains[=].display = "Slavey"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dgr
* ^expansion.contains[=].display = "Dogrib"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #din
* ^expansion.contains[=].display = "Dinka"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #div
* ^expansion.contains[=].display = "Dhivehi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #doi
* ^expansion.contains[=].display = "Dogri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dsb
* ^expansion.contains[=].display = "Niedersorbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dua
* ^expansion.contains[=].display = "Duala"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dut
* ^expansion.contains[=].display = "Niederländisch, Belgisches Niederländisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dyu
* ^expansion.contains[=].display = "Dioula"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dzo
* ^expansion.contains[=].display = "Dzongkha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #efi
* ^expansion.contains[=].display = "Efik"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #eka
* ^expansion.contains[=].display = "Ekajuk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #eng
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #est
* ^expansion.contains[=].display = "Estnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ewe
* ^expansion.contains[=].display = "Ewe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ewo
* ^expansion.contains[=].display = "Ewondo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fan
* ^expansion.contains[=].display = "Fang"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fao
* ^expansion.contains[=].display = "Färöisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fat
* ^expansion.contains[=].display = "Fante"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fij
* ^expansion.contains[=].display = "Fidschi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fil
* ^expansion.contains[=].display = "Filipino"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fin
* ^expansion.contains[=].display = "Finnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fon
* ^expansion.contains[=].display = "Fon"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fre
* ^expansion.contains[=].display = "Französisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #frr
* ^expansion.contains[=].display = "Nordfriesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #frs
* ^expansion.contains[=].display = "Ostfriesisches Platt"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fry
* ^expansion.contains[=].display = "Westfriesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ful
* ^expansion.contains[=].display = "Fulfulde"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fur
* ^expansion.contains[=].display = "Furlanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gaa
* ^expansion.contains[=].display = "Ga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gay
* ^expansion.contains[=].display = "Gayo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gba
* ^expansion.contains[=].display = "Gbaya-Sprachen"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #geo
* ^expansion.contains[=].display = "Georgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ger
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gil
* ^expansion.contains[=].display = "Kiribatisch, Gilbertesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gla
* ^expansion.contains[=].display = "Schottisch-gälisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gle
* ^expansion.contains[=].display = "Irisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #glg
* ^expansion.contains[=].display = "Galicisch, Galegisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #glv
* ^expansion.contains[=].display = "Manx,"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gon
* ^expansion.contains[=].display = "Gondi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gor
* ^expansion.contains[=].display = "Gorontalo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #grb
* ^expansion.contains[=].display = "Grebo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gre
* ^expansion.contains[=].display = "Griechisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #grn
* ^expansion.contains[=].display = "Guaraní"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gsw
* ^expansion.contains[=].display = "Schweizerdeutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #guj
* ^expansion.contains[=].display = "Gujarati"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gwi
* ^expansion.contains[=].display = "Gwich'in (Sprache)"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hai
* ^expansion.contains[=].display = "Haida"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hat
* ^expansion.contains[=].display = "Haitianisch-Kreolisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hau
* ^expansion.contains[=].display = "Hausa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #haw
* ^expansion.contains[=].display = "Hawaiisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #heb
* ^expansion.contains[=].display = "Hebräisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #her
* ^expansion.contains[=].display = "Otjiherero"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hil
* ^expansion.contains[=].display = "Hiligaynon"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hin
* ^expansion.contains[=].display = "Hindi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hmn
* ^expansion.contains[=].display = "Hmong-Sprache"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hmo
* ^expansion.contains[=].display = "Hiri Motu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hrv
* ^expansion.contains[=].display = "Kroatisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hsb
* ^expansion.contains[=].display = "Obersorbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hun
* ^expansion.contains[=].display = "Ungarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hup
* ^expansion.contains[=].display = "Hoopa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iba
* ^expansion.contains[=].display = "Iban"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ibo
* ^expansion.contains[=].display = "Igbo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ice
* ^expansion.contains[=].display = "Isländisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iii
* ^expansion.contains[=].display = "Yi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iku
* ^expansion.contains[=].display = "Inuktitut"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ilo
* ^expansion.contains[=].display = "Ilokano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ind
* ^expansion.contains[=].display = "Indonesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #inh
* ^expansion.contains[=].display = "Inguschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ipk
* ^expansion.contains[=].display = "Inupiaq"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ita
* ^expansion.contains[=].display = "Italienisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jav
* ^expansion.contains[=].display = "Javanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jpn
* ^expansion.contains[=].display = "Japanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jpr
* ^expansion.contains[=].display = "Judäo-Persisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jrb
* ^expansion.contains[=].display = "Judäo-Arabisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kaa
* ^expansion.contains[=].display = "Karakalpakisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kab
* ^expansion.contains[=].display = "Kabylisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kac
* ^expansion.contains[=].display = "Jingpo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kal
* ^expansion.contains[=].display = "Grönländisch, Kalaallisut"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kam
* ^expansion.contains[=].display = "Kikamba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kan
* ^expansion.contains[=].display = "Kannada"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kas
* ^expansion.contains[=].display = "Kashmiri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kau
* ^expansion.contains[=].display = "Kanuri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kaz
* ^expansion.contains[=].display = "Kasachisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kbd
* ^expansion.contains[=].display = "Kabardinisch, Ost-Tscherkessisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kha
* ^expansion.contains[=].display = "Khasi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #khm
* ^expansion.contains[=].display = "Khmer"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kik
* ^expansion.contains[=].display = "Kikuyu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kin
* ^expansion.contains[=].display = "Kinyarwanda, Ruandisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kir
* ^expansion.contains[=].display = "Kirgisisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kmb
* ^expansion.contains[=].display = "Kimbundu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kok
* ^expansion.contains[=].display = "Konkani"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kom
* ^expansion.contains[=].display = "Komi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kon
* ^expansion.contains[=].display = "Kikongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kor
* ^expansion.contains[=].display = "Koreanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kos
* ^expansion.contains[=].display = "Kosraeanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kpe
* ^expansion.contains[=].display = "Kpelle"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #krc
* ^expansion.contains[=].display = "Karatschai-balkarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #krl
* ^expansion.contains[=].display = "Karelisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kru
* ^expansion.contains[=].display = "Kurukh"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kua
* ^expansion.contains[=].display = "oshiKwanyama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kum
* ^expansion.contains[=].display = "Kumykisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kur
* ^expansion.contains[=].display = "Kurdisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kut
* ^expansion.contains[=].display = "Kutanaha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lad
* ^expansion.contains[=].display = "Judenspanisch, Ladino, Sephardisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lah
* ^expansion.contains[=].display = "Lahnda, Westpanjabi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lam
* ^expansion.contains[=].display = "Lamba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lao
* ^expansion.contains[=].display = "Laotisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lav
* ^expansion.contains[=].display = "Lettisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lez
* ^expansion.contains[=].display = "Lesgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lim
* ^expansion.contains[=].display = "Limburgisch, Südniederfränkisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lin
* ^expansion.contains[=].display = "Lingála"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lit
* ^expansion.contains[=].display = "Litauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lol
* ^expansion.contains[=].display = "Lomongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #loz
* ^expansion.contains[=].display = "Lozi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ltz
* ^expansion.contains[=].display = "Luxemburgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lua
* ^expansion.contains[=].display = "Tschiluba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lub
* ^expansion.contains[=].display = "Kiluba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lug
* ^expansion.contains[=].display = "Luganda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lun
* ^expansion.contains[=].display = "Chilunda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #luo
* ^expansion.contains[=].display = "Luo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lus
* ^expansion.contains[=].display = "Mizo, Lushai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mac
* ^expansion.contains[=].display = "Mazedonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mad
* ^expansion.contains[=].display = "Maduresisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mag
* ^expansion.contains[=].display = "Magadhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mah
* ^expansion.contains[=].display = "Marshallesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mai
* ^expansion.contains[=].display = "Maithili"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mak
* ^expansion.contains[=].display = "Makassar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mal
* ^expansion.contains[=].display = "Malayalam"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #man
* ^expansion.contains[=].display = "Manding"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mao
* ^expansion.contains[=].display = "Maori"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mar
* ^expansion.contains[=].display = "Marathi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mas
* ^expansion.contains[=].display = "Maa, Kimaasai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #may
* ^expansion.contains[=].display = "Malaiisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mdf
* ^expansion.contains[=].display = "Mokschanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mdr
* ^expansion.contains[=].display = "Mandar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #men
* ^expansion.contains[=].display = "Mende"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mic
* ^expansion.contains[=].display = "Míkmawísimk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #min
* ^expansion.contains[=].display = "Minangkabauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mlg
* ^expansion.contains[=].display = "Malagasy, Malagassi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mlt
* ^expansion.contains[=].display = "Maltesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mnc
* ^expansion.contains[=].display = "Mandschurisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mni
* ^expansion.contains[=].display = "Meitei"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #moh
* ^expansion.contains[=].display = "Mohawk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mon
* ^expansion.contains[=].display = "Mongolisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mos
* ^expansion.contains[=].display = "Mòoré"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mwl
* ^expansion.contains[=].display = "Mirandés"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mwr
* ^expansion.contains[=].display = "Marwari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #myv
* ^expansion.contains[=].display = "Ersjanisch, Ersja-Mordwinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nap
* ^expansion.contains[=].display = "Neapolitanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nau
* ^expansion.contains[=].display = "Nauruisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nav
* ^expansion.contains[=].display = "Navajo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nbl
* ^expansion.contains[=].display = "Süd-Ndebele"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nde
* ^expansion.contains[=].display = "Nord-Ndebele"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ndo
* ^expansion.contains[=].display = "Ndonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nds
* ^expansion.contains[=].display = "Niederdeutsch, Plattdeutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nep
* ^expansion.contains[=].display = "Nepali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #new
* ^expansion.contains[=].display = "Newari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nia
* ^expansion.contains[=].display = "Nias"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #niu
* ^expansion.contains[=].display = "Niueanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nno
* ^expansion.contains[=].display = "Nynorsk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nob
* ^expansion.contains[=].display = "Bokmål"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nog
* ^expansion.contains[=].display = "Nogaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nor
* ^expansion.contains[=].display = "Norwegisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nqo
* ^expansion.contains[=].display = "N’Ko"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nso
* ^expansion.contains[=].display = "Nord-Sotho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nya
* ^expansion.contains[=].display = "Chichewa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nym
* ^expansion.contains[=].display = "Nyamwesi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nyn
* ^expansion.contains[=].display = "Runyankole, Runyankore"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nyo
* ^expansion.contains[=].display = "Runyoro"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nzi
* ^expansion.contains[=].display = "Nzema"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oci
* ^expansion.contains[=].display = "Okzitanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oji
* ^expansion.contains[=].display = "Ojibwe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ori
* ^expansion.contains[=].display = "Oriya"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #orm
* ^expansion.contains[=].display = "Oromo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #osa
* ^expansion.contains[=].display = "Osage"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oss
* ^expansion.contains[=].display = "Ossetisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pag
* ^expansion.contains[=].display = "Pangasinensisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pam
* ^expansion.contains[=].display = "Kapampangan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pan
* ^expansion.contains[=].display = "Panjabi, Pandschabi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pap
* ^expansion.contains[=].display = "Papiamentu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pau
* ^expansion.contains[=].display = "Palauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #per
* ^expansion.contains[=].display = "Persisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pol
* ^expansion.contains[=].display = "Polnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pon
* ^expansion.contains[=].display = "Pohnpeanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #por
* ^expansion.contains[=].display = "Portugiesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pus
* ^expansion.contains[=].display = "Paschtunisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #que
* ^expansion.contains[=].display = "Quechua"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #raj
* ^expansion.contains[=].display = "Rajasthani"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rap
* ^expansion.contains[=].display = "Rapanui"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rar
* ^expansion.contains[=].display = "Rarotonganisch, Māori der Cookinseln"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #roh
* ^expansion.contains[=].display = "Bündnerromanisch, Romanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rom
* ^expansion.contains[=].display = "Romani, Romanes"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rum
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #run
* ^expansion.contains[=].display = "Kirundi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rup
* ^expansion.contains[=].display = "Aromunisch, Makedoromanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rus
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sad
* ^expansion.contains[=].display = "Sandawe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sag
* ^expansion.contains[=].display = "Sango"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sah
* ^expansion.contains[=].display = "Jakutisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sas
* ^expansion.contains[=].display = "Sasak"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sat
* ^expansion.contains[=].display = "Santali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #scn
* ^expansion.contains[=].display = "Sizilianisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sco
* ^expansion.contains[=].display = "Scots"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sel
* ^expansion.contains[=].display = "Selkupisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #shn
* ^expansion.contains[=].display = "Shan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sid
* ^expansion.contains[=].display = "Sidama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sin
* ^expansion.contains[=].display = "Singhalesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #slo
* ^expansion.contains[=].display = "Slowakisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #slv
* ^expansion.contains[=].display = "Slowenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sma
* ^expansion.contains[=].display = "Südsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sme
* ^expansion.contains[=].display = "Nordsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smj
* ^expansion.contains[=].display = "Lulesamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smn
* ^expansion.contains[=].display = "Inarisamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smo
* ^expansion.contains[=].display = "Samoanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sms
* ^expansion.contains[=].display = "Skoltsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sna
* ^expansion.contains[=].display = "Shona"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #snd
* ^expansion.contains[=].display = "Sindhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #snk
* ^expansion.contains[=].display = "Soninke"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #som
* ^expansion.contains[=].display = "Somali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sot
* ^expansion.contains[=].display = "Sesotho, Süd-Sotho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #spa
* ^expansion.contains[=].display = "Spanisch, Kastilisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srd
* ^expansion.contains[=].display = "Sardisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srn
* ^expansion.contains[=].display = "Sranantongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srp
* ^expansion.contains[=].display = "Serbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srr
* ^expansion.contains[=].display = "Serer"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ssw
* ^expansion.contains[=].display = "Siswati"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #suk
* ^expansion.contains[=].display = "Sukuma"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sun
* ^expansion.contains[=].display = "Sundanesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sus
* ^expansion.contains[=].display = "Susu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #swa
* ^expansion.contains[=].display = "Swahili"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #swe
* ^expansion.contains[=].display = "Schwedisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #syr
* ^expansion.contains[=].display = "Nordost-Neuaramäisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tah
* ^expansion.contains[=].display = "Tahitianisch, Tahitisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tam
* ^expansion.contains[=].display = "Tamil"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tat
* ^expansion.contains[=].display = "Tatarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tel
* ^expansion.contains[=].display = "Telugu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tem
* ^expansion.contains[=].display = "Temne"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ter
* ^expansion.contains[=].display = "Terena"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tet
* ^expansion.contains[=].display = "Tetum"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tgk
* ^expansion.contains[=].display = "Tadschikisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tgl
* ^expansion.contains[=].display = "Tagalog"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tha
* ^expansion.contains[=].display = "Thai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tib
* ^expansion.contains[=].display = "Tibetisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tig
* ^expansion.contains[=].display = "Tigre"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tir
* ^expansion.contains[=].display = "Tigrinya"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tiv
* ^expansion.contains[=].display = "Tiv"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tkl
* ^expansion.contains[=].display = "Tokelauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tli
* ^expansion.contains[=].display = "Tlingit"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tmh
* ^expansion.contains[=].display = "Tuareg"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tog
* ^expansion.contains[=].display = "ChiTonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ton
* ^expansion.contains[=].display = "Tongaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tpi
* ^expansion.contains[=].display = "Tok Pisin, Neuguinea-Pidgin"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tsi
* ^expansion.contains[=].display = "Tsimshian"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tsn
* ^expansion.contains[=].display = "Setswana"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tso
* ^expansion.contains[=].display = "Xitsonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tuk
* ^expansion.contains[=].display = "Turkmenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tum
* ^expansion.contains[=].display = "Tumbuka"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tur
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tvl
* ^expansion.contains[=].display = "Tuvaluisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #twi
* ^expansion.contains[=].display = "Twi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tyv
* ^expansion.contains[=].display = "Tuwinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #udm
* ^expansion.contains[=].display = "Udmurtisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #uig
* ^expansion.contains[=].display = "Uigurisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ukr
* ^expansion.contains[=].display = "Ukrainisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #umb
* ^expansion.contains[=].display = "Umbundu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #urd
* ^expansion.contains[=].display = "Urdu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #uzb
* ^expansion.contains[=].display = "Usbekisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vai
* ^expansion.contains[=].display = "Vai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ven
* ^expansion.contains[=].display = "Tshivenda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vie
* ^expansion.contains[=].display = "Vietnamesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vot
* ^expansion.contains[=].display = "Wotisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wal
* ^expansion.contains[=].display = "Wolaytta"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #war
* ^expansion.contains[=].display = "Wáray-Wáray"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #was
* ^expansion.contains[=].display = "Washoe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wel
* ^expansion.contains[=].display = "Walisisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wln
* ^expansion.contains[=].display = "Wallonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wol
* ^expansion.contains[=].display = "Wolof"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #xal
* ^expansion.contains[=].display = "Kalmückisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #xho
* ^expansion.contains[=].display = "isiXhosa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yao
* ^expansion.contains[=].display = "Yao"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yap
* ^expansion.contains[=].display = "Yapesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yid
* ^expansion.contains[=].display = "Jiddisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yor
* ^expansion.contains[=].display = "Yoruba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zap
* ^expansion.contains[=].display = "Zapotekisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zen
* ^expansion.contains[=].display = "Zenaga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zgh
* ^expansion.contains[=].display = "Marokkanisches Tamazight"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zha
* ^expansion.contains[=].display = "Zhuang"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zul
* ^expansion.contains[=].display = "isiZulu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zun
* ^expansion.contains[=].display = "Zuñi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zza
* ^expansion.contains[=].display = "Zazaisch"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #12
* ^expansion.contains[=].display = "Gebärdensprache"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #98
* ^expansion.contains[=].display = "andere"
* ^expansion.contains[+].system = Canonical(SEU_UB_AuswaehlbareElternspracheErweiterungCS)
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: SEU_UB_UntersuchungsergebnisCS
Id: seu-ub-untersuchungsergebnis-cs
Title: "SEU_UB_Untersuchungsergebnis CodeSystem"
Description: "CodeSystem für die Angabe des Untersuchungsergebnisses."
* #in_ordnung "In Ordnung"
* #auffaellig "Auffällig"
* #grenzwertig "Grenzwertig"
* #unauffaellig "Unauffällig"
* #unbekannt "Unbekannt"

ValueSet: SEU_UB_UntersuchungsergebnisVS
Id: seu-ub-untersuchungsergebnis-vs
Title: "SEU_UB_Untersuchungsergebnis ValueSet"
Description: "ValueSet, das verschiedene Untersuchungsergebnisse enthält."
* include codes from system SEU_UB_UntersuchungsergebnisCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_UntersuchungsergebnisCS)
* ^expansion.contains[=].code = #in_ordnung
* ^expansion.contains[=].display = "In Ordnung"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisCS)
* ^expansion.contains[=].code = #auffaellig
* ^expansion.contains[=].display = "Auffällig"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisCS)
* ^expansion.contains[=].code = #grenzwertig
* ^expansion.contains[=].display = "Grenzwertig"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisCS)
* ^expansion.contains[=].code = #unauffaellig
* ^expansion.contains[=].display = "Unauffällig"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisCS)
* ^expansion.contains[=].code = #unbekannt
* ^expansion.contains[=].display = "Unbekannt"

CodeSystem: SEU_UB_BeeintraechtigungsartCS
Id: seu-ub-beeintraechtigungsart-cs
Title: "SEU_UB_Beeinträchtigungsart CodeSystem"
Description: "CodeSystem für die Angabe der Art der Beeinträchtigung."
* #K "Körperlich"
* #G "Geistig"
* #S "Seelisch"
* #M "Mehrfach"

ValueSet: SEU_UB_BeeintraechtigungsartVS
Id: seu-ub-beeintraechtigungsart-vs
Title: "SEU_UB_Beeinträchtigungsart ValueSet"
Description: "ValueSet, das verschiedene Beeinträchtigungsarten enthält."
* include codes from system SEU_UB_BeeintraechtigungsartCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_BeeintraechtigungsartCS)
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Körperlich"
* ^expansion.contains[+].system = Canonical(SEU_UB_BeeintraechtigungsartCS)
* ^expansion.contains[=].code = #G
* ^expansion.contains[=].display = "Geistig"
* ^expansion.contains[+].system = Canonical(SEU_UB_BeeintraechtigungsartCS)
* ^expansion.contains[=].code = #S
* ^expansion.contains[=].display = "Seelisch"
* ^expansion.contains[+].system = Canonical(SEU_UB_BeeintraechtigungsartCS)
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "Mehrfach"

CodeSystem: Kind_lebt_beiCS
Id: Kind_lebtCS
Title: "Kind_lebt_beiCS"
Description: "Kind_lebt_beiCS"
* #den_Eltern "den Eltern"
* #allein_erziehendem_Elternteil "allein erziehendem Elternteil"
* #anderswo "anderswo"
* #keine_Angabe "keine Angabe"

ValueSet: Kind_lebt_beiVS
Id: Kind_lebt_beiVS
Title: "Kind_lebt_beiVS"
Description: "Kind_lebt_beiVS"
* include codes from system Kind_lebt_beiCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Kind_lebt_beiCS)
* ^expansion.contains[=].code = #kein_MH
* ^expansion.contains[=].display = "kein MH"
* ^expansion.contains[0].system = Canonical(Kind_lebt_beiCS)
* ^expansion.contains[=].code = #einseitiger_MH
* ^expansion.contains[=].display = "einseitiger MH"
* ^expansion.contains[0].system = Canonical(Kind_lebt_beiCS)
* ^expansion.contains[=].code = #beidseitiger_MH
* ^expansion.contains[=].display = "beidseitiger MH"
* ^expansion.contains[0].system = Canonical(Kind_lebt_beiCS)
* ^expansion.contains[=].code = #keine_Angabe
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: BeruflicheAusbildungElternCS
Id: BeruflicheAusbildungElternCS
Title: "BeruflicheAusbildungElternCS"
Description: "BeruflicheAusbildungElternCS"
* #ohne_bzw._ohne_abgeschl._Berufsausbildung  "ohne bzw. ohne abgeschl. Berufsausbildung"
* #in_Ausbildung_Studium "in Ausbildung / Studium"
* #abgeschl._Berufsausbildung/Fachschulabschluss  "abgeschl. Berufsausbildung/Fachschulabschluss"
* #abgeschl.Studium "abgeschl. Studium (Uni, (Fach)Hochschule)"
* #keine_Angabe "keine Angabe"

ValueSet: BeruflicheAusbildungElternVS
Id: BeruflicheAusbildungElternVS
Title: "BeruflicheAusbildungElternVS"
Description: "BeruflicheAusbildungElternVS"
* include codes from system BeruflicheAusbildungElternCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternCS)
* ^expansion.contains[=].code = #ohne_bzw._ohne_abgeschl._Berufsausbildung
* ^expansion.contains[=].display = "ohne bzw. ohne abgeschl. Berufsausbildung"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternCS)
* ^expansion.contains[=].code = #in_Ausbildung_Studium
* ^expansion.contains[=].display = "in Ausbildung / Studium"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternCS)
* ^expansion.contains[=].code = #abgeschl._Berufsausbildung/Fachschulabschluss
* ^expansion.contains[=].display = "abgeschl. Berufsausbildung/Fachschulabschluss"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternCS)
* ^expansion.contains[=].code = #abgeschl.Studium 
* ^expansion.contains[=].display = "abgeschl. Studium (Uni, (Fach)Hochschule)"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternCS)
* ^expansion.contains[=].code = #keine_Angabe
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: TaeglicherKonsumElektronischerMedienCS
Id: TaeglicherKonsumElektronischerMedienCS
Title: "TaeglicherKonsumElektronischerMedienCS"
Description: "TaeglicherKonsumElektronischerMedienCS"
* #gar_nicht  "gar nicht"
* #max._1_Stunde "max. 1 Stunde"
* #max._2_Stunden "max. 2 Stunden"
* #max._3_Stunden "max. 3 Stunden"
* #ueber_3_Stunden  "über 3 Stunden"
* #keine_Angabe "keine Angabe"

ValueSet: TaeglicherKonsumElektronischerMedienVS
Id: TaeglicherKonsumElektronischerMedienVS
Title: "TaeglicherKonsumElektronischerMedienVS"
Description: "TaeglicherKonsumElektronischerMedienVS"
* include codes from system TaeglicherKonsumElektronischerMedienCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS)
* ^expansion.contains[=].code = #gar_nicht  
* ^expansion.contains[=].display = "gar nicht"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS)
* ^expansion.contains[=].code = #max._1_Stunde 
* ^expansion.contains[=].display = "max. 1 Stunde"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS) 
* ^expansion.contains[=].code = #max._2_Stunden 
* ^expansion.contains[=].display = "max. 2 Stunden"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS)
* ^expansion.contains[=].code = #max._3_Stunden 
* ^expansion.contains[=].display = "max. 3 Stunden"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS)
* ^expansion.contains[=].code = #ueber_3_Stunden  
* ^expansion.contains[=].display = "über 3 Stunden"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedienCS)
* ^expansion.contains[=].code = #keine_Angabe
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: ElektronischesGeraetKindCS
Id: ElektronischesGeraetKindCS
Title: "ElektronischesGeraetKindCS"
Description: "ElektronischesGeraetKindCS"
* #TV  "TV"
* #andere "andere"
* #kein_Geraet "kein Gerät"
* #keine_Angabe "keine Angabe"

ValueSet: ElektronischesGeraetKindVS
Id: ElektronischesGeraetKindVS
Title: "ElektronischesGeraetKindVS"
Description: "ElektronischesGeraetKindVS"
* include codes from system ElektronischesGeraetKindCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(ElektronischesGeraetKindCS)
* ^expansion.contains[=].code = #TV  
* ^expansion.contains[=].display = "TV"
* ^expansion.contains[0].system = Canonical(ElektronischesGeraetKindCS)
* ^expansion.contains[=].code = #andere 
* ^expansion.contains[=].display = "andere"
* ^expansion.contains[0].system = Canonical(ElektronischesGeraetKindCS)
* ^expansion.contains[=].code = #kein_Geraet
* ^expansion.contains[=].display = "kein Gerät"
* ^expansion.contains[0].system = Canonical(ElektronischesGeraetKindCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: Zaehneputzen_in_der_KitaCS
Id: Zaehneputzen_in_der_KitaCS
Title: "Zähneputzen_in_der_KitaCS"
Description: "Zähneputzen_in_der_KitaCS"
* #ja  "ja"
* #nein "nein"
* #nicht_sicher "nicht sicher"
* #keine_Angabe "keine Angabe"

ValueSet: Zaehneputzen_in_der_KitaVS
Id: Zaehneputzen_in_der_KitaVS
Title: "Zähneputzen_in_der_KitaVS"
Description: "Zähneputzen_in_der_KitaVS"
* include codes from system Zaehneputzen_in_der_KitaCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Zaehneputzen_in_der_KitaCS)
* ^expansion.contains[=].code = #ja  
* ^expansion.contains[=].display = "ja" 
* ^expansion.contains[0].system = Canonical(Zaehneputzen_in_der_KitaCS)
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[0].system = Canonical(Zaehneputzen_in_der_KitaCS)
* ^expansion.contains[=].code = #nicht_sicher 
* ^expansion.contains[=].display = "nicht sicher" 
* ^expansion.contains[0].system = Canonical(Zaehneputzen_in_der_KitaCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"