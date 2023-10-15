Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung"
Description: ""
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * type = #group
  * linkId = "1"
  * text = "Personenbezogene Daten Kind"
  * item[+]
    * type = #string
    * linkId = "1.1"
    * text = "Nachname des Kindes"
    * insert initialExpression("%patient.name[0].family")  
  * item[+]
    * type = #string
    * linkId = "1.2"
    * text = "Vorname des Kindes"
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * type = #date
    * linkId = "1.3"
    * text = "Geburtsdatum"
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * type = #choice
    * linkId = "1.4"
    * text = "Staatsangehörigkeit"
//TODO: initial expression
  * item[+]
    * type = #choice
    * linkId = "1.5"
    * text = "Geburtsland"
  * item[+]
    * type = #boolean
    * linkId = "1.6"
    * text = "In Deutschland geboren"
  
  * item[+]
    * linkId = "1.6.1"
    * type = #date
    * text = "Seit wann wohnt das Kind in Deutschland?"  
    * enableWhen[+]
      * question = "1.6"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * type = #string
    * linkId = "1.7"
    * text = "Geburtsort"
  * item[+]
    * type = #choice
    * linkId = "1.8"
    * text = "Geschlecht"
  * item[+]
    * type = #string
    * linkId = "1.9"
    * text = "PLZ"
  * item[+]
    * type = #string
    * linkId = "1.10"
    * text = "Wohnort"
  * item[+]
    * type = #string
    * linkId = "1.10"
    * text = "Straße"
  * item[+]
    * type = #choice
    * linkId = "1.11"
    * text = "Kind lebt hauptsächlich bei"
// Freitext falls Kind bei "other" lebt
  * item[+]
    * enableWhen[+]
      * question = "1.11.1"
      * operator = #=
      * answerCoding
// TODO Add System        
//          * system = $yesNo
        * code = #other
    * type = #string
    * linkId = "1.11.2"
    * text = "Kind lebt hauptsächlich bei"
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * type = #group
  * linkId = "2"
  * text = "Personenbezogene Daten Personenberechtigter"
  * item[+]
    * type = #choice
    * linkId = "2.1"
    * text = "Anrede"
  * item[+]
    * type = #string
    * linkId = "2.2"
    * text = "Nachname"
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * type = #string
    * linkId = "2.3"
    * text = "Vorname"
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * type = #string
    * linkId = "2.4"
    * text = "PLZ"
  * item[+]
    * type = #string
    * linkId = "2.5"
    * text = "Wohnort"
  * item[+]
    * type = #string
    * linkId = "2.6"
    * text = "Straße"
  * item[+]
    * type = #string
    * linkId = "2.7"
    * text = "Telefonnummer"
  * item[+]
    * type = #string
    * linkId = "2.7"
    * text = "Email"
  * item[+]
    * type = #choice
    * linkId = "2.8"
    * text = "Staatsangehörigkeit"
  * item[+]
    * type = #choice
    * linkId = "2.9"
    * text = "Herkunftsland"
  * item[+]
    * type = #choice
    * linkId = "2.9"
    * text = "Muttersprache"
  * item[+]
    * type = #date
    * linkId = "2.9"
    * text = "Geburtsdatum"
//********************************************
// Familiendaten
* item[+]
  * type = #group
  * linkId = "3"
  * text = "Familiendaten"
  * item[+]
    * type = #integer
    * linkId = "3.1"
    * text = "Anzahl der Geschwister"
  * item[+]
    * type = #group
    * linkId = "3.1.1"
    * text = "Details Geschwister"
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * item[+]
      * type = #date
      * linkId = "3.1.1.1"
      * text = "Geburtsdatum des Geschwisters"
    * item[+]
      * type = #choice
      * linkId = "3.1.1.1"
      * text = "Geschlecht des Geschwisters"
  * item[+]
    * type = #group
    * linkId = "3.2"
    * text = "Familiäre Vorgeschichte"
    * item[+]
      * type = #boolean
      * linkId = "3.2.1"
      * text = "Brillenträger"
    * item[+]
      * type = #boolean
      * linkId = "3.2.2"
      * text = "Lese/Rechtschreibschwäche"
    * item[+]
      * type = #boolean
      * linkId = "3.2.3"
      * text = "Rechenschwäche"
    * item[+]
      * type = #choice
      * linkId = "3.2.4"
      * text = "Erkrankung"
    * item[+]
      * type = #choice
      * linkId = "3.2.5"
      * text = "Chronische Erkrankung"
    * item[+]
      * type = #choice
      * linkId = "3.2.6"
      * text = "Behinderung"
    * item[+]
      * type = #choice
      * linkId = "3.2.7"
      * text = "Schilddrüsenerkrankung"
