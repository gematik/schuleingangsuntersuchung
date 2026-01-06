Instance: ElternbefragungBB
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung BB"
Description: "Elternbefragung BB"
* contained[+] = SEU_EF_NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindVS  // TODO: Unused?
* contained[+] = WohnsituationKindAlternativ1VS  // TODO: Unused?
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
* contained[+] = SEU_EF_HilfsmittelVS
* contained[+] = SEU_EF_FachaerzteVS
* contained[+] = SEU_EF_DauerBBVS
* contained[+] = SEU_EF_SpracheVS
* contained[+] = SEU_EF_FrequenzVS
* contained[+] = SEU_EF_DauerHEVS
* contained[+] = icd10gm-2024
* contained[+] = SEU_EF_BildungsabschlussBBVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* contained[+] = SEU-UB-StaatsangehoerigkeitVS
* contained[+] = DauerStillenVS
* contained[+] = SEU_EF_ZeitdauerVS
* id = "SEU-Elternbefragung-BB"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungBB"
* title = "SEU Elternfragebogen BB"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Elternbefragung)
//********************************************
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
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
    * insert addItemWithSource(1.4a, #choice, [[Staatsangehörigkeit]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
  * item[+]
    * insert addItemWithSource(1.4a.1, #choice, [[Staatsangehörigkeit andere]], #DE-BB)
    * insert enableWhenCode(1.4a, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4a, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.4b, #choice, [[Staatsangehörigkeit Mutter]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
  * item[+]
    * insert addItemWithSource(1.4b.1, #choice, [[Staatsangehörigkeit Mutter andere]], #DE-BB)
    * insert enableWhenCode(1.4b, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4b, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.4c, #choice, [[Staatsangehörigkeit Vater]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
  * item[+]
    * insert addItemWithSource(1.4c.1, #choice, [[Staatsangehörigkeit Vater andere]], #DE-BB)
    * insert enableWhenCode(1.4c, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4c, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItem(1.5, #choice, [[Geburtsland]])
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.5a, #choice, [[Geburtsland Mutter]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.5b, #choice, [[Geburtsland Vater]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.12a, #choice, [[Kind lebt hauptsächlich bei]], #DE-BB)
    * answerValueSet = Canonical(WohnsituationKindAlternativ2VS)
  * item[+]
    * insert addItemWithSource(1.12a.1, #string, [[Kind lebt hauptsächlich bei anderen]], #DE-BB)
    * insert enableWhenCode(1.12a, =, WohnsituationKindCS, andere_familienmitglieder)
    * insert enableWhenCode(1.12a, =, WohnsituationKindCS, andere)
    * enableBehavior = #any
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItemWithSource(4.1c, #choice, [[Dauer Kindertagesbetreuung in Jahren]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_DauerBBVS)
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItemWithSource(5.7a, #choice, [[Ausschließliches Stillen]], #DE-BB)
    * answerValueSet = Canonical(DauerStillenVS)
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(6.1, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
    * repeats = true
  * item[+]
    * insert addItemWithSource(6.1b, #choice, [[1. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+]
    * insert addItemWithSource(6.1c, #choice, [[2. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.11, #open-choice, [[Auffälligkeit des Verhaltens]])
    * repeats = true
    * answerValueSet = Canonical(AuffaelligkeitVerhaltenVS)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
  * item[+]
    * insert addItemWithSource(8.2c, #choice, [[Chronische Erkrankung, Fachrichtung]], #DE-BB)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_FachaerzteVS)
  * item[+]
    * insert addItemWithSource(8.2c.1, #string, [[Chronische Erkrankung, Andere:]], #DE-BB)
    * insert enableWhenCode(8.2c, =, SEU_EF_FachaerzteCS, andere)
  * item[+]
    * insert addItemWithSource(8.6a, #choice, [[Hilfsmittel?]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_HilfsmittelVS)
    * repeats = true
  * item[+]
    * insert addItem(8.11.g, #group, [[Erkrankungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungVS)
      * insert addItem(8.11.g.1, #open-choice, [[Erkrankung]])
    * item[+]        
      * insert addItem(8.11.g.3, #boolean, [[Durch Ärzt:in festgestellt]])
  * item[+]
    * insert addItem(8.12.g, #group, [[Infektionskrankheiten]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * insert addItem(8.12.g.1, #open-choice, [[Infektionskrankheit]])
  * item[+]
    * insert addItem(8.13.g, #group, [[Erkrankungen im letzten Jahr]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungenLetztesJahrVS)
      * insert addItem(8.13.g.1, #open-choice, [[Erkrankung]])
  * item[+]
    * insert addItem(8.18, #boolean, [[Behindertenausweis vorhanden]])
  * item[+]
    * insert addItem(8.19, #integer, [[Grad der Behinderung]])
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * insert addItem(8.20, #choice, [[Pflegegrad]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde Ihr Kind operiert]])
  * item[+]
    * insert addItem(8.28a, #boolean, [[Hatte Ihr Kind einen Unfall]])
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte Ihr Kind einen Unfall]])
    * insert enableWhenBoolean(8.28a, =, true)
    * insert enableWhenBoolean(8.28b, =, true)
    * enableBehavior = #any
    * item[+]
      * answerValueSet = Canonical(UnfallOrtVS)
      * insert addItem(8.28.g.1, #choice, [[Ort des Unfall]])
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * insert addItem(8.28.g.2, #choice, [[Art des Unfalls]])
  * item[+]
    * insert addItemWithSource(8.68, #string, [[Andere Verletzung]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.69, #boolean, [[Andere Verletzung: zu Hause]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.70, #boolean, [[Andere Verletzung: Kita]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.71, #boolean, [[Andere Verletzung: Freizeit]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.72, #boolean, [[Andere Verletzung: Straßenverkehr]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.73, #boolean, [[Andere Verletzung: anderer Ort]], #DE-BB)
//********************************************
// Förderungen in den vergangenen 12 Monaten
// Alle Unteritems der Gruppe 9a sind exakte Kopien der Gruppe 9. Bei Änderungen der Gruppe 9, müssen alle Unterpunkte der Gruppe 9 erneut in die Gruppe 9a kopiert werden. Ebenfalls müssen alle 9. durch 9a. ersetzt werden.
* item[+]
  * insert addItemWithSource(9a, #group, [[Förderungen in den vergangenen 12 Monaten]], #DE-BB)
  * item[+]
    * insert addItemWithSource(9a.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)]], #DE-SL)    
  * item[+]
    * insert addGroup(9a.1a.g, Therapien)
    * insert enableWhenBoolean(9a.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItemWithSource(9a.2aa, #boolean, [[Sprachförderung in der Kita]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.2ba, #boolean, [[Logopädie]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.3a, #boolean, [[Frühförderung]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.4a, #boolean, [[Ergotherapie]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.6a, #boolean, [[Physiotherapie / Krankengymnastik]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.7a, #boolean, [[Psychologische Erziehungsberatung]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.9a, #boolean, [[Integrative Betreuung / Einzelintegration]], #DE-BB)
    * item[+]
      * insert addItem(9a.10, #string, [[Sonstige Förderung]])
    * item[+]
      * insert addItemWithSource(9a.11, #boolean, [[Fördermaßn. Integration in Regel-Kita]], #DE-SL)
  * item[+]
    * insert addItemWithSource(9a.14, #boolean, [[Psychiatrische Institutionsambulanz (PIA)]], #DE-BB)
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItemWithSource(10.3b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole an einem Wochentag]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
  * item[+]
    * insert addItemWithSource(10.4b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole am Wochenende]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.1, #boolean, Hat das Kind bislang ärztliche Behandlung oder Untersützung erhalten?)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItem(12.2, #choice, Beratung Sozialpädiatrisches Zentrum SPZ)
    * answerValueSet = Canonical(GeplantFindetStattAbgeschlossenVS)
  * item[+]
    * insert addItem(12.3, #boolean, Teilnahme Netzwerk Gesunde Kinder)
    * item[+]
      * insert addItem(12.3.1, #integer, Wie lange?)
      * insert uunit(a, "Jahre")
      * enableWhen[+]
        * question = "12.3"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * insert addItemWithSource(12.11, #choice, [[Sommer: Spiel im Freien]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.12, #choice, [[Sommer: Sport im Verein]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.13, #choice, [[Sommer: Sport außerhalb Verein]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.14, #choice, [[Winter: Spiel im Freien]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.15, #choice, [[Winter: Sport im Verein]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.16, #choice, [[Winter: Sport außerhalb Verein]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_FrequenzVS)
  * item[+]
    * insert addItemWithSource(12.17, #boolean, [[Fortbewegung: Laufrad, Roller, Fahrrad]], #DE-BB)
  * item[+]
    * insert addItemWithSource(12.18, #boolean, [[Fortbewegung: zu Fuß]], #DE-BB)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.1a, #choice, Schulabschluss 1. Elternteil, #DE-BB)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBBVS)
  * item[+]
    * insert addItemWithSource(13.2a, #choice, Schulabschluss 2. Elternteil, #DE-BB)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBBVS)
  * item[+]
    * insert addItem(13.3, #choice, Berufsabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
  * item[+]
    * insert addItem(13.4, #choice, Berufsabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
  * item[+]
    * insert addItem(13.5, #choice, Berufstätigkeit 1. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItem(13.7, #integer, [[Anzahl der Kinder im Haushalt. Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet]])
  * item[+]
    * insert addItem(13.8, #integer, Anzahl der Erwachsene im Haushalt)
