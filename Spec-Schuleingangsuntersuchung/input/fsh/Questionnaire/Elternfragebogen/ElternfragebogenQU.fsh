Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung"
Description: "Elternbefragung"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = LebtBeiVS
* contained[+] = GenderDEVS
* contained[+] = SEU-AF-AuswaehlbareElternspracheVS
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
* contained[+] = BildungsabschlussVS
* contained[+] = BerufsbildungVS
* contained[+] = ErwerbsstatusVS
* contained[+] = FamilienrolleVS
* contained[+] = VersorgungsartVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = UeberwiegendGesprocheneSpracheVS
* contained[+] = EntwicklungVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = AllgemeineBeschwerdenVS
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
    * insert addItem(1.5, #choice, Geburtsland)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * enableWhen[+]
      * question = "1.6"
      * operator = #=
      * answerBoolean = false
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
    * insert addItem(1.12, #choice, Kind lebt hauptsächlich bei)
    * answerValueSet = Canonical(LebtBeiVS)
  * item[+]
    * insert addItem(1.12.1, #string, Kind lebt hauptsächlich bei)
    * insert EnableWhenCode(1.12, =, LebtBeiCS, andere)
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * type = #group
  * linkId = "2"
  * text = "(2) Personenbezogene Daten Personenberechtigter"
  * repeats = true
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * type = #choice
    * linkId = "2.1"
    * text = "(2.1) Geschlecht"
  * item[+]
    * type = #string
    * linkId = "2.2"
    * text = "(2.2) Nachname"
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * type = #string
    * linkId = "2.3"
    * text = "(2.3) Vorname"
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * type = #string
    * linkId = "2.4"
    * text = "(2.4) PLZ"
  * item[+]
    * type = #string
    * linkId = "2.5"
    * text = "(2.5) Wohnort"
  * item[+]
    * type = #string
    * linkId = "2.6"
    * text = "(2.6) Straße"
  * item[+]
    * type = #string
    * linkId = "2.7"
    * text = "(2.7) Telefonnummer"
  * item[+]
    * type = #string
    * linkId = "2.8"
    * text = "(2.8) Email"
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * type = #choice
    * linkId = "2.9"
    * text = "(2.9) Staatsangehörigkeit"
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * type = #choice
    * linkId = "2.10"
    * text = "(2.10) Herkunftsland"
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * type = #choice
    * linkId = "2.11"
    * text = "(2.11) Muttersprache"
  * item[+]
    * type = #date
    * linkId = "2.12"
    * text = "(2.12) Geburtsdatum"
//********************************************
// Familiendaten
* item[+]
  * type = #group
  * linkId = "3"
  * text = "(3) Familiendaten"
  * item[+]
    * type = #integer
    * linkId = "3.1"
    * text = "(3.1) Anzahl der Geschwister"
  * item[+]
    * type = #group
    * linkId = "3.1.1"
    * text = "(3.1.1) Details Geschwister"
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * item[+]
      * type = #date
      * linkId = "3.1.1.1"
      * text = "(3.1.1.1) Geburtsdatum des Geschwisters"
    * item[+]
      * type = #choice
      * linkId = "3.1.1.2"
      * text = "(3.1.1.2) Geschlecht des Geschwisters"
  * item[+]
    * type = #group
    * linkId = "3.2"
    * text = "(3.2) Familiäre Vorgeschichte"
    * item[+]
      * type = #boolean
      * linkId = "3.2.1"
      * text = "(3.2.1) Brillenträger"
    * item[+]
      * type = #boolean
      * linkId = "3.2.2"
      * text = "(3.2.2) Lese/Rechtschreibschwäche"
    * item[+]
      * type = #boolean
      * linkId = "3.2.3"
      * text = "(3.2.3) Rechenschwäche"
    * item[+]
      * answerValueSet = Canonical(ChronischeErkrankungenVS)
      * type = #choice
      * linkId = "3.2.4"
      * text = "(3.2.4) Erkrankung"
    * item[+]
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * type = #choice
      * linkId = "3.2.5"
      * text = "(3.2.5) Chronische Erkrankung"
      * item[+]
        * insert EnableWhenCode(3.2.5, =, ChronischeKrankheiten, sonstiges)
        * type = #string
        * linkId = "3.2.5.1"
        * text = "(3.2.5.1) Welche sonstige(n) chronischen Erkrankung(en)?"
    * item[+]
      * type = #boolean
      * linkId = "3.2.6"
      * text = "(3.2.6) Behinderung"
      * item[+]
        * insert EnableWhenBoolean(3.2.6, =, true)
        * type = #string
        * linkId = "3.2.6.1"
        * text = "(3.2.6.1) Welche Behinderung?"
    * item[+]
      * type = #boolean
      * linkId = "3.2.7"
      * text = "(3.2.7) Schilddrüsenerkrankung"
      * item[+]
        * insert EnableWhenBoolean(3.2.7, =, true)
        * type = #string
        * linkId = "3.2.6.1"
        * text = "(3.2.6.1) Welche Schilddrüsenerkrankung?"        
//********************************************
// Kinderbetreuung
* item[+]
  * type = #group
  * linkId = "4"
  * text = "(4) Kinderbetreuung"
  * item[+]
    * insert addItem(4.0a, #boolean, Besucht Ihr Kind weniger als 5 Stunden täglich den Kindergarten?)
  * item[+]
    * insert addItem(4.0b, #boolean, [[Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung]])
  * item[+]
    * type = #integer
    * linkId = "4.1"
    * text = "(4.1) Besuch Kita/Krippe (Dauer in Jahren)"
  * item[+]
    * type = #integer
    * linkId = "4.2"
    * text = "(4.2) Dauer Kita/Krippe pro Woche in Stunden"
  * item[+]
    * type = #integer
    * linkId = "4.3"
    * text = "(4.3) Dauer Kita/Krippe pro Woche in Stunden"
  * item[+]
    * type = #date
    * linkId = "4.4"
    * text = "(4.4) Angabe des Datums, seit wann das Kind keine Kita mehr besucht."
  * item[+]
    * type = #boolean
    * linkId = "4.5"
    * text = "(4.5) Besucht ihr Kind eine andere Form der Tagesbetreuung?"
  * item[+]
    * type = #string
    * linkId = "4.6"
    * text = "(4.6) Name des Kindergartens"
    * enableWhen[+]
      * question = "4.5"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "4.7"
    * text = "(4.7) Erfolgte die Betreuung auch durch eine Tagesmutter?"
  * item[+]
    * type = #date
    * linkId = "4.8"
    * text = "(4.8) Seit welchem Jahr ist die Tagesmutter im Einsatz?"
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true      
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * type = #group
  * linkId = "5"
  * text = "(5) Schwangerschaft und Geburt"
  * item[+]
    * type = #integer
    * linkId = "5.1"
    * text = "(5.1) Dauer der Schwangerschaft (in Wochen)"
  * item[+]
    * type = #integer
    * linkId = "5.2"
    * text = "(5.2) Geburtsgewicht (in Gramm)"
  * item[+]
    * type = #integer
    * linkId = "5.3a"
    * text = "(5.3) Geburtslänge (in cm)"
  * item[+]
    * type = #integer
    * linkId = "5.3b"
    * text = "(5.3b) Kopfumfang (in cm)"
  * item[+]
    * type = #integer
    * linkId = "5.3c"
    * text = "(5.3c) In welcher SS-Woche wurde ihr Kind geboren?"
  * item[+]
    * type = #boolean
    * linkId = "5.4"
    * text = "(5.4) Waren Geburtsgewicht und Geburtslänge normal?"
  * item[+]
    * type = #boolean
    * linkId = "5.5"
    * text = "(5.5) Auffälligkeit bei der Geburt"
    * item[+]
      * insert EnableWhenBoolean(5.5, =, true)
      * type = #string
      * linkId = "5.5.1"
      * text = "(5.5.1) Welche Auffälligkeit?"
  * item[+]
    * type = #boolean
    * linkId = "5.6"
    * text = "(5.6) Auffälligkeit/Krankheit in der Schwangerschaft"
    * item[+]
      * insert EnableWhenBoolean(5.6, =, true)
      * type = #string
      * linkId = "5.6.1"
      * text = "(5.6.1) Welche Auffälligkeit?"      
  * item[+]
    * type = #integer
    * linkId = "5.7"
    * text = "(5.7) Stillzeit in Monaten"
//********************************************
// Sprache
* item[+]
  * type = #group
  * linkId = "6"
  * text = "(6) Sprache"
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * type = #choice
    * linkId = "6.1"
    * text = "(6.1) Welche Sprachen werden Zuhause gesprochen?"
    * repeats = true
  * item[+]
    * answerValueSet = Canonical(UeberwiegendGesprocheneSpracheVS)
    * type = #choice
    * linkId = "6.1a"
    * text = "(6.1a) Welche Sprachen wurden mit dem Kind in den ersten 4 Lebensjahren überwiegend gesprochen?"
    * repeats = true    
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * type = #choice
    * linkId = "6.2"
    * text = "(6.2) Muttersprache des Kindes"
  * item[+]
    * answerValueSet = Canonical(JaNeinAngemeldetVS)
    * type = #choice
    * linkId = "6.3"
    * text = "(6.3) Teilnahme des Kindes an einem Deutschkurs"
  * item[+]
    * type = #boolean
    * linkId = "6.4"
    * text = "(6.4) Sprachauffälligkeiten"
  * item[+]
    * type = #boolean
    * linkId = "6.5"
    * text = "(6.5) Kontakt zu Deutschsprechenden seit Geburt?"
  * item[+]
    * type = #group
    * linkId = "6.6"
    * text = "(6.6) Kontakt zu Deutschprechenden seit Alter:"
    * enableWhen[+]
      * question = "6.5"
      * operator = #=
      * answerBoolean = false
    * item[+]
      * type = #integer
      * linkId = "6.6.1"
      * text = "(6.6.1) Jahre"
    * item[+]
      * type = #integer
      * linkId = "6.6.2"
      * text = "(6.6.2) Monate"
//********************************************
// Entwicklung
* item[+]
  * type = #group
  * linkId = "7"
  * text = "(7) Entwicklung"
  * item[+]
    * type = #boolean
    * linkId = "7.1"
    * text = "(7.1) Sind Sie mit der Entwicklung ihres Kinds zufrieden?"
  * item[+]
    * type = #text
    * linkId = "7.2"
    * text = "(7.2) Mit was sind Sie Unzufrieden?"
    * enableWhen[+]
      * question = "7.1"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * type = #integer
    * linkId = "7.3"
    * text = "(7.3) Freies Laufen ab? (Monate)"
  * item[+]
    * type = #integer
    * linkId = "7.4"
    * text = "(7.4) Erste Worte ab? (Monate)"
  * item[+]
    * type = #integer
    * linkId = "7.5"
    * text = "(7.5) Erste Sätze ab? (Monate)"
  * item[+]
    * answerValueSet = Canonical(EntwicklungVS)
    * type = #choice
    * linkId = "7.6a"
    * text = "(7.6a) Tags und nachts sauber"    
  * item[+]
    * type = #integer
    * linkId = "7.6"
    * text = "(7.6) Tagsüber ohne Windeln ab? (Jahre)"
  * item[+]
    * type = #integer
    * linkId = "7.7"
    * text = "(7.7) Nachts ohne Windeln ab? (Jahre)"
  * item[+]
    * type = #boolean
    * linkId = "7.8"
    * text = "(7.8) Besonderheiten in der Säuglings- u. Kleinkinderzeit?"
  * item[+]
    * type = #text
    * linkId = "7.8.1"
    * text = "(7.8.1) Welche Besonderheiten lagen vor?"
    * enableWhen[+]
      * question = "7.8"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * answerValueSet = Canonical(RechtsLinksHaenderVS)
    * type = #choice
    * linkId = "7.9"
    * text = "(7.9) Links- oder Rechtshänder"
  * item[+]
    * type = #text
    * linkId = "7.10"
    * text = "(7.10) Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens"
  * item[+]
    * type = #open-choice
    * linkId = "7.11"
    * text = "(7.11) Auffälligkeit des Verhaltens"  
  * item[+]
    * type = #boolean
    * linkId = "7.12"
    * text = "(7.12) Sorgen Sie sich um die Entwicklung ihres Kindes?"
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * type = #group
  * linkId = "8"
  * text = "(8) Erkrankungen und gesundheitliche Einschränkungen"
  * item[+]
    * type = #boolean
    * linkId = "8.1"
    * text = "(8.1) In regelmäßiger ärztlicher bzw. psychologischer Behandlung"
  * item[+]
    * type = #text
    * linkId = "8.2"
    * text = "(8.2) Freitext Angabe, abhängig zu 'Regelmäßig_Behandlung'. Angabe zu Grund und Fachrichtung"
    * enableWhen[+]
      * question = "8.1"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "8.3"
    * text = "(8.3) Sehstörung vorhanden?"
  * item[+]
    * type = #boolean
    * linkId = "8.4"
    * text = "(8.4) Sprachstörung vorhanden?"
  * item[+]
    * type = #boolean
    * linkId = "8.5"
    * text = "(8.5) Schielbehandlung?"
  * item[+]
    * type = #boolean
    * linkId = "8.6"
    * text = "(8.6) Brillenträger?"
  * item[+]
    * type = #date
    * linkId = "8.7"
    * text = "(8.7) Letzte Untersuchung beim Augenarzt?"
  * item[+]
    * type = #date
    * linkId = "8.8"
    * text = "(8.8) Letzte Untersuchung beim Zahnarzt?"
  * item[+]
    * type = #boolean
    * linkId = "8.9"
    * text = "(8.9) Schwere Hörstörung vorhanden?"
  * item[+]
    * type = #group
    * linkId = "8.9.G"
    * text = "(8.9.G) Details: Angeborene schwere Hörstörung"
    * enableWhen[+]
      * question = "8.9"
      * operator = #=
      * answerBoolean = true
    * item[+]
      * type = #group
      * linkId = "8.9.G.hoergeraete.G"
      * text = "(8.9.G.hoergeraete.G) Hörgeräte"
      * repeats = true
      * item[+]
        * answerValueSet = Canonical(LinksRechtsBeidseitsKeineAngabeVS)
        * type = #choice
        * linkId = "8.9.G.hoergeraete.G.1"
        * text = "(8.9.G.hoergeraete.G.1) Höregerätseite"
      * item[+]
        * type = #date
        * linkId = "8.9.G.hoergeraete.G.2"
        * text = "(8.9.G.hoergeraete.G.2) Beginn des Tragens"
    * item[+]
      * type = #group
      * linkId = "8.9.G.cochlea.G"
      * text = "(8.9.G.cochlea.G) Cochleaimplantate"
      * repeats = true
      * item[+]
        * answerValueSet = Canonical(LinksRechtsBeidseitsKeineAngabeVS)
        * type = #choice
        * linkId = "8.9.G.cochlea.G.1"
        * text = "(8.9.G.cochlea.G.1) Cochleaimplantat-Seite"
      * item[+]
        * type = #date
        * linkId = "8.9.G.cochlea.G.2"
        * text = "(8.9.G.cochlea.G.2) Beginn des Tragens"
  * item[+]
    * type = #group
    * linkId = "8.10g"
    * text = "(8.10g) Stoffwechsel & Hormonstörungen"
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(StoffwechselstoerungVS)
      * type = #choice
      * linkId = "8.10g.1"
      * text = "(8.10g.1) Art der Störung oder Erkrankung"
    * item[+]
      * type = #date
      * linkId = "8.10g.2"
      * text = "(8.10g.2) Beginn der Erkrankung"
  * item[+]
    * type = #group
    * linkId = "8.11.g"
    * text = "(8.11.g) Erkrankungen"
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungVS)
      * type = #open-choice
      * linkId = "8.11.g.1"
      * text = "(8.11.g.1) Erkrankung"
    * item[+]  
      * type = #date
      * linkId = "8.11.g.2"
      * text = "(8.11.g.2) Erkrankungsbeginn"
    * item[+]        
      * type = #boolean
      * linkId = "8.11.g.3"
      * text = "(8.11.g.3) Durch Ärzt:in festgestellt"
  * item[+]
    * type = #group
    * linkId = "8.12.g"
    * text = "(8.12.g) Infektionskrankheiten"
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * type = #open-choice
      * linkId = "8.12.g.1"
      * text = "(8.12.g.1) Infektionskrankheit"
    * item[+]  
      * type = #date
      * linkId = "8.12.g.2"
      * text = "(8.12.g.2) Erkrankungsbeginn"
  * item[+]
    * type = #group
    * linkId = "8.13.g"
    * text = "(8.13.g) Erkrankungen im letzten Jahr"
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungenLetztesJahrVS)
      * type = #open-choice
      * linkId = "8.13.g.1"
      * text = "(8.13.g.1) Erkrankung"
    * item[+]        
      * type = #date
      * linkId = "8.13.g.2"
      * text = "(8.13.g.2) Erkrankungsbeginn"
  * item[+]
    * type = #boolean
    * linkId = "8.14"
    * text = "(8.14) Chronische Erkrankung vorhanden"
    * item[+]
      * insert addItem(8.14.1, #string, Welche Erkrankung?)
      * insert EnableWhenBoolean(8.14, =, true)
      * repeats = true 
  * item[+]
    * insert addItem(8.14a, #boolean, Muss Ihr Kind krankheitsbedingt eine spezielle Diät einhalten?)      
  * item[+]
    * type = #boolean
    * linkId = "8.15"
    * text = "(8.15) Krankenhausaufenthalt"
    * item[+]
      * insert addItem(8.15.1, #string, Detaillierte Angaben zum Krankenhausaufenthalt?)
      * insert EnableWhenBoolean(8.15, =, true)
  * item[+]
    * type = #boolean
    * linkId = "8.16"
    * text = "(8.16) Allergietest"
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * type = #choice
    * linkId = "8.16a"
    * text = "(8.16a) Besitzt Ihr Kind Allergien?"
    * item[+]
      * insert EnableWhenCode(8.16a, =, AtopischeErkrankungenCS, sonstiges)
      * type = #string
      * linkId = "8.16a.1"
      * text = "(8.16a.1) Welche sonstigen Allergien?"  
  * item[+]
    * type = #boolean
    * linkId = "8.17"
    * text = "(8.17) Entwicklungsdiagnostik"
  * item[+]
    * type = #boolean
    * linkId = "8.18"
    * text = "(8.18) Behindertenausweis vorhanden"
  * item[+]
    * type = #integer
    * linkId = "8.19"
    * text = "(8.19) Grad der Behinderung"
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * type = #choice
    * linkId = "8.20"
    * text = "(8.20) Pflegegrad"
  * item[+]
    * type = #boolean
    * linkId = "8.21"
    * text = "(8.21) Schwere Behinderung vorhanden?"
  * item[+]
    * insert addGroup(8.21.g, Details Behinderung)
    * insert EnableWhenBoolean(8.21, =, true)
    * item[+]
      * type = #text
      * linkId = "8.21.g.1"
      * text = "(8.21) Welche Behinderung"
    * item[+]
      * type = #text
      * linkId = "8.21.g.2"
      * text = "(8.22) Behinderung Merkzeichen"
  * item[+]
    * type = #boolean
    * linkId = "8.23"
    * text = "(8.23) Regelmäßige Medikamenteneinnahme"
  * item[+]
    * insert EnableWhenBoolean(8.23, =, true)
    * type = #string
    * linkId = "8.23.1"
    * text = "(8.23.1) Welches Medikament"   
    * repeats = true
  * item[+]
    * type = #boolean
    * linkId = "8.24"
    * text = "(8.24) Medikamenteneinnahme in der Schulzeit?"
  * item[+]
    * insert EnableWhenBoolean(8.24, =, true)
    * type = #text
    * linkId = "8.24.1"
    * text = "(8.24.1) Welches Medikament"
    * repeats = true
  * item[+]
    * type = #boolean
    * linkId = "8.25"
    * text = "(8.25) Eine Erkrankung, die in einer Notfallsituation beachtet werden muss"
  * item[+]
    * insert EnableWhenBoolean(8.25, =, true)
    * type = #text
    * linkId = "8.25.1"
    * text = "(8.25.1) Welche Erkrankung"
    * repeats = true
  * item[+]
    * type = #text
    * linkId = "8.26"
    * text = "(8.26) Sonstige Probleme"
  * item[+]
    * type = #boolean
    * linkId = "8.27"
    * text = "(8.27) Wurde ihr Kind operiert"
    * item[+]
      * insert addItem(8.27.1, #choice, Wie fand die Operation statt?)
      * insert EnableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(VersorgungsartVS)
  * item[+]
    * type = #group
    * linkId = "8.28.g"
    * text = "(8.28.g) Hatte ihr Kinde einen Unfall"
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(UnfallOrtVS)
      * type = #choice
      * linkId = "8.28.g.1"
      * text = "(8.28.g.1) Ort des Unfall"
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * type = #choice
      * linkId = "8.28.g.2"
      * text = "(8.28.g.2) Art des Unfalls"
  * item[+]
    * insert addItem(8.29, #choice, Hat Ihr Kind häufiger Befindlichkeitsstörungen?)
    * repeats = true 
    * answerValueSet = Canonical(AllgemeineBeschwerdenVS)
    * item[+]
      * insert addItem(8.29.1, #string, Welche sonstige Befindlichkeitstörung?)
      * insert EnableWhenCode(8.29, =, AllgemeineBeschwerdenCS, sonstige)
//********************************************
// Förderungen
* item[+]
  * type = #group
  * linkId = "9"
  * text = "(9) Förderungen"
  * item[+]
    * type = #boolean
    * linkId = "9.1"
    * text = "(9.1) Teilnahme am Vorkurs Deutsch"
  * item[+]
    * insert addItem(9.1a, #boolean, [[Ist Ihr Kind zurzeit in Therapie (z.B. Logopädie-, Ergotherapie, Psychotherapie, Krankengymnastik)?]])    
  * item[+]
    * type = #choice
    * linkId = "9.2"
    * text = "(9.2) Sprachtherapie"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.3"
    * text = "(9.3) Frühförderung"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.4"
    * text = "(9.4) Ergotherapie"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.5"
    * text = "(9.5) Psychomotorik"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.6"
    * text = "(9.6) Physiotherapie"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.7"
    * text = "(9.7) Psychologische Erziehungsberatung"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.8"
    * text = "(9.8) Krankengymnastik"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.9"
    * text = "(9.9) Integrative Betreuung"
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #text
    * linkId = "9.10"
    * text = "(9.10) Sonstige Förderung"
  * item[+]
    * type = #group
    * linkId = "9.11.g"
    * text = "(9.11.g) Kuren"
    * repeats = true
    * item[+]
      * type = #date
      * linkId = "9.11.g.1"
      * text = "(9.11.g.1) Wann"
    * item[+]
      * type = #text
      * linkId = "9.11.g.2"
      * text = "(9.11.g.2) Behandlungsschwerpunkt"
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItem(10.1, #integer, Durchschnittlich pro Tag am Fernseher/Smartphone/Tablet/Spielkonsole/Computer)
    * insert uunit(h, "Stunden")
  * item[+]
    * insert addItem(10.2, #boolean, Fernsehgerät/Computer/Spielkonsole im Zimmer?)
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
    * insert addItem(12.5, #choice, Raucherhaushalt)
    * answerValueSet = Canonical(HaeufigkeitAuswahlVS)    
  * item[+]
    * insert addItem(12.6, #text, Stärken/Begabung/Besonderheiten des Kindes)
  * item[+]
    * insert addItem(12.7, #boolean, Regelmäßig Sport)
  * item[+]
    * insert addItem(12.8, #text, Sportart und Verein)
    * insert EnableWhenBoolean(12.7, =, true)
  * item[+]
    * insert addItem(12.9, #boolean, Schwimmfähig)
  * item[+]
    * insert addItem(12.10, #boolean, Seepferdchenabzeichen)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItem(13.1, #choice, Schulabschluss 1. Elternteil)
    * answerValueSet = Canonical(BildungsabschlussVS)
  * item[+]
    * insert addItem(13.2, #choice, Schulabschluss 2. Elternteil)
    * answerValueSet = Canonical(BildungsabschlussVS)
  * item[+]
    * insert addItem(13.3, #choice, Berufsabschluss 1. Elternteil)
    * answerValueSet = Canonical(BerufsbildungVS)    
  * item[+]
    * insert addItem(13.4, #choice, Berufsabschluss 2. Elternteil)
    * answerValueSet = Canonical(BerufsbildungVS)  
  * item[+]
    * insert addItem(13.5, #choice, Berufstätigkeit 1. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)  
  * item[+]
    * insert addItem(13.5.1, #text, Grund der Erwerbslosigkeit)
    * insert EnableWhenCode(13.5, =, ErwerbsstatusCS, nicht_erwerbstaetig)
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItem(13.6.1, #text, Grund der Erwerbslosigkeit)
    * insert EnableWhenCode(13.6, =, ErwerbsstatusCS, nicht_erwerbstaetig)
  * item[+]
    * insert addItem(13.7, #integer, [[Anzahl der Kinder im Haushalt. Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet]])
  * item[+]
    * insert addItem(13.8, #integer, Anzahl der Erwachsene im Haushalt)
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
    * insert addItem(13.14, #boolean, Ob das Kind an einer Nachmittagsbetreuung teilnehmen soll)
  * item[+]
    * insert addItem(13.15, #boolean, Arbeitet der 1. Elternteil im Schichtdienst?)
  * item[+]
    * insert addItem(13.16, #boolean, Arbeitet der 2. Elternteil im Schichtdienst?)