Instance: Elternbefragung_TH
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung TH"
Description: "Elternbefragung TH"
* contained[+] = LinksRechtsBeidseitsKeineAngabeVS
* contained[+] = ErkrankungVS
* contained[+] = InfektionsKrankheitVS
* contained[+] = PflegegradVS
* contained[+] = UnfallOrtVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_HilfsmittelVS
* id = "SEU-Elternbefragung-TH"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungTH"
* title = "SEU Elternfragebogen TH"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Elternbefragung)
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
    * insert addItem(5.4, #boolean, [[Waren Geburtsgewicht und Geburtslänge normal?]])
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    // "APGAR" steht im Deutschen für folgende Kennzeichen: Atmung, Puls, Grundtonus (Muskelspannung und Bewegung), Aussehen (Hautfarbe) und Reflexe
  * item[+]
    * insert addItemWithSource(5.11, #string, [[APGAR]], #DE-HB)
    * insert regEx([["^\\d{2}\\/\\d{2}\\/\\d{2}$"]])
    * insert entryFormat([[XX/XX/XX]])
    * required = true
    // "pH-Wert" ist eine Messung des Säurebasengrades im Blut oder einer Flüssigkeit. Ein typischer pH-Wert für ein neugeborenes Kind liegt zwischen 7,15 und 7,45.
  * item[+]
    * insert addItemWithSource(5.12, #string, [[pH- Wert]], #DE-HB)
    * insert regEx([["^\\d,\\d{2}$"]])
    * insert entryFormat([[X,XX]])
    * required = true
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
    * insert addItemWithSource(12.23, #boolean, [[Fährt Ihr Kind frei Fahrrad]], #DE-HB)
    * required = true
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.13a, #boolean, [[Datenschutzrechtliche Einwilligungerklärung im Rahmen der SEU über Betreuung des Kindes, Angaben zu Gesundheitsstörungen in d. Fam. des Kindes sowie Angaben zur Schwangerschaft und Geburtsverlauf sowie Angaben des betreuenden Kinderarztes.]], #DE-TH)
    * required = true
