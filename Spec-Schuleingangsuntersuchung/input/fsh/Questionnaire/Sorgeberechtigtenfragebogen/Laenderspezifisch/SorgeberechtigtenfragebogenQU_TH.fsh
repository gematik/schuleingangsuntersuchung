Instance: Sorgeberechtigtenfragebogen_TH
InstanceOf: Questionnaire
Usage: #example
Title: "Sorgeberechtigtenfragebogen TH"
Description: "Sorgeberechtigtenfragebogen TH"
* contained[+] = LinksRechtsBeidseitsKeineAngabeVS
* contained[+] = ErkrankungenTHVS
* contained[+] = InfektionsKrankheitTHVS
* contained[+] = PflegegradVS
* contained[+] = UnfallOrtVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_HilfsmittelVS
* contained[+] = SEU_EF_HilfsmittelTHVS
* contained[+] = GeburtBesonderheitenVS
* contained[+] = VerhaltensauffaelligkeitenVS
* id = "SEU-Sorgeberechtigtenfragebogen-TH"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenTH"
* title = "SEU Sorgeberechtigtenfragebogen TH"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Sorgeberechtigtenfragebogen)
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
    * required = true

  * item[+]
    * insert addItemWithSource(0.10, #date, [[Datum der Untersuchung]], #DE-HB)
    * required = true
  * item[+]
    * insert addItemWithSource(0.13, #string, [[Ort der Untersuchung]], #DE-TH)
    * maxLength = 30
    * required = true

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
    * insert addItem(2.4, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
    * required = true
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItem(2.6, #string, Straße)
    * required = true
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
    * insert regEx([["^(\\+|0)(\\d|\\s)*\\d$"]])
  * item[+]
    * insert addItemWithSource(2.7a, #string, [[Handynummer]], #DE-HH)
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
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
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * required = true
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItemWithSource(5.5.1a, #choice, [[Falls ja, welche?]], #DE-TH)
      * answerValueSet = Canonical(GeburtBesonderheitenVS)
      * required = true
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
    * required = true
    * item[+]
      * insert enableWhenBoolean(5.6, =, true)
      * insert addItem(5.6.1, #string, [[Welche Auffälligkeit?]])
      * required = true
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.10a, #integer, [[Freies Laufen ab .. (Lebensmonat)]])
    * insert minValueInt(0)
    * required = true
  * item[+]
    * insert addItem(7.10b, #integer, [[Erste Worte sprechen (außer Mama, Papa) ab .. (Lebensmonat)]])
    * insert minValueInt(0)
    * required = true
  * item[+]
    * insert addItemWithSource(7.11c, #boolean, [[Besonderheiten der Entwicklung]], #DE-TH)
    * required = true
    * item[+]
      * insert addItemWithSource(7.11c.1, #text, [[Falls ja, welche?]], #DE-TH)
      * insert enableWhenBoolean(7.11c, =, true)
      * required = true
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
// Hilfsmittel
  * item[+]
    * insert addItemWithSource(8.6b, #boolean, [[Nutzt Ihr Kind Hilfsmittel?]], #DE-TH)
    * item[+]
      * insert addItemWithSource(8.6b.1, #choice, [[Falls ja, welche?]], #DE-TH)
      * insert enableWhenBoolean(8.6b, =, true)
      * answerValueSet = Canonical(SEU_EF_HilfsmittelTHVS)
      * repeats = true
      * required = true
// Erkrankungen
  * item[+]
    * insert addItemWithSource(8.14c, #open-choice, [[Welche der folgenden Krankheiten wurden bei Ihrem Kind jemals ärztlich diagnostiziert?]], #DE-TH)
    * answerValueSet = Canonical(ErkrankungenTHVS)
    * repeats = true
    * required = true
  * item[+]
    * insert addItemWithSource(8.14d, #open-choice, [[Welche der Infektionskrankheiten hat Ihr Kind durchgemacht?]], #DE-TH)
    * answerValueSet = Canonical(InfektionsKrankheitTHVS)
    * repeats = true
    * required = true
// Krankenhausaufenthalte
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * required = true
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
      * required = true
// Atopische Erkrankungen
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * required = true

// Familienanamnese
  * item[+]
    * insert addItemWithSource(8.16b, #boolean, [[Gibt es Gesundheitsstörungen in der Familie, von denen Sie wissen oder vermuten, dass sie Auswirkungen auf die Entwicklung oder Belastbarkeit Ihres Kindes haben könnten bzw. im Schulalltag zu berücksichtigen wären (z. B. Sehstörung, Hörstörung, Herz-Kreislauf-Erkrankung, Allergie, Asthma bronchiale, Epilepsie, Depression oder andere psychische Erkrankung, Rheuma, Diabetes mellitus, Krebserkrankung, andere schwere Erkrankung)]], #DE-TH)
    * required = true
    * item[+]
      * insert addItemWithSource(8.16b.1, #string, [[Wenn ja, welche?]], #DE-TH)
      * insert enableWhenBoolean(8.16b, =, true)
      * required = true
// Behinderungen und Pflegegrad
  * item[+]
    * insert addItemWithSource(8.22a, #boolean, [[Wurde bei Ihrem Kind eine Behinderung festgestellt?]], #DE-TH)
    * required = true
    * item[+]
      * insert addItem(8.22a.1, #text, [[Welcher Behinderungsgrad?]])
      * insert enableWhenBoolean(8.22a, =, true)
      * required = true
  * item[+]
    * insert addItemWithSource(8.22b, #boolean, [[Ist Ihr Kind Inhaber eines Schwerbehindertenausweises?]], #DE-TH)
    * required = true
    * item[+]
      * insert addItem(8.22b.1, #integer, [[Welches Merkzeichen?]])
      * insert enableWhenBoolean(8.22b, =, true)
      * required = true
  * item[+]
    * insert addItemWithSource(8.22c, #boolean, [[Beansprucht Ihr Kind Leistungen der Pflegeversicherung?]], #DE-TH)
    * required = true
    * item[+]
      * insert addItem(8.22c.1, #choice, [[Welcher Pflegegrad?]])
      * insert enableWhenBoolean(8.22c, =, true)
      * answerValueSet = Canonical(PflegegradVS)
      * required = true
// Medikamente
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
    * required = true
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)
    * repeats = true
    * required = true
  * item[+]
    * insert addItemWithSource(8.25a, #boolean, [[Muss Ihr Kind ein Notfallset mit sich führen?]], #DE-TH)
    * item[+]
      * insert addItemWithSource(8.25a.1, #text, [[Falls ja, warum?]], #DE-TH)
      * insert enableWhenBoolean(8.25a, =, true)
    * item[+]
      * insert addItemWithSource(8.25a.2, #text, [[Namen der Notfallmedikamente]], #DE-TH)
      * insert enableWhenBoolean(8.25a, =, true)
// Verhaltensauffälligkeiten
  * item[+]
    * insert addItemWithSource(8.34a, #choice, [[Zeigte Ihr Kind in den vergangenen 12 Monaten folgende Verhaltensauffälligkeiten?]], #DE-TH)
    * answerValueSet = Canonical(VerhaltensauffaelligkeitenVS)
    * repeats = true
    * required = true
// Operationen
  * item[+]
    * insert addItemWithSource(8.27b, #boolean, [[Wurde Ihr Kind jemals operiert bzw. ist eine Operation geplant?]], #DE-TH)
    * required = true
    * item[+]
      * insert addItemWithSource(8.27b.1, #text, [[Falls ja, welche Operationen und wann?]], #DE-TH)
      * insert enableWhenBoolean(8.27b, =, true)
      * required = true
// Unfälle
  * item[+]
    * insert addItemWithSource(8.28b, #boolean, [[Hatte  Ihr Kind jemals einen Unfall, der ärztlich behandelt wurde?]], #DE-BB)
    * required = true
    * item[+]
      * insert addItemWithSource(8.28b.1, #text, [[Falls ja, welche Verletzung und wann?]], #DE-TH)
      * insert enableWhenBoolean(8.28b, =, true)
      * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.13a, #choice, [[Welche Behandlungen oder Unterstützungen hat Ihr Kind jemals erhalten?]], #DE-TH)
    * answerValueSet = Canonical(FoerderungVS)
    * repeats = true
    * required = true
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItemWithSource(11.4, #open-choice, [[Bei welchen Ärztinnen oder Ärzten haben Sie Ihr Kind in den vergangenen 12 Monaten vorgestellt?]], #DE-TH)
    * required = true
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItemWithSource(12.23, #boolean, [[Fährt Ihr Kind frei Fahrrad]], #DE-HB)
    * required = true
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.13a, #boolean, [[Datenschutzrechtliche Einwilligungerklärung im Rahmen der SEU über Betreuung des Kindes, Angaben zu Gesundheitsstörungen in d. Fam. des Kindes sowie Angaben zur Schwangerschaft und Geburtsverlauf sowie Angaben des betreuenden Kinderarztes.]], #DE-TH)
    * required = true
