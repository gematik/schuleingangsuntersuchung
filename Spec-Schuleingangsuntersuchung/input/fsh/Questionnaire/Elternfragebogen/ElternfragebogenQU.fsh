Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung"
Description: "Elternbefragung"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindVS
* contained[+] = WohnsituationKindAlternativ1VS
* contained[+] = WohnsituationKindAlternativ2VS
* contained[+] = WohnsituationKindAlternativ3VS
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
* contained[+] = ErwerbsstatusDerMutterVS
* contained[+] = ErwerbsstatusDesVatersVS
* contained[+] = ErwerbsstatusAlternativ1VS
* contained[+] = FamilienrolleVS
* contained[+] = VersorgungsartVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = UeberwiegendGesprocheneSpracheVS
* contained[+] = EntwicklungVS
* contained[+] = TagsNachtsSauberVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = AllgemeineBeschwerdenVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_MedienkonsumVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_UnfallVS
* contained[+] = SEU_EF_AlterKindVS
* contained[+] = SEU_EF_AlterKindEinreiseVS
* contained[+] = SEU_EF_SchwangerschaftVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_BehandlungstypVS
* contained[+] = SEU_EF_DauerBWVS
* contained[+] = SEU_EF_HilfsmittelVS
* contained[+] = SEU_EF_FachaerzteVS
* contained[+] = SEU_EF_DauerBBVS
* contained[+] = SEU_EF_SpracheVS
* contained[+] = SEU_EF_FrequenzVS
* contained[+] = SEU_EF_DauerHEVS
* contained[+] = SEU_EF_ZeitdauerVS
* contained[+] = icd10gm-2024
* contained[+] = SEU_EF_BildungsabschlussBBVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* contained[+] = SEU-UB-StaatsangehoerigkeitVS
* contained[+] = DauerStillenVS
* contained[+] = SEU_UB_TeilnahmeVorkursDeutschVS
* contained[+] = GeburtArtVS
* contained[+] = GeburtsmodusVS
* contained[+] = SEU_UB_AuswaehlbareElternspracheVS
* contained[+] = SEU_UB_KindergartenArtVS
* contained[+] = SEU_UB_GesprocheneSpracheVS
* contained[+] = SEU_UB_AntwortAugenarztVS
* contained[+] = SEU_UB_JaNeinKeineAngabeVS
* contained[+] = ErkrankungenLetztesJahrPlusVerbrennungenVS
* contained[+] = JaNeinWeissNichtVS
* contained[+] = SEU_UB_ErwerbstaetigkeitVS
* contained[+] = SEU_UB_SchulabschlussVS
* contained[+] = SEU_UB_StaatsangehoerigkeitVS
* contained[+] = SEU_UB_GeburtslandVS
* contained[+] = WerErziehtDasKindVS
* contained[+] = WerErziehtDasKindAlternativVS
* contained[+] = WieVieleStundenFreizeitVS
* contained[+] = WieOftImSportVereinVS
* contained[+] = WieOftTrainingVS
* contained[+] = BezirkeHHVS
* contained[+] = PersonensorgeberechtigterBeziehungVS
* contained[+] = PersonensorgeberechtigterZusammenlebendVS
* contained[+] = SEU_UB_AntwortErwachseneVS
* contained[+] = SEU_UB_AntwortKindergartenBesuchVS
* contained[+] = SEU_UB_KontaktDeutscheSpracheVS
* contained[+] = SEU_UB_HaendigkeitVS
* contained[+] = FreiesLaufenGelerntVS
* contained[+] = SprechenGelerntVS
* contained[+] = KinderbetreuungVS
* contained[+] = KitaEintrittsalterVS
* contained[+] = RauchortVS
* contained[+] = AErztlichFestgestellteKrankheitenVS
* contained[+] = FruehereErkrankungenVS
* contained[+] = DerzeitigeErkrankungenVS
* id = "SEU-Elternbefragung"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
  * item[+]
    * insert addItemWithSource(0.3, #choice, [[Mandant (Bezirk)]], #DE-HH)
    * answerValueSet = Canonical(BezirkeHHVS)
  * item[+]
    * insert addItemWithSource(0.4, #string, [[SOM Schulordnungsmerkmal]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.5, #string, [[Organisierende Schule]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.6, #string, [[Schulbezirk]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.7, #integer, [[Einschulungsjahr]], #DE-HH)
    * insert uunit(a, "Jahr")
  * item[+]
    * insert addItemWithSource(0.8, #string, [[Einrichtungsart]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.9, #integer, [[Schulnummer der Anmeldeschule]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.10, #date, [[Datum der Untersuchung]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.11, #string, [[Aufnahmeschule (bezeichnet die Schule zu der das  Kind wirklich geht)]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.12, #string, [[Ortsteilnummer (bezogen auf den Wohnort des Kindes)]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.13, #string, [[Ort der Untersuchung]], #DE-TH)
    * maxLength = 30
  * item[+]
    * insert addItemWithSource(0.14, #boolean, [[Hat das Kind einen i-Helfer?]], #DE-MV)
  * item[+]
    * insert addItemWithSource(0.15, #string, [[Bemerkung]], #DE-HH)
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
    * insert addItemWithSource(1.1a, #string, [[Geburtsname des Kindes]], #DE-HH)
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
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItemWithSource(1.4d, #choice, [[Staatsangehörigkeit: andere/weitere?]], #DE-BE)
    * repeats = true  
  * item[+]
    * insert addItem(1.5, #choice, [[Geburtsland]])
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.5a, #choice, [[Geburtsland Mutter]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.5b, #choice, [[Geburtsland Vater]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+] insert addItemWithSource(1.5c, #choice, [[Elternsprache  1]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
  * item[+] insert addItemWithSource(1.5c.1, #string, [[Elternsprache 1 andere]], #DE-BY)
    * insert enableWhenCode(1.5c, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
  * item[+] insert addItemWithSource(1.5d, #choice, [[Elternsprache  2]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AuswaehlbareElternspracheVS)
  * item[+] insert addItemWithSource(1.5d.1, #string, [[Elternsprache 2 andere]], #DE-BY)
    * insert enableWhenCode(1.5d, =, SEU_UB_AuswaehlbareElternspracheErweiterungCS, 98)
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
  // The same like 1.5, but with a dependency from 1.6
  * item[+]
    * insert addItemWithSource(1.6.2, #choice, [[Geburtsland]], #DE-ST)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.6, =, false)
  * item[+]
    * insert addItemWithSource(1.6.3, #date,[[Seit wann lebt Ihr Kind in Deutschland (Monat/Jahr)?]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.6.1a, #choice, Wie alt war das Kind bei Einreise nach Deutschland?, #DE-SL)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(SEU_EF_AlterKindEinreiseVS)
  * item[+]
    * insert addItem(1.7, #string, Geburtsort)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
  * item[+]
    * insert addItem(1.11, #string, Straße)
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
  * item[+]
    * insert addItemWithSource(1.11b, #string, [[Straße und Hausnummer]], #DE-ST)
  * item[+]
    * insert addItem(1.12, #choice, [[Kind lebt hauptsächlich bei]])
    * answerValueSet = Canonical(WohnsituationKindVS)
  * item[+]
    * insert addItem(1.12.1, #string, [[Kind lebt hauptsächlich bei anderen]])
    * insert enableWhenCode(1.12, =, WohnsituationKindCS, andere)
  * item[+]
    * insert addItemWithSource(1.12a, #choice, [[Kind lebt hauptsächlich bei]], #DE-BB)
    * answerValueSet = Canonical(WohnsituationKindAlternativ2VS)
  * item[+]
    * insert addItemWithSource(1.12a.1, #string, [[Kind lebt hauptsächlich bei anderen]], #DE-BB)
    * insert enableWhenCode(1.12a, =, WohnsituationKindCS, andere_familienmitglieder)
    * insert enableWhenCode(1.12a, =, WohnsituationKindCS, andere)
    * enableBehavior = #any
  * item[+]
    * insert addItemWithSource(1.12b, #choice, [[Kind lebt hauptsächlich bei]], #DE-SL)
    * answerValueSet = Canonical(WohnsituationKindAlternativ1VS)
  * item[+]
    * insert addItemWithSource(1.12c, #choice, [[Kind lebt hauptsächlich bei]], #DE-ST)
    * answerValueSet = Canonical(WohnsituationKindAlternativ3VS)
  * item[+]
    * insert addItemWithSource(1.12d, #choice, [[Kind lebt überwiegend bei]], #DE-BE)
    * answerValueSet = Canonical(LebensumfeldVS)
  * item[+]
    * insert addItemWithSource(1.13, #string, [[Unterscheidung zwischen Arzt und Koordinator und Hör- und Sehkraft (MFA)]], #DE-NI)
  * item[+]
    * insert addItemWithSource(1.14, #string, [[Kinderarzt]], #DE-HH)
  * item[+]
    * insert addItemWithSource(1.15, #string, [[Zahnarzt]], #DE-HH)
  * item[+]
    * insert addItemWithSource(1.16, #string, [[Kiefernorthopäde]], #DE-HH)
  * item[+]
    * insert addItemWithSource(1.17, #group, [[Auskunftssperren]], #DE-HH)
    * item[+]
      * insert addItemWithSource(1.17.1, #boolean, [[Nicht näher spezifizierte Sperre]], #DE-HH)
    * item[+]
      * insert addItemWithSource(1.17.2, #boolean, [[Gefahr für Leben (BMG §51 (1))]], #DE-HH)
    * item[+]
      * insert addItemWithSource(1.17.3, #boolean, [[Adpotionspflegeverhältnis (BMG § 51 (5) 2.)]], #DE-HH)
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * insert addItemWithSource(2.0, #choice, [[Beziehung]], #DE-HH)
    * answerValueSet = Canonical(PersonensorgeberechtigterBeziehungVS)
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * insert addItem(2.1, #choice, Geschlecht)
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(2.4, #string, PLZ)
    * insert regEx([["^[0-9]{4,5}$"]])
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
  * item[+]
    * insert addItem(2.6, #string, Straße)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
    * insert regEx([["^(\\+|0)(\\d|\\s)*\\d$"]])
  * item[+]
    * insert addItemWithSource(2.7a, #string, [[Handynummer]], #DE-HH)
  * item[+]
    * insert addItem(2.8, #string, Email)
    * insert regEx([["^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$"]])
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.10, #choice, Herkunftsland)
  * item[+]
    * insert addItemWithSource(2.10a, #boolean, [[Herkunftsland Deutsch?]], #DE-RP)
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(2.11, #choice, Muttersprache)
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
  * item[+]
    * insert addItemWithSource(2.13, #choice, [[Zusammenlebend]], #DE-HH)
    * answerValueSet = Canonical(PersonensorgeberechtigterZusammenlebendVS)
  * item[+]
    * insert addItemWithSource(2.14, #boolean, [[In Deutschland geboren]], #DE-SN)
  * item[+]
    * insert addItemWithSource(2.14.1, #choice, [[Geburtsland]], #DE-SN)
    * insert enableWhenBoolean(2.14, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(2.15, #boolean, [[Deutsche Staatsangehörigkeit]], #DE-SN)
  * item[+]
    * insert addItemWithSource(2.15.1, #choice, [[Staatsangehörigkeit]], #DE-SN)
    * insert enableWhenBoolean(2.15, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(2.16, #choice, [[Schulabschluss]], #DE-SN)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
  * item[+]
    * insert addItemWithSource(2.17, #choice, [[Berufstätigkeit]], #DE-SN)
    * answerValueSet = Canonical(ErwerbsstatusVS)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
  * item[+]
    * insert addItemWithSource(3.1c, #integer, [[Kinder im Haushalt]], #DE-HH)
  * item[+]
    * insert addItemWithSource(3.1a, #integer, Anzahl der im Familienverbund lebenden Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
  * item[+]
    * insert addItemWithSource(3.1b, #integer, Aktuell im Haushalt lebende Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
  * item[+]
    * insert addItemWithSource(3.1d, #integer, [[Aktuell im Haushalt lebende Kinder, inklusive des Schuhlpflichtigen]], #DE-RP)
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
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * insert enableWhenInteger(3.1, >, 0)
    * insert enableWhenInteger(3.1c, >, 1)
    * enableBehavior = #any
    * item[+]
      * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
    * item[+]
      * insert addItem(3.1.1.2, #choice, Geschlecht des Geschwisters)
      * answerValueSet = Canonical(GenderDEVS)
    * item[+]
      * insert addItemWithSource(3.1.1.3, #string, [[Vorname des Geschwisters]], #DE-BE)
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.1, #boolean, Brillenträger)
    * item[+]
      * insert addItem(3.2.2, #boolean, Lese/Rechtschreibschwäche)
    * item[+]
      * insert addItem(3.2.3, #boolean, Rechenschwäche)
    * item[+]
      * insert addItem(3.2.4, #choice, Erkrankung)
      * answerValueSet = Canonical(ChronischeErkrankungenVS)
      * repeats = true
    * item[+]
      * insert addItemWithSource(3.2.4a, #choice, Erkrankung, #DE-BB)
      * answerValueSet = Canonical(icd10gm-2024)
      * repeats = true
    * item[+]
      * insert addItemWithSource(3.2.4b, #boolean, [[Ist Ihr Kind an Windpocken erkrankt]], #DE-HE)
    * item[+]
      * insert addItem(3.2.5, #choice, Chronische Erkrankung)
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * repeats = true
      * item[+]
        * insert enableWhenCode(3.2.5, =, ChronischeKrankheiten, sonstiges)
        * insert addItem(3.2.5.1, #string, [[Welche sonstige(n) chronischen Erkrankung(en)?]])

    * item[+]
      * insert addItem(3.2.6, #boolean, [[Hat Ihr Kind eine körperliche, geistige oder seelische Behinderung?]])
      * item[+]
        * insert enableWhenBoolean(3.2.6, =, true)
        * insert addItem(3.2.6.1, #string, Welche Behinderung?)
    * item[+]
      * insert addItemWithSource(3.2.6a, #boolean, [[Liegt bei Ihrem Kind ein Grad der Behinderung/ein Pflegegrad vor?]], #DE-SL)
    * item[+]
      * insert addItem(3.2.7, #boolean, Schilddrüsenerkrankung)
      * item[+]
        * insert enableWhenBoolean(3.2.7, =, true)
        * insert addItem(3.2.7.1, #string, Welche Schilddrüsenerkrankung?)      
  * item[+]
    * insert addItemWithSource(3.2a, #group, [[Gibt es in der Familie (Eltern, Geschwister)]], #DE-BY)
    * item[+]
      * insert addItemWithSource(3.2a.2, #boolean, [[► eine Lese-Rechtschreib-Schwäche (Legasthenie)]], #DE-BY)
    * item[+]
      * insert addItemWithSource(3.2a.3, #boolean, [[► eine Rechenschwäche (Dyskalkulie)]], #DE-BY)
  * item[+]
    * insert addItemWithSource(3.3, #integer, Aktuell im Haushalt lebende Erwachsene, #DE-BB) 
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0a, #boolean, Besucht Ihr Kind weniger als 5 Stunden täglich den Kindergarten?)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
  * item[+]
    * insert addItemWithSource(4.0b.b, #boolean, [[Besucht Ihr Kind derzeit einen Kindergarten?]], #DE-BY)
  * item[+]
    * insert addItemWithSource(4.0c, #integer, [[Wie viele Stunden ist das Kind pro Woche in einer Kindertageseinrichtung?]], #DE-BW)
  * item[+]
    * insert addItem(4.1, #integer, [[Besuch Kita/Krippe (Dauer in Jahren)]])
  * item[+]
    * insert addItemWithSource(4.1z, #choice, [[Dauer Krippen-/ KITA-/ Kindergartenbesuch (in Jahren)]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortKindergartenBesuchVS)
  * item[+]
    * insert addItemWithSource(4.1a, #choice, Wie alt war das Kind bei der Aufnahme in die Kita?, #DE-SL)
    * answerValueSet = Canonical(SEU_EF_AlterKindVS)
  * item[+]
    * insert addItemWithSource(4.1b, #choice, Wie lange besucht Ihr Kind bis jetzt eine Kindertageseinrichtung?, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_DauerBWVS)
  * item[+]
    * insert addItemWithSource(4.1c, #choice, [[Dauer Kindertagesbetreuung in Jahren]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_DauerBBVS)
  * item[+]
    * insert addItemWithSource(4.1d, #choice, [[Dauer Besuch Kita/Krippe]], #DE-HE)
    * answerValueSet = Canonical(SEU_EF_DauerHEVS)
  * item[+]
    * insert addItem(4.2, #integer, Dauer Kita/Krippe pro Woche in Stunden)
  * item[+]
    * insert addItem(4.4, #date, [[Angabe des Datums, seit wann das Kind keine Kita mehr besucht.]])
  * item[+]
    * insert addItem(4.5, #boolean, Besucht Ihr Kind eine andere Form der Tagesbetreuung?)
  * item[+]
    * insert addItemWithSource(4.5a, #string, [[Art der Tagesbetreuung?]], #DE-BB)
    * insert enableWhenBoolean(4.5, =, true)
  * item[+] insert addItemWithSource(4.5b, #choice, [[Art des Kindergartens]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_KindergartenArtVS)
  * item[+]
    * insert addItem(4.6, #boolean, Besucht Ihr Kind eine Kita in einem anderen Bundesland?)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItem(4.6b, #string, Name des Kindergartens)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItemWithSource(4.6a, #string, Anschrift des Kindergartens, #DE-SN)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItem(4.7, #boolean, Erfolgte die Betreuung auch durch eine Tagesmutter?)
  * item[+]
    * insert addItem(4.8, #date, Seit wann ist die Tagesmutter im Einsatz?)
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItemWithSource(4.9, #date, [[Seit wann besucht das Kind eine Kita?]], #DE-SN)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItemWithSource(4.10, #boolean, [[Bekommt oder wartet Ihr Kind auf eine spezielle Förderung oder Therapie?]], #DE-SN)
  * item[+]
    * insert addItemWithSource(4.11, #group, [[Das Kind wurde bis zum Alter von Jahren und Monaten ausschließlich innerhalb der Familie betreut.]], #DE-RP)
    * item[+]
      * insert addItemWithSource(4.11.1, #integer, [[Jahre]], #DE-RP)
      * insert uunit(a, "Jahre")
      * insert minValueInt(0)
      * insert maxValueInt(7)
    * item[+]
      * insert addItemWithSource(4.11.2, #integer, [[Monate]], #DE-RP)
      * insert uunit(mo, "Monate")
      * insert minValueInt(0)
      * insert maxValueInt(12)
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
    * insert addItem(5.1, #integer, [[Dauer der Schwangerschaft (in Wochen)]])
    * insert uunit(wk, "Wochen")
  * item[+]
    * insert addItemWithSource(5.1.a, #integer, [[Dauer der Schwangerschaft (in Wochen)]], #DE-SL)
    * insert uunit(wk, "Wochen")
    * insert minValueInt(22)
    * insert maxValueInt(43)
  * item[+]
    * insert addItemWithSource(5.1.b, #integer, [[Dauer der Schwangerschaft (ergänzende Tage)]], #DE-HB)
    * insert uunit(d, "Tage")
    * insert minValueInt(0)
    * insert maxValueInt(6)
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
  * item[+]
    * insert addItemWithSource(5.2.a, #integer, [[Geburtsgewicht (in Gramm)]], #DE-SL)
    * insert uunit(g, "Gramm")
    * insert minValueInt(360)
    * insert maxValueInt(6500)    
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
  * item[+]
    * insert addItem(5.3b, #integer, [[Kopfumfang (in cm)]])
  * item[+]
    * insert addItem(5.3c, #integer, [[In welcher SS-Woche wurde Ihr Kind geboren?]])
  * item[+]
    * insert addItem(5.4, #boolean, [[Waren Geburtsgewicht und Geburtslänge normal?]])
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
    * item[+]
      * insert enableWhenBoolean(5.6, =, true)
      * insert addItem(5.6.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItemWithSource(5.6a, #choice, [[Schwangerschaftsverlauf]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_SchwangerschaftVS)
  * item[+]
    * insert addItem(5.7, #integer, [[Ausschließliches Stillen in Monaten]])
    * insert uunit(mo, "Monate")
  * item[+]
    * insert addItemWithSource(5.7a, #choice, [[Ausschließliches Stillen]], #DE-BB)
    * answerValueSet = Canonical(DauerStillenVS)
  * item[+]
    * insert addItemWithSource(5.8, #boolean, [[Stillen / mit Muttermilch ernährt]], #DE-SL)
  * item[+]
    * insert addItemWithSource(5.8.1, #integer, [[Stillzeit in Monaten]], #DE-SL)
    * insert enableWhenBoolean(5.8, =, true)
    * insert uunit(mo, "Monate")
    * insert minValueInt(0)
    * insert maxValueInt(24)
  * item[+]
    * insert addItemWithSource(5.9, #boolean, [[Mehrlingsgeburt]], #DE-BY)
  * item[+]
    * insert addItemWithSource(5.10, #choice, [[Art der Geburt]], #DE-NI)
    * answerValueSet = Canonical(GeburtArtVS)
  * item[+]
    * insert addItemWithSource(5.10a, #choice, [[Geburtsmodus]], #DE-ST)
    * answerValueSet = Canonical(GeburtsmodusVS)
    // "APGAR" steht im Deutschen für folgende Kennzeichen: Atmung, Puls, Grundtonus (Muskelspannung und Bewegung), Aussehen (Hautfarbe) und Reflexe
  * item[+]
    * insert addItemWithSource(5.11, #string, [[APGAR]], #DE-HB)
    * insert regEx([["^\\d{2}\\/\\d{2}\\/\\d{2}$"]])
    * insert entryFormat([[XX/XX/XX]])
    // "pH-Wert" ist eine Messung des Säurebasengrades im Blut oder einer Flüssigkeit. Ein typischer pH-Wert für ein neugeborenes Kind liegt zwischen 7,15 und 7,45.
  * item[+]
    * insert addItemWithSource(5.12, #string, [[pH- Wert]], #DE-HB)
    * insert regEx([["^\\d,\\d{2}$"]])
    * insert entryFormat([[X,XX]])

//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(6.1, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
    * repeats = true
  * item[+]
    * answerValueSet = Canonical(UeberwiegendGesprocheneSpracheVS)
    * insert addItem(6.1a, #choice, [[Welche Sprachen wurden mit dem Kind in den ersten 4 Lebensjahren überwiegend gesprochen?]])
    * repeats = true    
  * item[+]
    * insert addItemWithSource(6.1b, #choice, [[1. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+]
    * insert addItemWithSource(6.1c, #choice, [[2. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+] insert addItemWithSource(6.1d, #boolean, [[Kind wächst mehrsprachig auf]], #DE-BY)
  * item[+] insert addItemWithSource(6.1e, #choice, [[Zu Hause gesprochene Sprache(n)]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_GesprocheneSpracheVS)
  * item[+] insert addItemWithSource(6.1f, #string, [[Zu Hause gesprochene Sprache(n) andere]], #DE-BY)
    * insert enableWhenCode(6.1e, =, SEU_UB_GesprocheneSpracheCS, 2)
    * insert enableWhenCode(6.1e, =, SEU_UB_GesprocheneSpracheCS, 8)
    * enableBehavior = #any
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(6.2, #choice, [[Muttersprache des Kindes]])
  * item[+]
    * answerValueSet = Canonical(JaNeinAngemeldetVS)
    * insert addItem(6.3, #choice, [[Teilnahme des Kindes an einem Deutschkurs]])
  * item[+]
    * insert addItem(6.4, #boolean, [[Sprachauffälligkeiten]])
    * item[+]
      * insert addItem(6.4.1, #string, [[Welche Sprachauffälligkeiten]])
      * insert enableWhenBoolean(6.4, =, true)
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
  * item[+]
    * insert addItem(6.6, #group, [[Kontakt zu Deutschprechenden seit Alter:]])
    * enableWhen[+]
      * question = "6.5"
      * operator = #=
      * answerBoolean = false
    * item[+]
      * insert addItem(6.6.1, #integer, [[Jahre]])
    * item[+]
      * insert addItem(6.6.2, #integer, [[Monate]])
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.1, #boolean, [[Sind Sie mit der Entwicklung ihres Kinds zufrieden?]])
  * item[+]
    * insert addItem(7.2, #text, [[Mit was sind Sie Unzufrieden?]])
    * enableWhen[+]
      * question = "7.1"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * insert addItem(7.3, #integer, [[Freies Laufen ab? (Monate)]])
  * item[+]
    * insert addItemWithSource(7.3a, #boolean, [[Freies Laufen (bis 15 Monate)]], #DE-SL)
  * item[+]
    * insert addItemWithSource(7.3b, #choice, [[Allein laufen gelernt]], #DE-ST)
    * answerValueSet = Canonical(FreiesLaufenGelerntVS)
  * item[+]
    * insert addItem(7.4, #integer, [[Erste Worte ab? (Monate)]])
  * item[+]
    * insert addItemWithSource(7.4a, #boolean, [[Erste Worte bis 1 Jahr]], #DE-SL)
  * item[+]
    * insert addItem(7.5, #integer, [[Erste Sätze ab? (Monate)]])
  * item[+]
    * insert addItemWithSource(7.5a, #boolean, [[Kleine Sätze bis 2 Jahre]], #DE-SL)
  * item[+]
    * insert addItemWithSource(7.5b, #choice, [[Sprechen gelernt (mind. 2-Wort-Sätze, ca. 50 Wörter)]], #DE-ST)
    * answerValueSet = Canonical(SprechenGelerntVS)
  * item[+]
    * insert addItem(7.6a, #choice, [[Tags und nachts sauber]])
    * answerValueSet = Canonical(EntwicklungVS)
  * item[+]
    * insert addItemWithSource(7.6b, #choice, [[Tags und nachts sauber]], #DE-ST)
    * answerValueSet = Canonical(TagsNachtsSauberVS)
  * item[+]
    * insert addItem(7.6, #integer, [[Tagsüber ohne Windeln ab? (Jahre)]])
  * item[+]
    * insert addItem(7.7, #integer, [[Nachts ohne Windeln ab? (Jahre)]])
  * item[+]
    * insert addItem(7.8, #boolean, [[Besonderheiten in der Säuglings- u. Kleinkinderzeit?]])
  * item[+]
    * insert addItem(7.8.1, #text, [[Welche Besonderheiten lagen vor?]])
    * enableWhen[+]
      * question = "7.8"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * answerValueSet = Canonical(RechtsLinksHaenderVS)
    * insert addItem(7.9, #choice, [[Links- oder Rechtshänder]])
  * item[+] insert addItemWithSource(7.9a, #choice, [[Händigkeit]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_HaendigkeitVS)
  * item[+]
    * insert addItem(7.10, #text, [[Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens]])
  * item[+]
    * insert addItem(7.11, #open-choice, [[Auffälligkeit des Verhaltens]])
    * repeats = true
    * answerValueSet = Canonical(AuffaelligkeitVerhaltenVS)
  * item[+]
    * insert addItemWithSource(7.11a, #boolean, [[Auffälligkeit des Verhaltens]], #DE-HE)
  * item[+]
    * insert addItemWithSource(7.11b, #boolean, [[Würden Sie sagen, dass Ihr Kind insgesamt gesehen in einem oder mehreren der folgenden Bereiche Schwierigkeiten hat: Stimmung (bedrückt, ängstlich, schwankend, aufbrausend), Konzentration (kann nicht lange stillsitzen, hört beim Vorlesen nicht ausdauernd zu), Verhalten, Umgang mit Anderen?]], #DE-BY)
  * item[+]
    * insert addItem(7.12, #boolean, [[Sorgen Sie sich um die Entwicklung ihres Kindes?]])
    * item[+]
      * insert addItem(7.12.1, #string, [[Welche Sorgen]])
      * insert enableWhenBoolean(7.12, =, true)
  * item[+]
    * insert addItemWithSource(7.13, #choice, [[Zeigte Ihr Kind mit 5 Jahren Sprachauffälligkeiten?]], #DE-NI)
    * answerValueSet = Canonical(JaNeinWeissNichtVS)
  * item[+]
    * answerValueSet = Canonical(SorgenKindVS)
    * insert addItemWithSource(7.14, #choice, [[Machen Sie sich Sorgen um Ihr Kind wegen]], #DE-BE)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
  * item[+]
    * insert addItemWithSource(8.2a, #choice, [[Welche Behandlung? (Mehrfachnennung möglich)]], #DE-SL)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_BehandlungstypVS)
  * item[+]
    * insert addItem(8.2b, #text, [[Freitext Angabe, abhängig zu 'Regelmäßig_Behandlung'. Angabe zu Grund und Fachrichtung]])
    * insert enableWhenBoolean(8.1, =, true)
  * item[+]
    * insert addItemWithSource(8.2c, #choice, [[Chronische Erkrankung, Fachrichtung]], #DE-BB)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_FachaerzteVS)
  * item[+]
    * insert addItemWithSource(8.2c.1, #string, [[Chronische Erkrankung, Andere:]], #DE-BB)
    * insert enableWhenCode(8.2c, =, SEU_EF_FachaerzteCS, andere)
  * item[+]
    * insert addItemWithSource(8.2c.2, #string, [[Chronische Erkrankung, Grund:]], #DE-BB)
    * insert enableWhenBoolean(8.1, =, true)
  * item[+]
    * insert addItem(8.3, #boolean, [[Sehstörung vorhanden?]])
    * item[+]
      * insert addItem(8.3.1, #string, [[Welche Sehstörung]])
      * insert enableWhenBoolean(8.3, =, true)
  * item[+]
    * insert addItem(8.4, #boolean, [[Sprachstörung vorhanden?]])
    * item[+]
      * insert addItem(8.4.1, #string, [[Welche Sprachstörung]])
      * insert enableWhenBoolean(8.4, =, true)
    * item[+]
      * insert addItemWithSource(8.4.1a, #choice, [[Störung in der Sprachentwicklung]], #DE-SL)
      * insert enableWhenBoolean(8.4, =, true)
      * answerValueSet = Canonical(SEU_EF_SpracheVS)
  * item[+]
    * insert addItem(8.5, #boolean, [[Schielbehandlung?]])
  * item[+]
    * insert addItem(8.6, #boolean, [[Brillenträger?]])
  * item[+]
    * insert addItemWithSource(8.6a, #choice, [[Hilfsmittel?]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_HilfsmittelVS)
    * repeats = true
  * item[+]
    * insert addItem(8.7, #date, [[Letzte Untersuchung beim Augenarzt?]])
  * item[+] insert addItemWithSource(8.7a, #boolean, [[Augenarztbesuch]], #DE-BY)
  * item[+] insert addItemWithSource(8.7b, #choice, [[Feststellung / Veranlassung Augenarzt]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortAugenarztVS)
    * insert enableWhenBoolean(8.7a, =, true)
  * item[+] insert addItemWithSource(8.7c, #choice, [[Besuch beim Zahnarzt in letzten 12 Monaten]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_JaNeinKeineAngabeVS)
  * item[+]
    * insert addItem(8.8, #date, [[Letzte Untersuchung beim Zahnarzt?]])
  * item[+]
    * insert addItem(8.9, #boolean, [[Schwere Hörstörung vorhanden?]])
    * item[+]
      * insert addItem(8.9.1, #string, [[Welche Hörstörung]])
      * insert enableWhenBoolean(8.9, =, true)
  * item[+]
    * insert addItemWithSource(8.9.hoerhilfe, #boolean, [[Hörhilfe]], #DE-BB)       
  * item[+]
    * insert addItem(8.9.G, #group, [[Details: Angeborene schwere Hörstörung]])
    * enableWhen[+]
      * question = "8.9"
      * operator = #=
      * answerBoolean = true 
    * item[+]
      * insert addItem(8.9.G.hoergeraete.G, #group, [[Hörgeräte]])
      * repeats = true
      * item[+]
        * answerValueSet = Canonical(LinksRechtsBeidseitsKeineAngabeVS)
        * insert addItem(8.9.G.hoergeraete.G.1, #choice, [[Höregerätseite]])
      * item[+]
        * insert addItem(8.9.G.hoergeraete.G.2, #date, [[Beginn des Tragens]])
    * item[+]
      * insert addItem(8.9.G.cochlea.G, #group, [[Cochleaimplantate]])
      * repeats = true
      * item[+]
        * answerValueSet = Canonical(LinksRechtsBeidseitsKeineAngabeVS)
        * insert addItem(8.9.G.cochlea.G.1, #choice, [[Cochleaimplantat-Seite]])
      * item[+]
        * insert addItem(8.9.G.cochlea.G.2, #date, [[Beginn des Tragens]])
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
  * item[+]
    * insert addItem(8.10g, #group, [[Stoffwechsel & Hormonstörungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(StoffwechselstoerungVS)
      * insert addItem(8.10g.1, #choice, [[Art der Störung oder Erkrankung]])
    * item[+]
      * insert addItem(8.10g.2, #date, [[Beginn der Erkrankung]])
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
    * insert addItem(8.11.g, #group, [[Erkrankungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungVS)
      * insert addItem(8.11.g.1, #open-choice, [[Erkrankung]])
    * item[+]  
      * insert addItem(8.11.g.2, #date, [[Erkrankungsbeginn]])
    * item[+]        
      * insert addItem(8.11.g.3, #boolean, [[Durch Ärzt:in festgestellt]])
  * item[+]
    * insert addItem(8.12.g, #group, [[Infektionskrankheiten]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * insert addItem(8.12.g.1, #open-choice, [[Infektionskrankheit]])
    * item[+]  
      * insert addItem(8.12.g.2, #date, [[Erkrankungsbeginn]])
  * item[+]
    * insert addItem(8.13.g, #group, [[Erkrankungen im letzten Jahr]])
    * repeats = true
    * item[+]
      * insert addItem(8.13.g.1, #open-choice, [[Erkrankung]])
      * answerValueSet = Canonical(ErkrankungenLetztesJahrVS)
    * item[+]
      * insert addItemWithSource(8.13.g.1.1, #open-choice, [[Erkrankung]], #DE-NI)
      * answerValueSet = Canonical(ErkrankungenLetztesJahrPlusVerbrennungenVS)
    * item[+]        
      * insert addItem(8.13.g.2, #date, [[Erkrankungsbeginn]])
  * item[+]
    * insert addItem(8.14, #boolean, [[Chronische Erkrankung vorhanden]])
    * item[+]
      * insert addItem(8.14.1, #string, [[Welche Erkrankung?]])
      * insert enableWhenBoolean(8.14, =, true)
      * repeats = true 
  * item[+]
    * insert addItemWithSource(8.14b, #text, [[Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt]], #DE-BW)    
  * item[+]
    * insert addItem(8.14a, #boolean, [[Muss Ihr Kind krankheitsbedingt eine spezielle Diät einhalten?]])      
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
    * item[+]  
      * insert addItemWithSource(8.15.1.a, #integer, [[Anzahl der Krankenhausaufenthalte/Operationen]], #DE-BE)
    * item[+]
      * insert addItemWithSource(8.15.2, #integer, [[Wie oft wurde das Kind im Krankenhaus aufgenommen?]], #DE-ST)
      * insert enableWhenBoolean(8.15, =, true)
    * item[+]
      * insert addItem(8.15.3, #string, [[Grund für den Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
    * item[+]
      * insert addItem(8.15.3a, #choice, [[Grund des/der Krankenhausaufenthalt/e?]])
      * insert enableWhenBoolean(8.15, =, true)
      * answerValueSet = Canonical(KrankenhausaufenthaltGrundVS)
      * repeats = true
  * item[+]
    * insert addItem(8.16, #boolean, [[Allergietest]])
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * item[+]
      * insert addItem(8.16a.1, #string, [[Welche sonstigen Allergien?]])  
      * insert enableWhenCode(8.16a, =, AtopischeErkrankungenCS, sonstiges)
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)
    * insert addItemWithSource(8.16b, #string, [[Gesundheitsstörungen in der Familie des Kindes  (z.B. Allergien, Asthma b.,Epilepsie)]],  #DE-TH)
  
  * item[+]
    * insert addItemWithSource(8.16c, #choice, [[Ärztlich festgestellte Krankheiten]], #DE-ST)
    * answerValueSet = Canonical(AErztlichFestgestellteKrankheitenVS)
    * repeats = true
  * item[+]
    * insert addItemWithSource(8.16d, #choice, [[Frühere Erkrankungen]], #DE-ST)
    * answerValueSet = Canonical(FruehereErkrankungenVS)
    * repeats = true
    * item[+]
      * insert addItemWithSource(8.16d.1, #string, [[Welche sonstige früheren Erkrankungen?]], #DE-ST)
      * insert enableWhenCode(8.16d, =, FruehereErkrankungenCS, sonstige_welche)
  * item[+]
    * insert addItemWithSource(8.16e, #choice, [[Derzeitige Erkrankungen]], #DE-ST)
    * answerValueSet = Canonical(DerzeitigeErkrankungenVS)
    * repeats = true
    * item[+]
      * insert addItemWithSource(8.16e.1, #string, [[Welche sonstigen derzeitigen Erkrankungen?]], #DE-ST)
      * insert enableWhenCode(8.16e, =, DerzeitigeErkrankungenCS, sonstige_welche)

  * item[+]
    * insert addItem(8.17, #boolean, [[Entwicklungsdiagnostik]])
  * item[+]
    * insert addItem(8.18, #boolean, [[Behindertenausweis vorhanden]])
  * item[+]
    * insert addItem(8.19, #integer, [[Grad der Behinderung]])
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * insert addItem(8.20, #choice, [[Pflegegrad]])
  * item[+]
    * insert addItem(8.21, #boolean, [[Schwere Behinderung vorhanden?]])
  * item[+]
    * insert addGroup(8.21.g, [[Details Behinderung]])
    * insert enableWhenBoolean(8.21, =, true)
    * item[+]
      * insert addItem(8.21.g.1, #text, [[Welche Behinderung]])
    * item[+]
      * insert addItem(8.21.g.2, #text, [[Behinderung Merkzeichen]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
  * item[+]
    * insert addItem(8.24, #boolean, [[Medikamenteneinnahme in der Schulzeit?]])
  * item[+]
    * insert enableWhenBoolean(8.24, =, true)
    * insert addItem(8.24.1, #text, [[Welches Medikament]])
    * repeats = true
  * item[+]
    * insert addItem(8.25, #boolean, [[Eine Erkrankung, die in einer Notfallsituation beachtet werden muss]])
  * item[+]
    * insert enableWhenBoolean(8.25, =, true)
    * insert addItem(8.25.1, #text, [[Welche Erkrankung]])
    * repeats = true
  * item[+]
    * insert addItemWithSource(8.25.2, #boolean, [[andere wichtige Erkrankungen/Allergien/Unfälle]], #DE-BE)
  * item[+]
    * insert enableWhenBoolean(8.25.2, =, true)
    * insert addItemWithSource(8.25.3, #text, [[wenn ja, welche]], #DE-BE)
  * item[+]
    * insert addItem(8.26, #text, [[Sonstige Probleme]])
  * item[+]
    * insert addItemWithSource(8.26a, #text, [[Gesundheitsstörungen und Besonderheiten beim Kind, die nach Meinung der Eltern zu berücksichtigen sind]], #DE-TH)
  * item[+]
    * insert addItemWithSource(8.26b, #text, [[Sonstige gesundheitliche Probleme, die hinsichtlich der Einschulung besprochen werden sollen]], #DE-ST)
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde Ihr Kind operiert]])
    * item[+]
      * insert addItem(8.27.1, #choice, [[Wie fand die Operation statt?]])
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(VersorgungsartVS)
    * item[+]
      * insert addItem(8.27.2, #choice, [[Welche Operationen wurden durchgeführt?]])
      * repeats = true
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(SEU_EF_OperationenVS)
      * item[+]
        * insert addItemWithSource(8.27.2.1, #string, [[Sonstige Operationen?]], #DE-SL)
        * insert enableWhenCode(8.27.2, =, SEU_EF_OperationenCS, sonstige_operation)
  * item[+]
    * insert addItemWithSource(8.27a, #boolean, [[Ambulante Operation(en)]], #DE-ST)
  * item[+]
    * insert addItem(8.28a, #boolean, [[Hatte Ihr Kind einen Unfall]])
  * item[+]
    * insert addItemWithSource(8.28b, #boolean, [[Hatte  Ihr Kind jemals einen Unfall, der ärztlich behandelt wurde?]], #DE-BB)
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte Ihr Kind einen Unfall]])
    * insert enableWhenBoolean(8.28a, =, true)
    * insert enableWhenBoolean(8.28b, =, true)
    * enableBehavior = #any
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(UnfallOrtVS)
      * insert addItem(8.28.g.1, #choice, [[Ort des Unfall]])
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * insert addItem(8.28.g.2, #choice, [[Art des Unfalls]])
    * item[+]
      * insert addItemWithSource(8.28.g.3, #choice, [[Anlass des Unfalls]], #DE-SL)
      * answerValueSet = Canonical(SEU_EF_UnfallVS)
  * item[+]
    * insert addItem(8.29, #choice, [[Hat Ihr Kind häufiger Befindlichkeitsstörungen?]])
    * repeats = true 
    * answerValueSet = Canonical(AllgemeineBeschwerdenVS)
    * item[+]
      * insert addItem(8.29.1, #string, [[Welche sonstige Befindlichkeitstörung?]])
      * insert enableWhenCode(8.29, =, AllgemeineBeschwerdenCS, sonstige)
  * item[+]
    * insert addItemWithSource(8.30, #boolean, [[Wurde Ihr Kind jemals aufgrund von Unfallverletzungen von einem Arzt behandelt?]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.30.1, #boolean, [[Nässt Ihr Kind ein?]], #DE-BE)
  * item[+]
    * insert addItemWithSource(8.31, #boolean, [[Einnässen tags]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.32, #boolean, [[Einnässen nachts]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.33, #boolean, [[Einkoten tags]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.34, #boolean, [[Einkoten nachts]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.35, #boolean, [[Erkrankungen Tuberkuloseerkrankung]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.36, #boolean, [[Erkrankungen Meningitis/Enceph.]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.37, #boolean, [[Erkrankungen Pneumonien]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.38, #boolean, [[Erkrankungen Pseudocroup]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.39, #boolean, [[Erkrankungen Fieberkrampf/Krampfanfall]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.40, #boolean, [[Erkrankungen Harnwegserkrankungen]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.41, #boolean, [[Erkrankungen rez Otitis media]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.42, #boolean, [[Erkrankungen Allergie]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.42a, #boolean, [[Erkrankungen Neurodermitis]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.43, #boolean, [[Erkrankungen Sonstige]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.44, #boolean, [[Operationen Adenotomie]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.45, #boolean, [[Operationen Tonsillen-OP]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.46, #boolean, [[Operationen Herniotomie]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.47, #boolean, [[Operationen Appendektomie]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.48, #boolean, [[Operationen Circumcision]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.49, #boolean, [[Operationen Orchidopexie]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.50, #boolean, [[Operationen Augenoperation]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.51, #boolean, [[Operationen Sonstige OP]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.52, #choice, [[Unfälle Verbrennung/Verbrühung]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.53, #choice, [[Unfälle Intoxikation]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.54, #choice, [[Unfälle Knochenbrüche/Weichteilverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.55, #choice, [[Unfälle Schwere Kopfverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.56, #choice, [[Unfälle Sonstige]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.57, #boolean, [[Reg. Med. Antikonvulsiva]], #DE-SL)
    * item[+]
      * insert addItem(8.57.1, #string, [[Wegen welcher Erkrankungen ist Ihr Kind zurzeit in Behandlung??]])
      * insert enableWhenBoolean(8.57, =, true)
  * item[+]
    * insert addItemWithSource(8.58, #boolean, [[Reg. Med. Antiasthmatika/Antiallergika]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.59, #boolean, [[Reg. Med. Psychopharmaka]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.60, #boolean, [[Reg. Med. Cardiaca/Kreislaufpräparate]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.61, #boolean, [[Reg. Med. Jodid oder Thyroxin]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.62, #boolean, [[Reg. Med. Dermatologische Präparate]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.63, #boolean, [[Reg. Med. Homöopathische Präparate]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.64, #boolean, [[Reg. Med. Sonstige]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.65, #boolean, [[Orthese]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.66, #boolean, [[Zahnersatz (Prothese, Platzhalter)]], #DE-BB)
  * item[+]
    * insert addItemWithSource(8.67, #boolean, [[Hörgerät]], #DE-BB)
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
  * item[+]
    * insert addItemWithSource(8.74, #boolean, [[Hauterkrankungen]], #DE-SN)
  * item[+]
    * insert addItemWithSource(8.75, #string, [[Welche Hauterkrankungen]], #DE-SN)
    * insert enableWhenBoolean(8.74, =, true)
  * item[+]
    * insert addItemWithSource(8.76, #boolean, [[Orthopädische Erkrankungen?]], #DE-SN)
  * item[+]
    * insert addItemWithSource(8.77, #string, [[Welche orthopädischen Erkrankungen]], #DE-SN)
    * insert enableWhenBoolean(8.76, =, true)
  * item[+]
    * insert addGroup(8.79, [[Juckender Hautausschlag]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.79.1, #boolean, [[Hatte Ihr Kind irgendwann einmal einen juckenden Hautausschlag, der stärker oder schwächer über mind. 6 Montae auftrat?]], #DE-NI)
    * item[+]
      * insert addItemWithSource(8.79.2, #boolean, [[Trat dieser juckende Hautausschlag bei Ihrem Kind irgendwann einmal an einer der folgenden Körperstellen auf: In der Ellenbeuge, Kniekehle, an den Hand oder Fußgelenken, im Gesicht oder am Hals?]], #DE-NI)
      * insert enableWhenBoolean(8.79.1, =, true)
  * item[+]
    * insert addGroup(8.80, [[Geräusche beim Atmen]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.80.1, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten jemals beim Atmen pfeiffende oder keuchende Geräusche im Brustkorb?]], #DE-NI)
    * item[+]
      * insert addItemWithSource(8.80.2, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten jemals beim Atmen pfeiffende oder keuchende Geräusche im Brustkorb während oder nach körperlicher Anstrengung?]], #DE-NI)
    * item[+]
      * insert addItemWithSource(8.80.3, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten nachts einen trockenen Reizhusten, obwohl es keine Erkältung oder Bronchitis hatte?]], #DE-NI)
  * item[+]
    * insert addGroup(8.81, [[Niesen, verstopfte Nase]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.81.1, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten Niesanfälle oder eine laufende, verstopfte oder juckende Nase, obwohl es nicht erkältet war?]], #DE-NI)
    * item[+]
      * insert addItemWithSource(8.81.2, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten gleichzeitig mit diesen Nasenbeschwerden auch juckende oder tränende Augen?]], #DE-NI)
  * item[+]
    * insert addItemWithSource(8.82, #string, [[Kur mit welchem Behandlungsschwerpunkt?]], #DE-TH)
  * item[+]
    * insert addItemWithSource(8.83, #choice, [[Erkrankungen des Kindes (auch frühere)]], #DE-BE)
    * answerValueSet = Canonical(ErkrankungenKindVS)
    * repeats = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItem(9.1, #boolean, [[Teilnahme am Vorkurs Deutsch]])
  * item[+]
    * insert addItemWithSource(9.1b, #choice, [[Teilnahme am Vorkurs Deutsch]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_TeilnahmeVorkursDeutschVS)
  * item[+]
    * insert addItemWithSource(9.1c, #choice, [[Sprachtherapie]], #DE-BY)
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)]], #DE-SL)    
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.2aa, #boolean, [[Sprachförderung in der Kita]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9.2a, #choice, [[Sprachförderung]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9.2a.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9.2a.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9.2b.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9.2b.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2ba, #boolean, [[Logopädie]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9.2c, #choice, [[Ergotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9.2c.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9.2c.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y) 
    * item[+]
      * insert addItemWithSource(9.2d, #choice, [[Psychotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9.2d.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9.2d.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2da, #choice, [[Psychotherapie]], #DE-HB)
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9.2e.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9.2e.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2ea, #boolean, [[Andere]], #DE-BB)
    * item[+]
      * insert addItem(9.3, #choice, [[Frühförderung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.3a, #boolean, [[Frühförderung]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9.3b, #choice, [[Ambulante Frühförderung]], #DE-ST)
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.4, #choice, [[Ergotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.4a, #boolean, [[Ergotherapie]], #DE-BB)
    * item[+]
      * insert addItem(9.5, #choice, [[Psychomotorik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.6, #choice, [[Physiotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.6a, #boolean, [[Physiotherapie / Krankengymnastik]], #DE-BB)
    * item[+]
      * insert addItem(9.7, #choice, [[Psychologische Erziehungsberatung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.7a, #boolean, [[Psychologische Erziehungsberatung]], #DE-BB)
    * item[+]
      * insert addItem(9.8, #choice, [[Krankengymnastik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.9, #choice, [[Integrative Betreuung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.9a, #boolean, [[Integrative Betreuung / Einzelintegration]], #DE-BB)
    * item[+]
      * insert addItem(9.10, #string, [[Sonstige Förderung]])
    * item[+]
      * insert addItemWithSource(9.11, #boolean, [[Fördermaßn. Integration in Regel-Kita]], #DE-SL)
    * item[+]
      * insert addItemWithSource(9.12, #boolean, [[Fördermaßn. FörderKita/Integrative Kita]], #DE-SL)
    * item[+]
      * insert addItemWithSource(9.13, #boolean, [[Fördermaßn. Vorschul. Päd. Sprachförderung]], #DE-SL)
  * item[+]
    * insert addItem(9.11.g, #group, [[Kuren]])
    * repeats = true
    * item[+]
      * insert addItem(9.11.g.1, #date, [[Wann]])
    * item[+]
      * insert addItem(9.11.g.2, #string, [[Behandlungsschwerpunkt]])
  * item[+]
    * insert addItemWithSource(9.14, #boolean, [[Psychiatrische Institutionsambulanz (PIA)]], #DE-BB)
  * item[+]
    * insert addItemWithSource(9.15, #boolean, [[Komplexleistung]], #DE-HB)
  * item[+]
    * insert addItemWithSource(9.16, #boolean, [[Persönliche Hilfe/Eingliederungshilfe in Kita]], #DE-HB)
// Förderungen in den vergangenen 12 Monaten
// Alle Unteritems der Gruppe 9a sind exakte Kopien der Gruppe 9. Bei Änderungen der Gruppe 9, müssen alle Unterpunkte der Gruppe 9 erneut in die Gruppe 9a kopiert werden. Ebenfalls müssen alle 9. durch 9a. ersetzt werden.
* item[+]
  * insert addItemWithSource(9a, #group, [[Förderungen in den vergangenen 12 Monaten]], #DE-BB)
  * item[+]
    * insert addItem(9a.1, #boolean, [[Teilnahme am Vorkurs Deutsch]])
  * item[+]
    * insert addItemWithSource(9a.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)?]], #DE-SL)    
  * item[+]
    * insert addGroup(9a.1a.g, Therapien)
    * insert enableWhenBoolean(9a.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9a.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.2aa, #boolean, [[Sprachförderung in der Kita]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.2a, #choice, [[Sprachförderung]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9a.2a.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9a.2a, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9a.2a.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9a.2a, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9a.2b, #choice, [[Logopädie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9a.2b.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9a.2b, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9a.2b.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9a.2b, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9a.2ba, #boolean, [[Logopädie]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.2c, #choice, [[Ergotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9a.2c.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9a.2c, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9a.2c.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9a.2c, =, ExpandedYesNoIndicator, Y) 
    * item[+]
      * insert addItemWithSource(9a.2d, #choice, [[Psychotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9a.2d.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9a.2d, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9a.2d.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9a.2d, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9a.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(9a.2e.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(9a.2e, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(9a.2e.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(9a.2e, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9a.2ea, #boolean, [[Andere]], #DE-BB)
    * item[+]
      * insert addItem(9a.3, #choice, [[Frühförderung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.3a, #boolean, [[Frühförderung]], #DE-BB)
    * item[+]
      * insert addItemWithSource(9a.3b, #choice, [[Ambulante Frühförderung]], #DE-ST)
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9a.4, #choice, [[Ergotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.4a, #boolean, [[Ergotherapie]], #DE-BB)
    * item[+]
      * insert addItem(9a.5, #choice, [[Psychomotorik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9a.6, #choice, [[Physiotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.6a, #boolean, [[Physiotherapie / Krankengymnastik]], #DE-BB)
    * item[+]
      * insert addItem(9a.7, #choice, [[Psychologische Erziehungsberatung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.7a, #boolean, [[Psychologische Erziehungsberatung]], #DE-BB)
    * item[+]
      * insert addItem(9a.8, #choice, [[Krankengymnastik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9a.9, #choice, [[Integrative Betreuung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9a.9a, #boolean, [[Integrative Betreuung / Einzelintegration]], #DE-BB)
    * item[+]
      * insert addItem(9a.10, #string, [[Sonstige Förderung]])
    * item[+]
      * insert addItemWithSource(9a.11, #boolean, [[Fördermaßn. Integration in Regel-Kita]], #DE-SL)
    * item[+]
      * insert addItemWithSource(9a.12, #boolean, [[Fördermaßn. FörderKita/Integrative Kita]], #DE-SL)
    * item[+]
      * insert addItemWithSource(9a.13, #boolean, [[Fördermaßn. Vorschul. Päd. Sprachförderung]], #DE-SL)
  * item[+]
    * insert addItem(9a.11.g, #group, [[Kuren]])
    * repeats = true
    * item[+]
      * insert addItem(9a.11.g.1, #date, [[Wann]])
    * item[+]
      * insert addItem(9a.11.g.2, #string, [[Behandlungsschwerpunkt]])
  * item[+]
    * insert addItemWithSource(9a.14, #boolean, [[Psychiatrische Institutionsambulanz (PIA)]], #DE-BB)
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItem(10.1, #integer, Durchschnittlich pro Tag am Fernseher/Smartphone/Tablet/Spielkonsole/Computer)
    * insert uunit(h, "Stunden")
  * item[+]
    * insert addItem(10.2, #boolean, Fernsehgerät/Computer/Spielkonsole im Zimmer?)
  * item[+]
    * insert addItemWithSource(10.2.1, #boolean, [[Mein Kind hat einen eigenen Fernseher?]], #DE-BE)
  * item[+]
    * insert addItemWithSource(10.2.2, #boolean, [[andere eigene elektronische Geräte]], #DE-BE)
  * item[+]
    * insert enableWhenBoolean(10.2.2, =, true)
    * insert addItemWithSource(10.2.3, #text, [[wenn ja, welche]], #DE-BE)
  * item[+]
    * insert addItemWithSource(10.3a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Wochentag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
  * item[+]
    * insert addItemWithSource(10.3b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole an einem Wochentag]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
  * item[+]
    * insert addItemWithSource(10.4a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Samstag/ Sonntag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
  * item[+]
    * insert addItemWithSource(10.4b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole am Wochenende]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
  * item[+]
    * insert addItemWithSource(10.4c, #choice, [[Wie viele Stunden am Tag beschäftigt sich Ihr Kind im Durchschnitt mit elektronischen Geräten? (elektronische Geräte sind Fernsehen, DVD, Computer, Tablet, Smartphone, Playstation und andere) ]], #DE-BE)
    * answerValueSet = Canonical(SEUEFMedienkonsumBerlinVS)
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.1, #boolean, Hat das Kind bislang ärztliche Behandlung oder Untersützung erhalten?)
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
  * item[+]
    * insert addItem(11.3, #string, Name Facharzt)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItem(12.1, #choice, Beratung Erziehungsberatungsstelle)
    * answerValueSet = Canonical(GeplantFindetStattAbgeschlossenVS)
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
    * insert addItem(12.4, #boolean, KISS Sprachscreening)
  * item[+]
    * insert addItemWithSource(12.4.1, #integer, [[Wieviele Personen sind Raucher/Dampfer]], #DE-BE)
  * item[+]
    * insert addItem(12.5, #choice, Raucherhaushalt)
    * answerValueSet = Canonical(HaeufigkeitAuswahlVS)    
  * item[+]
    * insert addItem(12.6, #text, Stärken/Begabung/Besonderheiten des Kindes)
  * item[+]
    * insert addItem(12.7, #boolean, Regelmäßig Sport)
  * item[+]
    * insert addItemWithSource(12.7a, #boolean, [[Präv. Maßnahmen Regemäßig Sport im Verein]], #DE-SL)
  * item[+]
    * insert addItem(12.8, #text, Sportart und Verein)
    * insert enableWhenBoolean(12.7, =, true)
  * item[+]
    * insert addItem(12.9, #boolean, Schwimmfähig)
  * item[+]
    * insert addItem(12.10, #boolean, Seepferdchenabzeichen)
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
  * item[+]
    * insert addItemWithSource(12.19, #choice, [[Wie viele Stunden pro Tag ist Ihr Kind im Freizeitbereich (z.B. Wald oder Garten) körperlich aktiv?]], #DE-NI)
    * answerValueSet = Canonical(WieVieleStundenFreizeitVS)
  * item[+]
    * insert addItemWithSource(12.20, #boolean, [[Ist Ihr Kind Mitglied in einem Sportverein?]], #DE-NI)
  * item[+]
    * insert addItemWithSource(12.21, #choice, [[Wie oft geht Ihr Kind in den Sportverein?]], #DE-NI)
    * insert enableWhenBoolean(12.20, =, true)
    * answerValueSet = Canonical(WieOftImSportVereinVS)
  * item[+]
    * insert addItemWithSource(12.22, #choice, [[Wie oft trainiert Ihr Kind pro Woche außerhalb der Kita angeleitet?]], #DE-NI)
    * answerValueSet = Canonical(WieOftTrainingVS)
  * item[+]
    * insert addItemWithSource(12.23, #boolean, [[Fährt Ihr Kind frei Fahrrad]], #DE-HB)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.0, #choice, [[Geschlecht 1. Elternteil]], #DE-BW)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItemWithSource(13.0a, #choice, [[Geschlecht 2. Elternteil]], #DE-BW)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItem(13.1, #choice, Schulabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
  * item[+]
    * insert addItemWithSource(13.1a, #choice, Schulabschluss 1. Elternteil, #DE-BB)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBBVS)
  * item[+]
    * insert addItemWithSource(13.1b, #choice, Schulabschluss 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.1c, #choice, Schulabschluss Mutter/Elternteil A, #DE-BE)
    * answerValueSet = Canonical(SchulabschlussBerlinVS)
  * item[+]
    * insert addItem(13.2, #choice, Schulabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
  * item[+]
    * insert addItemWithSource(13.2a, #choice, Schulabschluss 2. Elternteil, #DE-BB)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBBVS)
  * item[+]
    * insert addItemWithSource(13.2b, #choice, Schulabschluss 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.2c, #choice, Schulabschluss Vater/Elternteil B, #DE-BE)
    * answerValueSet = Canonical(SchulabschlussBerlinVS)
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
    * insert addItem(13.5.1, #text, Grund der Erwerbslosigkeit)
    * insert enableWhenCode(13.5, =, ErwerbsstatusCS, nicht_erwerbstaetig)
  * item[+]
    * insert addItemWithSource(13.5a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItem(13.6.1, #text, Grund der Erwerbslosigkeit)
    * insert enableWhenCode(13.6, =, ErwerbsstatusCS, nicht_erwerbstaetig)
  * item[+]
    * insert addItemWithSource(13.6a, #choice, Berufstätigkeit 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS) 
  * item[+]
    * insert addItem(13.7, #integer, [[Anzahl der Kinder im Haushalt. Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet]])
  * item[+]
    * insert addItem(13.8, #integer, Anzahl der Erwachsenen im Haushalt)
  * item[+]
    * insert addItem(13.8a, #integer, Anzahl der Kinder und Erwachsenen im Haushalt)
  * item[+]
    * insert addItemWithSource(13.8b, #choice, [[Anzahl Erwachsene im Haushalt]], #DE-BY)
    * answerValueSet = Canonical(SEU_UB_AntwortErwachseneVS)
  * item[+]
    * insert addItem(13.9, #date, Datum seit dem der 1. Elternteil in Deutschland lebt.)
  * item[+]
    * insert addItem(13.10, #date, Datum seit dem der 2. Elternteil in Deutschland lebt.)
  * item[+]
    * insert addItem(13.11, #choice, Wer hat diesen Fragebogen ausgefüllt)
    * answerValueSet = Canonical(FamilienrolleVS)  
  * item[+]
    * insert addItem(13.12, #boolean, [[Einwilligung zur Datenerhebung früherer Untersuchungen, welche beim Gesundheitsamt vorliegen]])
  * item[+]
    * insert addItem(13.13, #boolean, [[Einwilligung zur Einsicht von Unterlagen zur Frühförderung, falls diese vorliegen]])
  * item[+]
    * insert addItemWithSource(13.13a, #boolean, [[Datenschutzrechtliche Einwilligungerklärung im Rahmen der SEU über Betreuung des Kindes, Angaben zu Gesundheitsstörungen in d. Fam. des Kindes sowie Angaben zur Schwangerschaft und Geburtsverlauf sowie Angaben des betreuenden Kinderarztes.]], #DE-TH)
  * item[+]
    * insert addItem(13.14, #boolean, Ob das Kind an einer Nachmittagsbetreuung teilnehmen soll)
  * item[+]
    * insert addItem(13.15, #boolean, Arbeitet der 1. Elternteil im Schichtdienst?)
  * item[+]
    * insert addItem(13.16, #boolean, Arbeitet der 2. Elternteil im Schichtdienst?)
  * item[+]
    * insert addItemWithSource(13.17, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.18, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 2]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.19, #boolean, [[in Deutschland geboren? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.20, #boolean, [[in Deutschland geboren? Elternteil 2]], #DE-BW)
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
  * item[+]
    * insert addItemWithSource(13.30, #choice, [[Wer erzieht das Kind?]], #DE-NI)
    * answerValueSet = Canonical(WerErziehtDasKindVS)
  * item[+]
    * insert addItemWithSource(13.31, #choice, [[Wer erzieht?]], #DE-HB)
    * answerValueSet = Canonical(WerErziehtDasKindAlternativVS)
  * item[+]
    * insert addItemWithSource(13.32, #choice, [[Erwerbsstatus der Mutter]], #DE-HB)
    * answerValueSet = Canonical(ErwerbsstatusDerMutterVS)
  * item[+]
    * insert addItemWithSource(13.32a, #choice, [[Erwerbstätigkeit Mutter/ Partner]], #DE-ST)
    * answerValueSet = Canonical(ErwerbsstatusAlternativ1VS)
  * item[+]
    * insert addItemWithSource(13.32c, #choice, [[Berufstätigkeit Mutter/Elternteil A]], #DE-BE)
    * answerValueSet = Canonical(BerufstaetigkeitElternBerlinVS)
  * item[+]
    * insert addItemWithSource(13.33, #choice, [[Erwerbsstatus des Vaters]], #DE-HB)
    * answerValueSet = Canonical(ErwerbsstatusDesVatersVS)
  * item[+]
    * insert addItemWithSource(13.33a, #choice, [[Erwerbstätigkeit Vater/ Partner]], #DE-ST)
    * answerValueSet = Canonical(ErwerbsstatusAlternativ1VS)
  * item[+]
    * insert addItemWithSource(13.33c, #choice, [[Berufstätigkeit Vater/Elternteil B]], #DE-BE)
    * answerValueSet = Canonical(BerufstaetigkeitElternBerlinVS)
  * item[+]
    * insert addItemWithSource(13.34, #boolean, [[Mutter in Deutschland geboren]], #DE-HB)
  * item[+]
    * insert addItemWithSource(13.35, #boolean, [[Vater in Deutschland geboren]], #DE-HB)
  * item[+]
    * insert addItemWithSource(13.36, #boolean, [[Mutter hat weitere Staatsangehörigkeit]], #DE-HB)
  * item[+]
    * insert addItemWithSource(13.36.1, #choice, [[Weitere Staatsangehörigkeit der Mutter]], #DE-HB)
    * insert enableWhenBoolean(13.36, =, true)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(13.37, #boolean, [[Vater hat weitere Staatsangehörigkeit]], #DE-HB)
  * item[+]
    * insert addItemWithSource(13.37.1, #choice, [[Weitere Staatsangehörigkeit des Vaters]], #DE-HB)
    * insert enableWhenBoolean(13.37, =, true)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(13.38, #boolean, [[Rauchen im Haushalt]], #DE-ST)
  * item[+]
    * insert addItemWithSource(13.39, #choice, [[Ort des Rauchens]], #DE-ST)
    * insert enableWhenBoolean(13.38, =, true)
    * answerValueSet = Canonical(RauchortVS)
