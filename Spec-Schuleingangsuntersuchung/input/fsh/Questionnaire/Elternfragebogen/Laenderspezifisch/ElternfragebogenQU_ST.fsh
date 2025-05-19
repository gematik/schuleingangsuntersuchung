Instance: Elternbefragung_ST
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung ST"
Description: "Elternbefragung ST"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindAlternativ3VS
* contained[+] = GenderDEVS
* contained[+] = ErwerbsstatusAlternativ1VS
* contained[+] = TagsNachtsSauberVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* contained[+] = GeburtsmodusVS
* contained[+] = FreiesLaufenGelerntVS
* contained[+] = SprechenGelerntVS
* contained[+] = KinderbetreuungVS
* contained[+] = KitaEintrittsalterVS
* contained[+] = RauchortVS
* contained[+] = AErztlichFestgestellteKrankheitenVS
* contained[+] = FruehereErkrankungenVS
* contained[+] = DerzeitigeErkrankungenVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = AllgemeineBeschwerdenVS
* contained[+] = KrankenhausaufenthaltGrundVS
* id = "SEU-Elternbefragung-ST"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungST"
* title = "SEU Elternfragebogen ST"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
    * required = true
  * item[+]
    * insert addItemWithSource(1.5a, #choice, [[Geburtsland Mutter]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.5b, #choice, [[Geburtsland Vater]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
    * required = true
  // The same like 1.5, but with a dependency from 1.6
  * item[+]
    * insert addItemWithSource(1.6.2, #choice, [[Geburtsland]], #DE-ST)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
    * required = true
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
    * required = true
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItemWithSource(1.11b, #string, [[Straße und Hausnummer]], #DE-ST)
    * required = true
  * item[+]
    * insert addItemWithSource(1.12c, #choice, [[Kind lebt hauptsächlich bei]], #DE-ST)
    * answerValueSet = Canonical(WohnsituationKindAlternativ3VS)
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
    * insert regEx([["^(\\+|0)(\\d|\\s)*\\d$"]])
    * required = true
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
    * required = true
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItemWithSource(3.1e, #integer, [[Anzahl der Geschwister (ohne einzuschulendes Kind)]], #DE-ST)
  * item[+]
    * insert addItemWithSource(3.1f, #integer, [[Im Haushalt lebende Kinder insgesamt (inklusive des einzuschulenden Kindes)]], #DE-ST)
  * item[+]
    * insert addItemWithSource(3.1g, #integer, [[…davon jünger als das einzuschulende Kind]], #DE-ST)
    * enableWhen[+]
      * question = "3.1f"
      * operator = #> 
      * answerInteger = 1
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItemWithSource(4.12, #choice, [[Betreuung des Kindes]], #DE-ST)
    * answerValueSet = Canonical(KinderbetreuungVS)
  * item[+]
    * insert addItemWithSource(4.13, #choice, [[Alter des Kindes bei Eintritt in Kita]], #DE-ST)
    * insert enableWhenCode(4.12, =, KinderbetreuungCS, kita_halbtags)
    * insert enableWhenCode(4.12, =, KinderbetreuungCS, kita_ganztags)
    * insert enableWhenCode(4.12, =, KinderbetreuungCS, kita_und_tagespflege)
    * enableBehavior = #any
    * answerValueSet = Canonical(KitaEintrittsalterVS)

//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
    * required = true
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
    * required = true
    * item[+]
      * insert enableWhenBoolean(5.6, =, true)
      * insert addItem(5.6.1, #string, [[Welche Auffälligkeit?]])
      * required = true
  * item[+]
    * insert addItemWithSource(5.9, #boolean, [[Mehrlingsgeburt]], #DE-BY)
    * required = true
  * item[+]
    * insert addItemWithSource(5.10a, #choice, [[Geburtsmodus]], #DE-ST)
    * answerValueSet = Canonical(GeburtsmodusVS)
    * required = true

//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItemWithSource(7.3b, #choice, [[Allein laufen gelernt]], #DE-ST)
    * answerValueSet = Canonical(FreiesLaufenGelerntVS)
    * required = true
  * item[+]
    * insert addItemWithSource(7.5b, #choice, [[Sprechen gelernt (mind. 2-Wort-Sätze, ca. 50 Wörter)]], #DE-ST)
    * answerValueSet = Canonical(SprechenGelerntVS)
    * required = true
  * item[+]
    * insert addItemWithSource(7.6b, #choice, [[Tags und nachts sauber]], #DE-ST)
    * answerValueSet = Canonical(TagsNachtsSauberVS)
    * required = true

//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * required = true
    * item[+]
      * insert addItemWithSource(8.15.2, #integer, [[Wie oft wurde das Kind im Krankenhaus aufgenommen?]], #DE-ST)
      * insert enableWhenBoolean(8.15, =, true)
      * required = true
    * item[+]
      * insert addItem(8.15.3a, #choice, [[Grund des/der Krankenhausaufenthalt/e?]])
      * insert enableWhenBoolean(8.15, =, true)
      * answerValueSet = Canonical(KrankenhausaufenthaltGrundVS)
      * repeats = true
      * required = true
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * required = true
    * item[+]
      * insert addItem(8.16a.1, #string, [[Welche sonstigen Allergien?]])  
      * insert enableWhenCode(8.16a, =, AtopischeErkrankungenCS, sonstiges)
      * required = true
  * item[+]
    * insert addItemWithSource(8.16c, #choice, [[Ärztlich festgestellte Krankheiten]], #DE-ST)
    * answerValueSet = Canonical(AErztlichFestgestellteKrankheitenVS)
    * repeats = true
    * required = true
  * item[+]
    * insert addItemWithSource(8.16d, #choice, [[Frühere Erkrankungen]], #DE-ST)
    * answerValueSet = Canonical(FruehereErkrankungenVS)
    * repeats = true
    * required = true
    * item[+]
      * insert addItemWithSource(8.16d.1, #string, [[Welche sonstige früheren Erkrankungen?]], #DE-ST)
      * insert enableWhenCode(8.16d, =, FruehereErkrankungenCS, sonstige_welche)
      * required = true
  * item[+]
    * insert addItemWithSource(8.16e, #choice, [[Derzeitige Erkrankungen]], #DE-ST)
    * answerValueSet = Canonical(DerzeitigeErkrankungenVS)
    * repeats = true
    * required = true
    * item[+]
      * insert addItemWithSource(8.16e.1, #string, [[Welche sonstigen derzeitigen Erkrankungen?]], #DE-ST)
      * insert enableWhenCode(8.16e, =, DerzeitigeErkrankungenCS, sonstige_welche)
      * required = true
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
    * required = true
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
    * required = true
  * item[+]
    * insert addItemWithSource(8.26b, #text, [[Sonstige gesundheitliche Probleme, die hinsichtlich der Einschulung besprochen werden sollen]], #DE-ST)
  * item[+]
    * insert addItemWithSource(8.27a, #boolean, [[Ambulante Operation(en)]], #DE-ST)
    * required = true
  * item[+]
    * insert addItem(8.29, #choice, [[Hat Ihr Kind häufiger Befindlichkeitsstörungen?]])
    * repeats = true 
    * answerValueSet = Canonical(AllgemeineBeschwerdenVS)
    * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)]], #DE-SL)    
    * required = true
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItemWithSource(9.3b, #choice, [[Ambulante Frühförderung]], #DE-ST)
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.4, #choice, [[Ergotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.6, #choice, [[Physiotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.9, #choice, [[Integrative Betreuung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.10, #string, [[Sonstige Förderung]])
      * required = true

//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.1b, #choice, Schulabschluss 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.2b, #choice, Schulabschluss 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.32a, #choice, [[Erwerbstätigkeit Mutter/ Partner]], #DE-ST)
    * answerValueSet = Canonical(ErwerbsstatusAlternativ1VS)
  * item[+]
    * insert addItemWithSource(13.33a, #choice, [[Erwerbstätigkeit Vater/ Partner]], #DE-ST)
    * answerValueSet = Canonical(ErwerbsstatusAlternativ1VS)
  * item[+]
    * insert addItemWithSource(13.38, #boolean, [[Rauchen im Haushalt]], #DE-ST)
  * item[+]
    * insert addItemWithSource(13.39, #choice, [[Ort des Rauchens]], #DE-ST)
    * insert enableWhenBoolean(13.38, =, true)
    * answerValueSet = Canonical(RauchortVS)
