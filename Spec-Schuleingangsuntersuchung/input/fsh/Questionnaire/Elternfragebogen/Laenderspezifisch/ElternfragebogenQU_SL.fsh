Instance: ElternbefragungSL
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung SL"
Description: "Elternbefragung SL"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindVS  // TODO: Unused?
* contained[+] = WohnsituationKindAlternativ1VS // TODO: Unused?
* contained[+] = WohnsituationKindAlternativ2VS
* contained[+] = GenderDEVS
* contained[+] = ISO6392_LanguageVS
* contained[+] = ChronischeErkrankungenVS
* contained[+] = JaNeinAngemeldetVS
* contained[+] = RechtsLinksHaenderVS
* contained[+] = AuffaelligkeitVerhaltenVS
* contained[+] = LinksRechtsBeidseitsKeineAngabeVS
* contained[+] = StoffwechselstoerungVS
* contained[+] = ErkrankungVS
* contained[+] = InfektionsKrankheitVS
* contained[+] = ErkrankungenLetztesJahrVS
* contained[+] = PflegegradVS
* contained[+] = UnfallOrtVS
* contained[+] = UnfallArtVS
* contained[+] = GeplantFindetStattAbgeschlossenVS
* contained[+] = HaeufigkeitAuswahlVS
* contained[+] = SEU_EF_BildungsabschlussVS
* contained[+] = SEU_EF_BerufsbildungVS
* contained[+] = ErwerbsstatusVS
* contained[+] = FamilienrolleVS
* contained[+] = VersorgungsartVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = UeberwiegendGesprocheneSpracheVS
* contained[+] = EntwicklungVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = AllgemeineBeschwerdenVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_MedienkonsumVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_UnfallVS
* contained[+] = SEU_EF_AlterKindVS
* contained[+] = SEU_EF_SchwangerschaftVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_BehandlungstypVS
* contained[+] = SEU_EF_DauerBWVS
* contained[+] = SEU_EF_HilfsmittelVS
* contained[+] = SEU_EF_FachaerzteVS
* contained[+] = SEU_EF_DauerBBVS
* contained[+] = SEU_EF_SpracheVS
* contained[+] = SEU_EF_FrequenzVS
* contained[+] = SEU_EF_BildungsabschlussBBVS
* id = "SEU-Elternbefragung-SL"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungSL"
* title = "SEU Elternfragebogen SL"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
    * required = true
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
    * required = true
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
    * insert addItem(1.4, #choice, Staatsangehörigkeit)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
    //TODO: initial expression
  * item[+]
    * insert addItem(1.5, #choice, Geburtsland)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
    * required = true
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.6, =, false)
    * required = true
  * item[+]
    * insert addItemWithSource(1.6.1a, #choice, Wie alt war das Kind bei Einreise nach Deutschland?, #DE-SL)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(SEU_EF_AlterKindVS)
    * required = true
  * item[+]
    * insert addItem(1.7, #string, Geburtsort)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
    * required = true
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * required = true
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItem(1.11, #string, Straße)
    * required = true
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
    * required = true
  * item[+]
    * insert addItemWithSource(1.12a, #choice, Kind lebt hauptsächlich bei, #DE-BB)
    * answerValueSet = Canonical(WohnsituationKindAlternativ2VS)
    * required = true
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * insert addItem(2.1, #choice, Geschlecht)
    * required = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(2.4, #string, PLZ)
    * required = true
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItem(2.6, #string, Straße)
    * required = true
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
  * item[+]
    * insert addItem(2.8, #string, Email)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
    * required = true
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.10, #choice, Herkunftsland)
    * required = true
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(2.11, #choice, Muttersprache)
    * required = true
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
    * required = true
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
    * required = true
  * item[+]
    * insert addItemWithSource(3.1a, #integer, Anzahl der im Familienverbund lebenden Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
    * required = true
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * required = true
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.1, #boolean, Brillenträger)
      * required = true
    * item[+]
      * insert addItem(3.2.2, #boolean, Lese/Rechtschreibschwäche)
      * required = true
    * item[+]
      * insert addItem(3.2.3, #boolean, Rechenschwäche)
      * required = true
    * item[+]
      * insert addItem(3.2.4, #choice, Erkrankung)
      * answerValueSet = Canonical(ChronischeErkrankungenVS)
      * repeats = true
    * item[+]
      * insert addItem(3.2.5, #choice, Chronische Erkrankung)
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * repeats = true
      * item[+]
        * insert enableWhenCode(3.2.5, =, ChronischeKrankheiten, sonstiges)
        * insert addItem(3.2.5.1, #string, [[Welche sonstige(n) chronischen Erkrankung(en)?]])
    * item[+]
      * insert addItemWithSource(3.2.6a, #boolean, [[Liegt bei Ihrem Kind ein Grad der Behinderung/ein Pflegegrad vor?]], #DE-SL)
      * required = true
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
    * required = true
  * item[+]
    * insert addItemWithSource(4.1a, #choice, Wie alt war das Kind bei der Aufnahme in die KiTa?, #DE-SL)
    * answerValueSet = Canonical(SEU_EF_AlterKindVS)
    * required = true
  * item[+]
    * insert addItemWithSource(4.1b, #choice, Wie lange besucht Ihr Kind bis jetzt eine Kindertageseinrichtung?, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_DauerBWVS)
    * required = true
  * item[+]
    * insert addItemWithSource(4.1c, #choice, [[Dauer Kindertagebetreuung in Jahren]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_DauerBBVS)
    * required = true
  * item[+]
    * insert addItem(4.6, #boolean, Besucht Ihr Kind eine Kita in einem anderen Bundesland?)
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItemWithSource(5.1.a, #integer, [[Dauer der Schwangerschaft (in Wochen)]], #DE-SL)
    * insert uunit(wk, "Wochen")
    * insert minValueInt(22)
    * insert maxValueInt(43)
    * required = true
  * item[+]
    * insert addItemWithSource(5.2.a, #integer, [[Geburtsgewicht (in Gramm)]], #DE-SL)
    * insert uunit(g, "Gramm")
    * insert minValueInt(360)
    * insert maxValueInt(6500)    
    * required = true
  * item[+]
    * insert addItemWithSource(5.6a, #choice, [[Schwangerschaftsverlauf]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_SchwangerschaftVS)
    * required = true
  * item[+]
    * insert addItemWithSource(5.8, #boolean, [[Stillen / mit Muttermilch ernährt]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(5.8.1, #integer, [[Stillzeit in Monaten]], #DE-SL)
    * insert enableWhenBoolean(5.8, =, true)
    * insert uunit(mo, "Monate")
    * insert minValueInt(0)
    * insert maxValueInt(24)
    * required = true
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * insert addItemWithSource(6.1b, #choice, [[1. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * required = true
  * item[+]
    * insert addItemWithSource(6.1c, #choice, [[2. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * required = true
  * item[+]
    * answerValueSet = Canonical(JaNeinAngemeldetVS)
    * insert addItem(6.3, #choice, [[Teilnahme des Kindes an einem Deutschkurs]])
    * required = true
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItemWithSource(7.3a, #boolean, [[Freies Laufen (bis 15 Monate)]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(7.4a, #boolean, [[Erste Worte bis 1 Jahr]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(7.5a, #boolean, [[Kleine Sätze bis 2 Jahre]], #DE-SL)
    * required = true
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
    * required = true
  * item[+]
    * insert addItemWithSource(8.2a, #choice, [[Welche Behandlung? (Mehrfachnennung möglich)]], #DE-SL)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_BehandlungstypVS)
    * required = true
  * item[+]
    * insert addItem(8.4, #boolean, [[Sprachstörung vorhanden?]])
    * required = true
    * item[+]
      * insert addItemWithSource(8.4.1a, #choice, [[Störung in der Sprachentwicklung]], #DE-SL)
      * insert enableWhenBoolean(8.4, =, true)
      * answerValueSet = Canonical(SEU_EF_SpracheVS)
      * required = true
  * item[+]
    * insert addItem(8.12.g, #group, [[Infektionskrankheiten]])
    * repeats = true
    * required = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * insert addItem(8.12.g.1, #open-choice, [[Infektionskrankheit]])
      * required = true
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * required = true
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
      * required = true
  * item[+]
    * insert addItem(8.19, #integer, [[Grad der Behinderung]])
    * required = true
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * insert addItem(8.20, #choice, [[Pflegegrad]])
    * required = true
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
    * required = true
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde ihr Kind operiert]])
    * required = true
    * item[+]
      * insert addItem(8.27.2, #choice, [[Welche Operationen wurden durchgeführt?]])
      * repeats = true
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(SEU_EF_OperationenVS)
      * item[+]
        * insert addItemWithSource(8.27.2.1, #string, [[Sonstige Operationen?]], #DE-SL)
        * insert enableWhenCode(8.27.2, =, SEU_EF_OperationenCS, sonstige_operation)
  * item[+]
    * insert addItem(8.28a, #boolean, [[Hatte ihr Kind einen Unfall]])
    * required = true
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte ihr Kind einen Unfall]])
    * insert enableWhenBoolean(8.28a, =, true)
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * insert addItem(8.28.g.2, #choice, [[Art des Unfalls]])
      * required = true
    * item[+]
      * insert addItemWithSource(8.28.g.3, #choice, [[Anlass des Unfalls]], #DE-SL)
      * answerValueSet = Canonical(SEU_EF_UnfallVS)
      * required = true
  * item[+]
    * insert addItemWithSource(8.30, #boolean, [[Wurde Ihr Kind jemals aufgrund von Unfallverletzungen von einem Arzt behandelt??]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.31, #boolean, [[Einnässen tags]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.32, #boolean, [[Einnässen nachts]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.33, #boolean, [[Einkoten tags]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.34, #boolean, [[Einkoten nachts]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.35, #boolean, [[Erkrankungen Tuberkuloseerkrankung]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.36, #boolean, [[Erkrankungen Meningitis/Enceph.]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.37, #boolean, [[Erkrankungen Pneumonien]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.38, #boolean, [[Erkrankungen Pseudocroup]], #DE-SL)
    * required = true
  * item[+]
    * required = true
    * insert addItemWithSource(8.39, #boolean, [[Erkrankungen Fieberkrampf/Krampsanfall]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.40, #boolean, [[Erkrankungen Harnwegserkrankungen]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.41, #boolean, [[Erkrankungen rez Otitis media]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.42, #boolean, [[Erkrankungen Allergie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.42a, #boolean, [[Erkrankungen Neurodermitis]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.43, #boolean, [[Erkrankungen Sonstige]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.44, #boolean, [[Operationen Adenotomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.45, #boolean, [[Operationen Tonsillen-OP]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.46, #boolean, [[Operationen Herniotomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.47, #boolean, [[Operationen Appendektomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.48, #boolean, [[Operationen Circumcision]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.49, #boolean, [[Operationen Orchidopexie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.50, #boolean, [[Operationen Augenoperation]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.51, #boolean, [[Operationen Sonstige OP]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.52, #choice, [[Unfälle Verbrennung/Verbrühung]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.53, #choice, [[Unfälle Intoxikation]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.54, #choice, [[Unfälle Knochenbrücke/Weichteilverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.55, #choice, [[Unfälle Schwere Kopfverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.56, #choice, [[Unfälle Sonstige]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.57, #boolean, [[Reg. Med. Antikonvulsiva]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.58, #boolean, [[Reg. Med. Antiasthmatika/Antiallergika]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.59, #boolean, [[Reg. Med. Psychopharmaka]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.60, #boolean, [[Reg. Med. Cardiaca/Kreislaufpräparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.61, #boolean, [[Reg. Med. Jodid oder Thyroxin]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.62, #boolean, [[Reg. Med. Dermatologische Präparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.63, #boolean, [[Reg. Med. Homöopathische Präparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.64, #boolean, [[Reg. Med. Sonstige]], #DE-SL)
    * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)?]], #DE-SL)    
    * required = true
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItemWithSource(9.11, #boolean, [[Fördermaßn. Integration in Regel-KiTa]], #DE-SL)
      * required = true
    * item[+]
      * insert addItemWithSource(9.12, #boolean, [[Fördermaßn. FörderKiTa/Integrative KiTa]], #DE-SL)
      * required = true
    * item[+]
      * insert addItemWithSource(9.13, #boolean, [[Fördermaßn. Vorschul. Päd. Sprachförderung]], #DE-SL)
      * required = true
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItem(12.7, #boolean, Regelmäßig Sport)
    * required = true
  * item[+]
    * insert addItemWithSource(12.7a, #boolean, [[Präv. Maßnahmen Regemäßig Sport im Verein]], #DE-SL)
    * required = true
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItem(13.1, #choice, Schulabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
    * required = true
  * item[+]
    * insert addItem(13.2, #choice, Schulabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
    * required = true
  * item[+]
    * insert addItem(13.3, #choice, Berufsabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
    * required = true
  * item[+]
    * insert addItem(13.4, #choice, Berufsabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
    * required = true
