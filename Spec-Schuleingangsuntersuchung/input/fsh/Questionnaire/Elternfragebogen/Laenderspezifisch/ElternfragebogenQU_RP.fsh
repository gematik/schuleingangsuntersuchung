Instance: Elternbefragung_RP
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung RP"
Description: "Elternbefragung RP"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindVS
* contained[+] = GenderDEVS
* contained[+] = ISO6392_LanguageVS
* contained[+] = ChronischeErkrankungenVS
* contained[+] = JaNeinAngemeldetVS
* contained[+] = RechtsLinksHaenderVS
* contained[+] = AuffaelligkeitVerhaltenVS
* contained[+] = UnfallOrtVS
* contained[+] = SEU_EF_BildungsabschlussVS
* contained[+] = SEU_EF_BerufsbildungVS
* contained[+] = ErwerbsstatusVS
* contained[+] = ErwerbsstatusDerMutterVS
* contained[+] = ErwerbsstatusDesVatersVS
* contained[+] = ErwerbsstatusAlternativ1VS
* contained[+] = FamilienrolleVS
* contained[+] = VersorgungsartVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = EntwicklungVS
* contained[+] = TagsNachtsSauberVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_BildungsabschlussBBVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* contained[+] = GeburtArtVS
* contained[+] = ErkrankungenLetztesJahrPlusVerbrennungenVS
* contained[+] = JaNeinWeissNichtVS
* contained[+] = SEU_UB_ErwerbstaetigkeitVS
* contained[+] = SEU_UB_SchulabschlussVS
* contained[+] = SEU_UB_StaatsangehoerigkeitVS
* contained[+] = SEU_UB_GeburtslandVS
* contained[+] = WerErziehtDasKindVS
* contained[+] = WerErziehtDasKindAlternativVS
* contained[+] = PersonensorgeberechtigterBeziehungVS
* contained[+] = SEU_UB_AntwortErwachseneVS
* contained[+] = SEU_UB_HaendigkeitVS
* contained[+] = FreiesLaufenGelerntVS
* contained[+] = SprechenGelerntVS
* contained[+] = RauchortVS
* id = "SEU-Elternbefragung-RP"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungRP"
* title = "SEU Elternfragebogen RP"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
  * item[+]
    * insert addItemWithSource(0.10, #date, [[Datum der Untersuchung]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.13, #string, [[Ort der Untersuchung]], #DE-TH)
    * maxLength = 30
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
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
  * item[+]
    * insert addItemWithSource(1.6.2, #choice, [[Geburtsland]], #DE-ST)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.6, =, false)
  * item[+]
    * insert addItem(1.7, #string, Geburtsort)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItem(1.9, #string, PLZ)
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
  * item[+]
    * insert addItem(1.11, #string, Straße)
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
  * item[+]
    * insert addItem(1.12, #choice, [[Kind lebt hauptsächlich bei]])
    * answerValueSet = Canonical(WohnsituationKindVS)
  * item[+]
    * insert addItem(1.12.1, #string, [[Kind lebt hauptsächlich bei anderen]])
    * insert enableWhenCode(1.12, =, WohnsituationKindCS, andere)
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
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
  * item[+]
    * insert addItem(2.6, #string, Straße)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
  * item[+]
    * insert addItem(2.8, #string, Email)
  * item[+]
    * insert addItemWithSource(2.10a, #boolean, [[Herkunftsland Deutsch?]], #DE-RP)
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(2.11, #choice, Muttersprache)
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItemWithSource(3.1d, #integer, [[Aktuell im Haushalt lebende Kinder, inklusive des Schuhlpflichtigen]], #DE-RP)
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
      * insert addItem(3.2.7, #boolean, Schilddrüsenerkrankung)
      * item[+]
        * insert enableWhenBoolean(3.2.7, =, true)
        * insert addItem(3.2.7.1, #string, Welche Schilddrüsenerkrankung?)
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
  * item[+]
    * insert addItem(4.7, #boolean, Erfolgte die Betreuung auch durch eine Tagesmutter?)
  * item[+]
    * insert addItem(4.8, #date, Seit wann ist die Tagesmutter im Einsatz?)
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true
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
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.1, #integer, [[Dauer der Schwangerschaft (in Wochen)]])
    * insert uunit(wk, "Wochen")
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
    * insert addItem(5.7, #integer, [[Ausschließliches Stillen in Monaten]])
    * insert uunit(mo, "Monate")
  * item[+]
    * insert addItemWithSource(5.10, #choice, [[Art der Geburt]], #DE-NI)
    * answerValueSet = Canonical(GeburtArtVS)
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(6.1, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
    * repeats = true
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
    * insert addItem(7.10, #text, [[Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens]])
  * item[+]
    * insert addItemWithSource(7.11a, #boolean, [[Auffälligkeit des Verhaltens]], #DE-HE)
    * required = true
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.6, #boolean, [[Brillenträger?]])
    * required = true
  * item[+]
    * insert addItemWithSource(8.6a, #choice, [[Hilfsmittel?]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_HilfsmittelVS)
    * repeats = true
    * required = true
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
        * required = true
  * item[+]
    * insert addItem(8.11.g, #group, [[Erkrankungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungVS)
      * insert addItem(8.11.g.1, #open-choice, [[Erkrankung]])
      * required = true
  * item[+]
    * insert addItem(8.12.g, #group, [[Infektionskrankheiten]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * insert addItem(8.12.g.1, #open-choice, [[Infektionskrankheit]])
      * required = true
  * item[+]
    * insert addItemWithSource(8.14b, #text, [[Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt]], #DE-BW)
    * required = true   
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * required = true
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
      * required = true
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * required = true
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)
    * insert addItemWithSource(8.16b, #string, [[Gesundheitsstörungen in der Familie des Kindes  (z.B. Allergien, Asthma b.,Epilepsie)]],  #DE-TH)
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * insert addItem(8.20, #choice, [[Pflegegrad]])
    * required = true
  * item[+]
    * insert addItemWithSource(8.26a, #text, [[Gesundheitsstörungen und Besonderheiten beim Kind, die nach Meinung der Eltern zu berücksichtigen sind]], #DE-TH)
  * item[+]
    * insert addItemWithSource(8.33, #boolean, [[Einkoten tags]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.34, #boolean, [[Einkoten nachts]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.51, #boolean, [[Operationen Sonstige OP]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.56, #choice, [[Unfälle Sonstige]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.82, #string, [[Kur mit welchem Behandlungsschwerpunkt?]], #DE-TH)
    * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItemWithSource(9.3a, #boolean, [[Frühförderung]], #DE-BB)
      * required = true
  * item[+]
    * insert addItem(9.11.g, #group, [[Kuren]])
    * repeats = true
    * item[+]
      * insert addItem(9.11.g.1, #date, [[Wann]])
      * required = true
    * item[+]
      * insert addItem(9.11.g.2, #string, [[Behandlungsschwerpunkt]])
      * required = true
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItemWithSource(12.23, #boolean, [[Fährt ihr Kind frei Fahrrad]], #DE-HB)
    * required = true
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.13a, #boolean, [[Datenschutzrechtliche Einwilligungerklärung im Rahmen der SEU über Betreuung des Kindes, Angaben zu Gesundheitsstörungen in d. Fam. des Kindes sowie Angaben zur Schwangerschaft und Geburtsverlauf sowie Angaben des betreuenden Kinderarztes.]], #DE-TH)
    * required = true
