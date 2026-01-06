Instance: SorgeberechtigtenfragebogenBY
InstanceOf: Questionnaire
Usage: #example
Title: "SorgeberechtigtenfragebogenBY"
Description: "SorgeberechtigtenfragebogenBY"
* contained[+] = SEU_EF_NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = SEU_UB_TeilnahmeVorkursDeutschVS
* contained[+] = SEU_UB_AuswaehlbareElternspracheVS
* contained[+] = SEU_UB_KindergartenArtVS
* contained[+] = SEU_UB_GesprocheneSpracheVS
* contained[+] = SEU_UB_AntwortAugenarztVS
* contained[+] = SEU_UB_JaNeinKeineAngabeVS
* contained[+] = SEU_UB_ErwerbstaetigkeitVS
* contained[+] = SEU_UB_SchulabschlussVS
* contained[+] = SEU_UB_StaatsangehoerigkeitVS
* contained[+] = SEU_UB_GeburtslandVS
* contained[+] = SEU_UB_AntwortErwachseneVS
* contained[+] = SEU_UB_AntwortKindergartenBesuchVS
* contained[+] = SEU_UB_KontaktDeutscheSpracheVS
* contained[+] = SEU_UB_HaendigkeitVS
* id = "SEU-Sorgeberechtigtenfragebogen-BY"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenBY"
* title = "SEU Elternfragebogen BY"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Sorgeberechtigtenfragebogen)
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItem(1.4, #choice, Staatsangehörigkeit)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  //TODO: initial expression
  * item[+]
    * insert addItem(1.5, #choice, [[Geburtsland]])
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+] insert addItemWithSource(1.5c, #choice, [[Elternsprache  1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
  * item[+] insert addItemWithSource(1.5c.1, #string, [[Elternsprache 1 andere]], #DE-BY)
    * insert enableWhenCode(1.5c, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
  * item[+] insert addItemWithSource(1.5d, #choice, [[Elternsprache  2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
  * item[+] insert addItemWithSource(1.5d.1, #string, [[Elternsprache 2 andere]], #DE-BY)
    * insert enableWhenCode(1.5d, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(2.4, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
  * item[+]
    * insert addItem(2.6, #string, Straße)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
    * insert regEx([["^(\\+|0)(\\d|\\s)*\\d$"]])
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItemWithSource(3.2a, #group, [[Gibt es in der Familie (Eltern, Geschwister)]], #DE-BY)
    * item[+]
      * insert addItemWithSource(3.2a.2, #boolean, [[► eine Lese-Rechtschreib-Schwäche (Legasthenie)]], #DE-BY)
    * item[+]
      * insert addItemWithSource(3.2a.3, #boolean, [[► eine Rechenschwäche (Dyskalkulie)]], #DE-BY)
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItemWithSource(4.0b.b, #boolean, [[Besucht Ihr Kind derzeit einen Kindergarten?]], #DE-BY)
  * item[+]
    * insert addItemWithSource(4.1z, #choice, [[Dauer Krippen-/ KITA-/ Kindergartenbesuch (in Jahren)]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortKindergartenBesuchVS)
  * item[+] insert addItemWithSource(4.5b, #choice, [[Art des Kindergartens]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_KindergartenArtVS)

//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.1, #integer, [[Dauer der Schwangerschaft (in Wochen)]])
    * insert uunit(wk, "Wochen")
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
  * item[+]
    * insert addItemWithSource(5.9, #boolean, [[Mehrlingsgeburt]], #DE-BY)

//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+] insert addItemWithSource(6.1d, #boolean, [[Kind wächst mehrsprachig auf]], #DE-BY)
  * item[+] insert addItemWithSource(6.1e, #choice, [[Zu Hause gesprochene Sprache(n)]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_GesprocheneSpracheVS)
  * item[+] insert addItemWithSource(6.1f, #string, [[Zu Hause gesprochene Sprache(n) andere]], #DE-BY)
    * insert enableWhenCode(6.1e, =, SEU_UB_GesprocheneSpracheCS, 2)
    * insert enableWhenCode(6.1e, =, SEU_UB_GesprocheneSpracheCS, 8)
    * enableBehavior = #any
  * item[+]
    * insert addItem(6.5, #boolean, [[Kontakt zu Deutschsprechenden seit Geburt?]])
  * item[+] insert addItemWithSource(6.5a, #choice, [[Kontakt mit der deutschen Sprache]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_KontaktDeutscheSpracheVS)
  * item[+] insert addItemWithSource(6.5a.g, #group, [[Kontakt mit der deutschen Sprache]], #DE-BY)
    * insert enableWhenCode(6.5a, =, SEU_UB_KontaktDeutscheSpracheCS, 2)
    * item[+] insert addItemWithSource(6.5a.g.1, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Jahren)]], #DE-BY)
      * insert uunit(a, "Jahre")
    * item[+] insert addItemWithSource(6.5a.g.2, #integer, [[Kontakt mit der deutschen Sprache ab welchem Alter (in Monaten)]], #DE-BY)
      * insert uunit(mo, "Monate")
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+] insert addItemWithSource(7.9a, #choice, [[Händigkeit]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_HaendigkeitVS)
  * item[+]
    * insert addItemWithSource(7.11b, #boolean, [[Würden Sie sagen, dass Ihr Kind insgesamt gesehen in einem oder mehreren der folgenden Bereiche Schwierigkeiten hat: Stimmung (bedrückt, ängstlich, schwankend, aufbrausend), Konzentration (kann nicht lange stillsitzen, hört beim Vorlesen nicht ausdauernd zu), Verhalten, Umgang mit Anderen?]], #DE-BY)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+] insert addItemWithSource(8.7a, #boolean, [[Augenarztbesuch]], #DE-BY)
  * item[+] insert addItemWithSource(8.7b, #choice, [[Feststellung / Veranlassung Augenarzt]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortAugenarztVS)
    * insert enableWhenBoolean(8.7a, =, true)
  * item[+] insert addItemWithSource(8.7c, #choice, [[Besuch beim Zahnarzt in letzten 12 Monaten]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
  * item[+]
    * insert addItemWithSource(8.9a, #choice, [[Angeborene schwere Hörstörung]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
  * item[+] insert addItemWithSource(8.9a.g, #group, [[Zusatzangaben zur Hörstörung]], #DE-BY)
    * insert enableWhenCode(8.9a, =, SEU_UB_JaNeinGeplantKeineAngabeCS, 1)
    * item[+] insert addItemWithSource(8.9a.g.1, #choice, [[Angeborene Hörstörung]], #DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItemWithSource(8.9a.g.2, #choice, [[mit Hörgerät versorgt]], #DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItemWithSource(8.9a.g.3, #choice, [[mit Cochlea-Implant versorgt]], #DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenHoerstoerungVS)
    * item[+] insert addItemWithSource(8.9a.g.4, #boolean, [[Elterneinwilligung mitgegeben (Hören)]], #DE-BY)
  * item[+] insert addItemWithSource(8.10ga, #boolean, [[Stoffwechselerkrankung oder Hormonstörung (nur ärztl. diag. Befunde angeben)]], #DE-BY)
  * item[+] insert addItemWithSource(8.10ga_g, #group, [[Zusatzangaben zu Stoffwechselstörungen]], #DE-BY)
    * insert enableWhenBoolean(8.10ga, =, true)
    * item[+] insert addItemWithSource(8.10ga_g.1, #boolean, [[MCAD-Mangel (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.2, #boolean, [[Hypothyreose (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.3, #boolean, [[Phenylketonurie (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.4, #boolean, [[AGS (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.5, #boolean, [[Mukoviszidose (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.6, #boolean, [[Diabetes mellitus (Typ 1) (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.7, #boolean, [[Diabetes mellitus (Typ 2) (nur ärztlich diag. Befunde angeben)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.8, #boolean, [[sonstige Stoffwechselerkrankungen (nur ärztlich diag. Befunde)]], #DE-BY)
    * item[+] insert addItemWithSource(8.10ga_g.9, #string, [[wenn ja, welche (nur ärztlich diag. Befunde)]], #DE-BY)
      * insert enableWhenBoolean(8.10ga_g.8, =, true)
    * item[+] insert addItemWithSource(8.10ga_g.10, #integer, [[Alter bei Diagnosestellung (in Jahren)]], #DE-BY)
      * insert uunit(a, "Jahre")
      * insert enableWhenBoolean(8.10ga_g.1, =, true)
      * insert enableWhenBoolean(8.10ga_g.2, =, true)
      * insert enableWhenBoolean(8.10ga_g.3, =, true)
      * insert enableWhenBoolean(8.10ga_g.4, =, true)
      * insert enableWhenBoolean(8.10ga_g.5, =, true)
      * insert enableWhenBoolean(8.10ga_g.6, =, true)
      * insert enableWhenBoolean(8.10ga_g.7, =, true)
      * insert enableWhenBoolean(8.10ga_g.8, =, true)
      * enableBehavior = #any
      * item[+] insert helpItem(8.10ga_g.10H, [[Wurde mehr als 1 Erkrankung mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben.]])
    * item[+] insert addItemWithSource(8.10ga_g.11, #integer, [[Alter bei Diagnosestellung (in Monaten)]], #DE-BY)
      * insert uunit(mo, "Monate")
      * insert enableWhenBoolean(8.10ga_g.1, =, true)
      * insert enableWhenBoolean(8.10ga_g.2, =, true)
      * insert enableWhenBoolean(8.10ga_g.3, =, true)
      * insert enableWhenBoolean(8.10ga_g.4, =, true)
      * insert enableWhenBoolean(8.10ga_g.5, =, true)
      * insert enableWhenBoolean(8.10ga_g.6, =, true)
      * insert enableWhenBoolean(8.10ga_g.7, =, true)
      * insert enableWhenBoolean(8.10ga_g.8, =, true)
      * enableBehavior = #any
      * item[+] insert helpItem(8.10ga_g.11H, [[Wurde mehr als 1 Erkrankung mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben.]])
  * item[+]
    * insert addItem(8.14, #boolean, [[Chronische Erkrankung vorhanden]])
    * item[+]
      * insert addItem(8.14.1, #string, [[Welche Erkrankung?]])
      * insert enableWhenBoolean(8.14, =, true)
      * repeats = true 
  * item[+]
    * insert addItem(8.21, #boolean, [[Schwere Behinderung vorhanden?]])
  * item[+]
    * insert addGroup(8.21.g, [[Details Behinderung]])
    * insert enableWhenBoolean(8.21, =, true)
    * item[+]
      * insert addItem(8.21.g.1, #text, [[Welche Behinderung]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
  * item[+]
    * insert addItem(8.25, #boolean, [[Eine Erkrankung, die in einer Notfallsituation beachtet werden muss]])
  * item[+]
    * insert enableWhenBoolean(8.25, =, true)
    * insert addItem(8.25.1, #text, [[Welche Erkrankung]])
    * repeats = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1b, #choice, [[Teilnahme am Vorkurs Deutsch]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_TeilnahmeVorkursDeutschVS)
  * item[+]
    * insert addItemWithSource(9.1c, #choice, [[Sprachtherapie (Logopädie)]], #DE-BY)
    * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.8b, #choice, [[Anzahl Erwachsene im Haushalt]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortErwachseneVS)
  * item[+] insert addItemWithSource(13.21, #choice, [[Geburtsland Elternteil 1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_GeburtslandVS)
  * item[+] insert addItemWithSource(13.22, #choice, [[Geburtsland Elternteil 2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_GeburtslandVS)
  * item[+] insert addItemWithSource(13.23, #choice, [[Staatsangehörigkeit Elternteil 1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_StaatsangehoerigkeitVS)
  * item[+] insert addItemWithSource(13.24, #choice, [[Staatsangehörigkeit Elternteil 2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_StaatsangehoerigkeitVS)
  * item[+] insert addItemWithSource(13.25, #choice, [[Höchster Schulabschluss Elternteil 1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_SchulabschlussVS)
  * item[+] insert addItemWithSource(13.27, #choice, [[Höchster Schulabschluss Elternteil 2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_SchulabschlussVS)
  * item[+] insert addItemWithSource(13.28, #choice, [[Erwerbstätigkeit Elternteil 1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_ErwerbstaetigkeitVS)
  * item[+] insert addItemWithSource(13.29, #choice, [[Erwerbstätigkeit Elternteil 2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_ErwerbstaetigkeitVS)
