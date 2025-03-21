Instance: ElternbefragungBEnew
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung BE neu"
Description: "Elternbefragung BE neu"
* contained[+] = GenderDEVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = ISO6392_LanguageVS
* contained[+] = ErkrankungVS
* contained[+] = SorgenKindVS
* contained[+] = SEU_EF_BerufsbildungVS
* contained[+] = SEUEFMedienkonsumBerlinVS
* id = "SEU-Elternbefragung-BE-neu2"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Berlin neu"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addItem(1, #group, [[Angaben zur Person]])
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(1.9, #string, PLZ)
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
  * item[+]
    * insert addItem(1.11, #string, Straße)
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.6, =, false)
      * item[+]
        * insert addItem(1.1.1, #group, Geschwister unter 18 Jahren)
        * repeats = true
        * item[+]
          * insert addItemWithSource(3.1.1.3, #string, [[Vorname des Geschwisters]], #DE-BE)
        * item[+]
          * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItemWithSource(2.10a, #boolean, [[Herkunftsland Deutsch?]], #DE-RP)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit) //repeat
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(6.1, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
    * repeats = true
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
* item[+]
  * insert addItem(3, #group,2. Erkrankungen des Kindes)
  * item[+]
    * answerValueSet = Canonical(ErkrankungVS)
    * insert addItem(8.11.g.1, #open-choice, [[Erkrankung]]) //open choice? muss noch optimiert werden
  * item[+]
    * insert addItemWithSource(8.25.2, #boolean, [[andere wichtige Erkrankungen/Allergien/Unfälle]], #DE-BE)
      * item[+]
        * insert enableWhenBoolean(8.25.2, =, true)
        * insert addItemWithSource(8.25.3, #text, [[wenn ja, welche]], #DE-BE)
      * item[+]
        * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
          * item[+]
            * insert addItem(8.23.1, #string, [[Welches Medikament]])
            * insert enableWhenBoolean(8.23, =, true)   
            * repeats = true
      * item[+]
        * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
          * item[+]
            * insert addItemWithSource(8.15.1.a, #integer, [[Anzahl der Krankenhausaufenthalte/Operationen]], #DE-BE)
            * insert enableWhenBoolean(8.15, =, true)  //muss noch optimiert werden
//Entwicklung des Kindes
* item[+]
  * insert addItem(4, #group,2. Erkrankungen des Kindes)
  * item[+]
    * insert addItemWithSource(9.6a, #boolean, [[Physiotherapie / Krankengymnastik]], #DE-BB)
  * item[+]
    * insert addItemWithSource(9.4a, #boolean, [[Ergotherapie]], #DE-BB)
  * item[+]
    * insert addItemWithSource(9.2ba, #boolean, [[Logopädie]], #DE-BB)
  * item[+]
    * insert addItemWithSource(9.7a, #boolean, [[Psychologische Erziehungsberatung]], #DE-BB)
  * item[+]
    * answerValueSet = Canonical(SorgenKindVS)
    * insert addItemWithSource(7.14, #choice, [[Machen Sie sich Sorgen um Ihr Kind wegen]], #DE-BE)
  * item[+]
    * insert addItemWithSource(8.30.1, #boolean, [[Nässt ihr Kind ein?]], #DE-BE)
//Betreuung des kindes
* item[+]
  * insert addItem(5, #group, Betreuung des Kindes)
  * item[+]
    * insert addItemWithSource(4.9, #date, [[Seit wann besucht das Kind eine Kita?]], #DE-SN)
  * item[+]
    * insert addItem(4.6b, #string, Name des Kindergartens)
// passt noch nicht
  * item[+]
    * insert addItem(4.4, #date, [[Angabe des Datums, seit wann das Kind keine Kita mehr besucht.]])
  * item[+]
    * insert addItem(4.5, #boolean, Besucht ihr Kind eine andere Form der Tagesbetreuung?)
//Lebensumfeld
* item[+]
  * insert addItem(6, #group, Lebensumfeld)
    //Kind lebt überwiegend bei fehlt noch
    //Schulabschluss fehlt noch
  * item[+]
    * insert addItem(13.3, #choice, Berufsabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
  * item[+]
    * insert addItem(13.4, #choice, Berufsabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
    //berufstätigkeit fehlt noch
  * item[+]
    * insert addItemWithSource(3.3, #integer, Aktuell im Haushalt lebende Erwachsene, #DE-BB) 
  * item[+]
    * insert addItemWithSource(3.1c, #integer, [[Kinder im Haushalt]], #DE-HH)
  * item[+]
    * insert addItemWithSource(12.4.1, #integer, [[Wieviele Personen sind Raucher/Dampfer]], #DE-BE)
  * item[+]
    * insert addItemWithSource(10.4c, #choice, [[Wieviele Stunden am Tag beschäftigt sich Ihr Kind im Durchschnitt mit elektronischen Geräten? (elektronische Geräte sind Fernsehen, DVD, Computer, Tablet, Smartphone, Playstation und andere) ]], #DE-BE)
    * answerValueSet = Canonical(SEUEFMedienkonsumBerlinVS)
  * item[+]
    * insert addItemWithSource(10.2.1, #boolean, [[Mein Kind hat einen eigenen Fernseher?]], #DE-BE)
  * item[+]
    * insert addItemWithSource(10.2.2, #boolean, [[andere eigene elektronische Geräte]], #DE-BE)
  * item[+]
    * insert enableWhenBoolean(10.2.2, =, true)
    * insert addItemWithSource(10.2.3, #text, [[wenn ja, welche]], #DE-BE)