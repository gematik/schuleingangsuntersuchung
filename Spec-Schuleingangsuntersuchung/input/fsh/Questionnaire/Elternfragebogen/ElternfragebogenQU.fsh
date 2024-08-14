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
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
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
  * insert addItem(2, #group, Personenbezogene Daten Personenberechtigter)
  * repeats = true
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
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.10, #choice, Herkunftsland)
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * insert addItem(2.11, #choice, Muttersprache)
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * item[+]
      * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
    * item[+]
      * insert addItem(3.1.1.2, #choice, Geschlecht des Geschwisters)
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.1, #boolean, Brillenträger)
    * item[+]
      * insert addItem(3.2.2, #boolean, Lese/Rechtschreibschwäche)
    * item[+]
      * insert addItem(3.2.3, #boolean, Rechenschwäche)
    * item[+]
      * answerValueSet = Canonical(ChronischeErkrankungenVS)
      * insert addItem(3.2.4, #choice, Erkrankung)
    * item[+]
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * insert addItem(3.2.5, #choice, Chronische Erkrankung)
      * item[+]
        * insert EnableWhenCode(3.2.5, =, ChronischeKrankheiten, sonstiges)
        * insert addItem(3.2.5.1, #string, [[Welche sonstige(n) chronischen Erkrankung(en)?]])
    * item[+]
      * insert addItem(3.2.6, #boolean, [[Hat Ihr Kind eine körperliche, geistige oder seelische Behinderung?]])
      * item[+]
        * insert EnableWhenBoolean(3.2.6, =, true)
        * insert addItem(3.2.6.1, #string, Welche Behinderung?)
    * item[+]
      * insert addItem(3.2.7, #boolean, Schilddrüsenerkrankung)
      * item[+]
        * insert EnableWhenBoolean(3.2.7, =, true)
        * insert addItem(3.2.6.1, #string, Welche Schilddrüsenerkrankung?)        
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0a, #boolean, Besucht Ihr Kind weniger als 5 Stunden täglich den Kindergarten?)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
  * item[+]
    * insert addItem(4.1, #integer, [[Besuch Kita/Krippe (Dauer in Jahren)]])
  * item[+]
    * insert addItem(4.2, #integer, Dauer Kita/Krippe pro Woche in Stunden)
  * item[+]
    * insert addItem(4.3, #integer, Dauer Kita/Krippe pro Woche in Stunden)
  * item[+]
    * insert addItem(4.4, #date, [[Angabe des Datums, seit wann das Kind keine Kita mehr besucht.]])
  * item[+]
    * insert addItem(4.5, #boolean, Besucht ihr Kind eine andere Form der Tagesbetreuung?)
  * item[+]
    * insert addItem(4.6, #string, Name des Kindergartens)
    * enableWhen[+]
      * question = "4.5"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItem(4.7, #boolean, Erfolgte die Betreuung auch durch eine Tagesmutter?)
  * item[+]
    * insert addItem(4.8, #date, Seit welchem Jahr ist die Tagesmutter im Einsatz?)
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.1, #integer, [[Dauer der Schwangerschaft (in Wochen)]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
  * item[+]
    * insert addItem(5.3b, #integer, [[Kopfumfang (in cm)]])
  * item[+]
    * insert addItem(5.3c, #integer, [[In welcher SS-Woche wurde ihr Kind geboren?]])
  * item[+]
    * insert addItem(5.4, #boolean, [[Waren Geburtsgewicht und Geburtslänge normal?]])
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * item[+]
      * insert EnableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
    * item[+]
      * insert EnableWhenBoolean(5.6, =, true)
      * insert addItem(5.6.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItem(5.7, #integer, [[Stillzeit in Monaten]])
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * insert addItem(6.1, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
    * repeats = true
  * item[+]
    * answerValueSet = Canonical(UeberwiegendGesprocheneSpracheVS)
    * insert addItem(6.1a, #choice, [[Welche Sprachen wurden mit dem Kind in den ersten 4 Lebensjahren überwiegend gesprochen?]])
    * repeats = true    
  * item[+]
    * answerValueSet = Canonical(SEU-AF-AuswaehlbareElternspracheVS)
    * insert addItem(6.2, #choice, [[Muttersprache des Kindes]])
  * item[+]
    * answerValueSet = Canonical(JaNeinAngemeldetVS)
    * insert addItem(6.3, #choice, [[Teilnahme des Kindes an einem Deutschkurs]])
  * item[+]
    * insert addItem(6.4, #boolean, [[Sprachauffälligkeiten]])
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
    * insert addItem(7.4, #integer, [[Erste Worte ab? (Monate)]])
  * item[+]
    * insert addItem(7.5, #integer, [[Erste Sätze ab? (Monate)]])
  * item[+]
    * answerValueSet = Canonical(EntwicklungVS)
    * insert addItem(7.6a, #choice, [[Tags und nachts sauber]])
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
  * item[+]
    * insert addItem(7.10, #text, [[Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens]])
  * item[+]
    * insert addItem(7.11, #open-choice, [[Auffälligkeit des Verhaltens]])
  * item[+]
    * insert addItem(7.12, #boolean, [[Sorgen Sie sich um die Entwicklung ihres Kindes?]])
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
  * item[+]
    * insert addItem(8.2, #text, [[Freitext Angabe, abhängig zu 'Regelmäßig_Behandlung'. Angabe zu Grund und Fachrichtung]])
    * enableWhen[+]
      * question = "8.1"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItem(8.3, #boolean, [[Sehstörung vorhanden?]])
  * item[+]
    * insert addItem(8.4, #boolean, [[Sprachstörung vorhanden?]])
  * item[+]
    * insert addItem(8.5, #boolean, [[Schielbehandlung?]])
  * item[+]
    * insert addItem(8.6, #boolean, [[Brillenträger?]])
  * item[+]
    * insert addItem(8.7, #date, [[Letzte Untersuchung beim Augenarzt?]])
  * item[+]
    * insert addItem(8.8, #date, [[Letzte Untersuchung beim Zahnarzt?]])
  * item[+]
    * insert addItem(8.9, #boolean, [[Schwere Hörstörung vorhanden?]])
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
    * insert addItem(8.10g, #group, [[Stoffwechsel & Hormonstörungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(StoffwechselstoerungVS)
      * insert addItem(8.10g.1, #choice, [[Art der Störung oder Erkrankung]])
    * item[+]
      * insert addItem(8.10g.2, #date, [[Beginn der Erkrankung]])
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
      * answerValueSet = Canonical(ErkrankungenLetztesJahrVS)
      * insert addItem(8.13.g.1, #open-choice, [[Erkrankung]])
    * item[+]        
      * insert addItem(8.13.g.2, #date, [[Erkrankungsbeginn]])
  * item[+]
    * insert addItem(8.14, #boolean, [[Chronische Erkrankung vorhanden]])
    * item[+]
      * insert addItem(8.14.1, #string, [[Welche Erkrankung?]])
      * insert EnableWhenBoolean(8.14, =, true)
      * repeats = true 
  * item[+]
    * insert addItemWithSource(8.14b, #text, [[Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt]], #DE-BW)    
  * item[+]
    * insert addItem(8.14a, #boolean, [[Muss Ihr Kind krankheitsbedingt eine spezielle Diät einhalten?]])      
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert EnableWhenBoolean(8.15, =, true)
  * item[+]
    * insert addItem(8.16, #boolean, [[Allergietest]])
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * item[+]
      * insert EnableWhenCode(8.16a, =, AtopischeErkrankungenCS, sonstiges)
      * insert addItem(8.16a.1, #string, [[Welche sonstigen Allergien?]])  
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
    * insert EnableWhenBoolean(8.21, =, true)
    * item[+]
      * insert addItem(8.21.g.1, #text, [[Welche Behinderung]])
    * item[+]
      * insert addItem(8.21.g.2, #text, [[Behinderung Merkzeichen]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert EnableWhenBoolean(8.23, =, true)
    * insert addItem(8.23.1, #string, [[Welches Medikament]])   
    * repeats = true
  * item[+]
    * insert addItem(8.24, #boolean, [[Medikamenteneinnahme in der Schulzeit?]])
  * item[+]
    * insert EnableWhenBoolean(8.24, =, true)
    * insert addItem(8.24.1, #text, [[Welches Medikament]])
    * repeats = true
  * item[+]
    * insert addItem(8.25, #boolean, [[Eine Erkrankung, die in einer Notfallsituation beachtet werden muss]])
  * item[+]
    * insert EnableWhenBoolean(8.25, =, true)
    * insert addItem(8.25.1, #text, [[Welche Erkrankung]])
    * repeats = true
  * item[+]
    * insert addItem(8.26, #text, [[Sonstige Probleme]])
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde ihr Kind operiert]])
    * item[+]
      * insert addItem(8.27.1, #choice, [[Wie fand die Operation statt?]])
      * insert EnableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(VersorgungsartVS)
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte ihr Kinde einen Unfall]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(UnfallOrtVS)
      * insert addItem(8.28.g.1, #choice, [[Ort des Unfall]])
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * insert addItem(8.28.g.2, #choice, [[Art des Unfalls]])
  * item[+]
    * insert addItem(8.29, #choice, [[Hat Ihr Kind häufiger Befindlichkeitsstörungen?]])
    * repeats = true 
    * answerValueSet = Canonical(AllgemeineBeschwerdenVS)
    * item[+]
      * insert addItem(8.29.1, #string, [[Welche sonstige Befindlichkeitstörung?]])
      * insert EnableWhenCode(8.29, =, AllgemeineBeschwerdenCS, sonstige)
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItem(9.1, #boolean, [[Teilnahme am Vorkurs Deutsch]])
  * item[+]
    * insert addItem(9.1a, #boolean, [[Ist Ihr Kind zurzeit in Therapie (z.B. Logopädie-, Ergotherapie, Psychotherapie, Krankengymnastik)?]])    
  * item[+]
    * insert addItem(9.2, #choice, [[Sprachtherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItemWithSource(9.2a, #choice, [[Sprachförderung]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
    * insert addItemWithSource(9.2a.1, #date, [[Begonnen]], #DE-BW)
    * insert EnableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
    * item[+]
    * insert addItemWithSource(9.2a.2, #date, [[Beendet]], #DE-BW)
    * insert EnableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
    * insert addItemWithSource(9.2b.1, #date, [[Begonnen]], #DE-BW)
    * insert EnableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
    * item[+]
    * insert addItemWithSource(9.2b.2, #date, [[Beendet]], #DE-BW)
    * insert EnableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2c, #choice, [[Ergotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
    * insert addItemWithSource(9.2c.1, #date, [[Begonnen]], #DE-BW)
    * insert EnableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y)
    * item[+]
    * insert addItemWithSource(9.2c.2, #date, [[Beendet]], #DE-BW)
    * insert EnableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y) 
  * item[+]
    * insert addItemWithSource(9.2d, #choice, [[Psychotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
    * insert addItemWithSource(9.2d.1, #date, [[Begonnen]], #DE-BW)
    * insert EnableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
    * item[+]
    * insert addItemWithSource(9.2d.2, #date, [[Beendet]], #DE-BW)
    * insert EnableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2e, #choice, [[Andere]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
    * insert addItemWithSource(9.2e.1, #date, [[Begonnen]], #DE-BW)
    * insert EnableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
    * item[+]
    * insert addItemWithSource(9.2e.2, #date, [[Beendet]], #DE-BW)
    * insert EnableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItem(9.3, #choice, [[Frühförderung]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.4, #choice, [[Ergotherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.5, #choice, [[Psychomotorik]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.6, #choice, [[Physiotherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.7, #choice, [[Psychologische Erziehungsberatung]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.8, #choice, [[Krankengymnastik]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.9, #choice, [[Integrative Betreuung]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItem(9.10, #text, [[Sonstige Förderung]])
  * item[+]
    * insert addItem(9.11.g, #group, [[Kuren]])
    * repeats = true
    * item[+]
      * insert addItem(9.11.g.1, #date, [[Wann]])
    * item[+]
      * insert addItem(9.11.g.2, #text, [[Behandlungsschwerpunkt]])
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
    * insert addItemWithSource(13.5a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)  
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItem(13.6.1, #text, Grund der Erwerbslosigkeit)
    * insert EnableWhenCode(13.6, =, ErwerbsstatusCS, nicht_erwerbstaetig)
  * item[+]
    * insert addItemWithSource(13.6a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS) 
  * item[+]
    * insert addItem(13.7, #integer, [[Anzahl der Kinder im Haushalt. Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet]])
  * item[+]
    * insert addItem(13.8, #integer, Anzahl der Erwachsene im Haushalt)
  * item[+]
    * insert addItem(13.8a, #integer, Anzahl der Kinder und Erwachsenen im Haushalt)
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