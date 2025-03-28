Instance: Elternbefragung_HH
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung HH"
Description: "Elternbefragung HH"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = ChronischeErkrankungenVS
* contained[+] = UnfallOrtVS
* contained[+] = SEU-UB-StaatsangehoerigkeitVS
* contained[+] = BezirkeHHVS
* contained[+] = PersonensorgeberechtigterBeziehungVS
* contained[+] = PersonensorgeberechtigterZusammenlebendVS
* id = "SEU-Elternbefragung-HH"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungHH"
* title = "SEU Elternfragebogen HH"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
    * required = true
  * item[+]
    * insert addItemWithSource(0.3, #choice, [[Mandant (Bezirk)]], #DE-HH)
    * answerValueSet = Canonical(BezirkeHHVS)
    * required = true
  * item[+]
    * insert addItemWithSource(0.4, #string, [[SOM Schulordnungsmerkmal]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.5, #string, [[Organisierende Schule]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.6, #string, [[Schulbezirk]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.7, #integer, [[Einschulungsjahr]], #DE-HH)
    * insert uunit(a, "Jahr")
    * required = true
  * item[+]
    * insert addItemWithSource(0.8, #string, [[Einrichtungsart]], #DE-HH)
  * item[+]
    * insert addItemWithSource(0.10, #date, [[Datum der Untersuchung]], #DE-HB)
    * required = true
  * item[+]
    * insert addItemWithSource(0.11, #string, [[Aufnahmeschule (bezeichnet die Schule zu der das  Kind wirklich geht)]], #DE-HB)
  * item[+]
    * insert addItemWithSource(0.12, #string, [[Ortsteilnummer (bezogen auf den Wohnort des Kindes)]], #DE-HB)
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
    * required = true
  * item[+]
    * insert addItemWithSource(1.1a, #string, [[Geburtsname des Kindes]], #DE-HH)
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItem(1.4, #choice, Staatsangehörigkeit)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.4b, #choice, [[Staatsangehörigkeit Mutter]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.4c, #choice, [[Staatsangehörigkeit Vater]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
    * required = true
  * item[+]
    * insert addItem(1.5, #choice, [[Geburtsland]])
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.5a, #choice, [[Geburtsland Mutter]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.5b, #choice, [[Geburtsland Vater]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.7, #string, Geburtsort)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
    * required = true
  * item[+]
    * insert addItem(1.9, #string, PLZ)
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
  * item[+]
    * insert addItem(1.11, #string, Straße)
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
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
    * required = true
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * insert addItem(2.1, #choice, Geschlecht)
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
    * required = true
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
    * insert addItemWithSource(2.7a, #string, [[Handynummer]], #DE-HH)
  * item[+]
    * insert addItem(2.8, #string, Email)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
    * required = true
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
  * item[+]
    * insert addItemWithSource(2.13, #choice, [[Zusammenlebend]], #DE-HH)
    * answerValueSet = Canonical(PersonensorgeberechtigterZusammenlebendVS)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
  * item[+]
    * insert addItemWithSource(3.1c, #integer, [[Kinder im Haushalt]], #DE-HH)
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
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.4, #choice, Erkrankung)
      * answerValueSet = Canonical(ChronischeErkrankungenVS)
      * repeats = true
    * item[+]
      * insert addItem(3.2.6, #boolean, [[Hat Ihr Kind eine körperliche, geistige oder seelische Behinderung?]])
      * item[+]
        * insert enableWhenBoolean(3.2.6, =, true)
        * insert addItem(3.2.6.1, #string, Welche Behinderung?)
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
    * insert addItem(4.1, #integer, [[Besuch Kita/Krippe (Dauer in Jahren)]])
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
    * insert addItemWithSource(4.10, #boolean, [[Bekommt oder wartet Ihr Kind auf eine spezielle Förderung oder Therapie?]], #DE-SN)
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
    * required = true
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
    * required = true
  * item[+]
    * insert addItem(5.3b, #integer, [[Kopfumfang (in cm)]])
    * required = true
  * item[+]
    * insert addItem(5.3c, #integer, [[In welcher SS-Woche wurde ihr Kind geboren?]])
    * required = true
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #string, [[Welche Auffälligkeit?]])
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
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.18, #boolean, [[Behindertenausweis vorhanden]])
  