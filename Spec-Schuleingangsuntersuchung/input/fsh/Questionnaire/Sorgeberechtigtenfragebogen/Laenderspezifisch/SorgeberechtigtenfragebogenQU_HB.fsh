Instance: SorgeberechtigtenfragebogenHB
InstanceOf: Questionnaire
Usage: #example
Title: "Sorgeberechtigtenfragebogen HB"
Description: "Sorgeberechtigtenfragebogen HB"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = ISO6392_LanguageVS
* contained[+] = PersonensorgeberechtigterBeziehungVS
* contained[+] = PersonensorgeberechtigterZusammenlebendVS
* id = "SEU-Sorgeberechtigtenfragebogen-HB"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenHB"
* title = "SEU Elternfragebogen HB"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Sorgeberechtigtenfragebogen)
//********************************************
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
  * item[+]
    * insert addItemWithSource(0.9, #integer, [[Schulnummer der Anmeldeschule]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.10, #date, [[Datum der Untersuchung]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.11, #string, [[Aufnahmeschule (bezeichnet die Schule zu der das  Kind wirklich geht)]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.12, #string, [[Ortsteilnummer (bezogen auf den Wohnort des Kindes)]], #DE-HB)
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
    * insert regEx([["^[0-9]{5}$"]])
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

//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.1, #integer, [[Dauer der Schwangerschaft (in Wochen)]])
    * insert uunit(wk, "Wochen")
  * item[+]
    * insert addItemWithSource(5.1.b, #integer, [[Dauer der Schwangerschaft (ergänzende Tage)]], #DE-HB)
    * insert uunit(d, "Tage")
    * insert minValueInt(0)
    * insert maxValueInt(6)
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
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