//********************************************
// Kinderbetreuung
* item[+]
  * type = #group
  * linkId = "4"
  * text = "Kinderbetreuung"
  * item[+]
    * type = #integer
    * linkId = "4.1"
    * text = "Besuch Kita/Krippe (Dauer in Jahren)"
  * item[+]
    * type = #integer
    * linkId = "4.2"
    * text = "Dauer Kita/Krippe pro Woche in Stunden"
  * item[+]
    * type = #integer
    * linkId = "4.3"
    * text = "Dauer Kita/Krippe pro Woche in Stunden"
  * item[+]
    * type = #date
    * linkId = "4.4"
    * text = "Angabe des Datums, seit wann das Kind keine Kita mehr besucht."
  * item[+]
    * type = #boolean
    * linkId = "4.5"
    * text = "Besucht ihr Kind eine andere Fomr der Tagesbetreuung?"
  * item[+]
    * type = #string
    * linkId = "4.6"
    * text = "Name des Kindergartens"
    * enableWhen[+]
      * question = "4.5"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "4.7"
    * text = "Erfolgte die Betreung auch durch eine Tagesmutter?"
  * item[+]
    * type = #date
    * linkId = "4.8"
    * text = "Seit welchem Jahr ist die Tagesmutter im Einsatz?"
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true      
  * item[+]
    * type = #boolean
    * linkId = "4.7"
    * text = "Erfolgte die Betreung auch durch eine Tagesmutter?"
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * type = #group
  * linkId = "5"
  * text = "Schwangerschaft und Geburt"
  * item[+]
    * type = #integer
    * linkId = "5.1"
    * text = "Dauer der Schwangerschaft (in Wochen)"
  * item[+]
    * type = #integer
    * linkId = "5.2"
    * text = "Geburtsgewicht (in Gramm)"
  * item[+]
    * type = #integer
    * linkId = "5.3"
    * text = "Geburtslänge (in cm)"
  * item[+]
    * type = #boolean
    * linkId = "5.4"
    * text = "Waren Geburtsgewicht und Geburtslänge normal?"
  * item[+]
    * type = #choice
    * linkId = "5.5"
    * text = "Auffälligkeit bei der Geburt"
    * repeats = true
  * item[+]
    * type = #choice
    * linkId = "5.6"
    * text = "Auffälligkeit in der Schwangerschaft"
    * repeats = true
  * item[+]
    * type = #integer
    * linkId = "5.7"
    * text = "Stillzeit in Monaten"
//********************************************
// Sprache
* item[+]
  * type = #group
  * linkId = "6"
  * text = "Sprache"
  * item[+]
    * type = #choice
    * linkId = "6.1"
    * text = "Welche Sprachen werden Zuhause gesprochen?"
    * repeats = #true
  * item[+]
    * type = #choice
    * linkId = "6.2"
    * text = "Mutersprache des Kindes"
  * item[+]
    * type = #choice
    * linkId = "6.3"
    * text = "Teilnahme des Kindes an einem Deutschkurs"
  * item[+]
    * type = #boolean
    * linkId = "6.4"
    * text = "Sprachauffälligkeiten"
  * item[+]
    * type = #choice
    * linkId = "6.5"
    * text = "Kontakt zu Deutschsprechenden"
  * item[+]
    * type = #group
    * linkId = "6.6"
    * text = "Kontakt zu Deutschprechenden seit Alter:"
    * enableWhen[+]
      * question = "6.5"
      * operator = #=
      * answerCoding = #nichtSeitGeburt
    * item[+]
    * type = #integer
    * linkId = "6.6.1"
    * text = "Jahre"
    * item[+]
    * type = #integer
    * linkId = "6.6.2"
    * text = "Monate"
//********************************************
// Entwicklung
* item[+]
  * type = #group
  * linkId = "7"
  * text = "Entwicklung"
  * item[+]
    * type = #boolean
    * linkId = "7.1"
    * text = "Sind Sie mit der Entwicklung ihres Kinds zufrieden?"
  * item[+]
    * type = #text
    * linkId = "7.2"
    * text = "Mit was sind Sie Unzufrieden?"
    * enableWhen[+]
      * question = "7.1"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * type = #integer
    * linkId = "7.3"
    * text = "Freies Laufen ab? (Monate)"
  * item[+]
    * type = #integer
    * linkId = "7.4"
    * text = "Erste Worte ab? (Monate)"
  * item[+]
    * type = #integer
    * linkId = "7.5"
    * text = "Erste Sätze ab? (Monate)"
  * item[+]
    * type = #integer
    * linkId = "7.6"
    * text = "Tagsüber ohne Windeln ab? (Jahre)"
  * item[+]
    * type = #integer
    * linkId = "7.7"
    * text = "Nachts ohne Windeln ab? (Jahre)"
  * item[+]
      * type = #boolean
      * linkId = "7.8"
      * text = "Besonderheiten in der Säuglings- u. Kleinkinderzeit?"
    * item[+]
      * type = #text
      * linkId = "7.9"
      * text = "Welche Besonderheiten lagen vor?"
      * enableWhen[+]
        * question = "7.8"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * type = #choice
    * linkId = "7.9"
    * text = "Links- oder Rechtshänder"