Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung"
Description: ""
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Maximaldatensatz"
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
    * linkId = "1.11"
    * text = "Straße"
  * item[+]
    * type = #choice
    * linkId = "1.12"
    * text = "Kind lebt hauptsächlich bei"
  // Freitext falls Kind bei "other" lebt
  * item[+]
    * enableWhen[+]
      * question = "1.12"
      * operator = #=
      * answerCoding
  // TODO Add System        
        * code = #other
    * type = #string
    * linkId = "1.12.1"
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
    * linkId = "2.8"
    * text = "Email"
  * item[+]
    * type = #choice
    * linkId = "2.9"
    * text = "Staatsangehörigkeit"
  * item[+]
    * type = #choice
    * linkId = "2.10"
    * text = "Herkunftsland"
  * item[+]
    * type = #choice
    * linkId = "2.11"
    * text = "Muttersprache"
  * item[+]
    * type = #date
    * linkId = "2.12"
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
      * linkId = "3.1.1.2"
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
    * repeats = true
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
    * linkId = "7.8.1"
    * text = "Welche Besonderheiten lagen vor?"
    * enableWhen[+]
      * question = "7.8"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * type = #choice
    * linkId = "7.9"
    * text = "Links- oder Rechtshänder"
  * item[+]
    * type = #text
    * linkId = "7.10"
    * text = "Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens"
  * item[+]
    * type = #choice
    * linkId = "7.11"
    * text = "Auffälligkeit des Verhaltens"  
  * item[+]
    * type = #boolean
    * linkId = "7.12"
    * text = "Sorgen Sie sich um die Entwicklung ihres Kindes?"
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * type = #group
  * linkId = "8"
  * text = "Erkrankungen und gesundheitliche Einschränkungen"
  * item[+]
    * type = #boolean
    * linkId = "8.1"
    * text = "In regelmäßiger ärtzlicher bzw. psychologischer Behandlung"
  * item[+]
    * type = #text
    * linkId = "8.2"
    * text = "Freitext Angabe, abhängig zu 'Regelmäßig_Behandlung'. Angabe zu Grund und Fachrichtung"
    * enableWhen[+]
      * question = "8.1"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "8.3"
    * text = "Sehstörung vorhanden?"
  * item[+]
    * type = #boolean
    * linkId = "8.4"
    * text = "Sprachstörung vorhanden?"
  * item[+]
    * type = #boolean
    * linkId = "8.5"
    * text = "Schielbehandlung?"
  * item[+]
    * type = #boolean
    * linkId = "8.6"
    * text = "Brillenträger?"
  * item[+]
    * type = #date
    * linkId = "8.7"
    * text = "Letzte Untersuchung beim Augenarzt?"
  * item[+]
    * type = #date
    * linkId = "8.8"
    * text = "Letzte Untersuchung beim Zahnarzt?"
  * item[+]
    * type = #boolean
    * linkId = "8.9"
    * text = "Schwere Hörstörung vorhanden?"
  * item[+]
    * type = #group
    * linkId = "8.9.G"
    * text = "Details: Angeborene schwere Hörstörung"
    * enableWhen[+]
      * question = "8.9"
      * operator = #=
      * answerBoolean = true
    * item[+]
      * type = #group
      * linkId = "8.9.G.hoergeraete.G"
      * text = "Hörgeräte"
      * repeats = true
      * item[+]
        * type = #choice
        * linkId = "8.9.G.hoergeraete.G.1"
        * text = "Höregerätseite"
      * item[+]
        * type = #date
        * linkId = "8.9.G.hoergeraete.G.2"
        * text = "Beginn des Tragens"
    * item[+]
      * type = #group
      * linkId = "8.9.G.cochlea.G"
      * text = "Cochleaimplantate"
      * repeats = true
      * item[+]
        * type = #choice
        * linkId = "8.9.G.cochlea.G.1"
        * text = "Cochleaimplantat-Seite"
      * item[+]
        * type = #date
        * linkId = "8.9.G.cochlea.G.2"
        * text = "Beginn des Tragens"
  * item[+]
    * type = #group
    * linkId = "8.10g"
    * text = "Stoffwechsel & Hormonstörungen"
    * repeats = true
    * item[+]
      * type = #choice
      * linkId = "8.10g.1"
      * text = "Art der Störung oder Erkrankung"
    * item[+]
      * type = #date
      * linkId = "8.10g.2"
      * text = "Beginn der Erkrankung"
  * item[+]
    * type = #group
    * linkId = "8.11.g"
    * text = "Erkrankungen"
    * repeats = true
    * item[+]
      * type = #open-choice
      * linkId = "8.11.g.1"
      * text = "Erkrankung"
    * item[+]  
      * type = #date
      * linkId = "8.11.g.2"
      * text = "Erkrankungsbeginn"
    * item[+]        
      * type = #boolean
      * linkId = "8.11.g.3"
      * text = "Durch Ärzt:in festgestellt"
  * item[+]
    * type = #group
    * linkId = "8.12.g"
    * text = "Infektionskrankheiten"
    * repeats = true
    * item[+]
      * type = #open-choice
      * linkId = "8.12.g.1"
      * text = "Infektionskrankheit"
    * item[+]  
      * type = #date
      * linkId = "8.12.g.2"
      * text = "Erkrankungsbeginn"
  * item[+]
    * type = #group
    * linkId = "8.13.g"
    * text = "Erkrankungen im letzten Jahr"
    * repeats = true
    * item[+]
      * type = #open-choice
      * linkId = "8.13.g.1"
      * text = "Erkrankung"
    * item[+]        
      * type = #date
      * linkId = "8.13.g.2"
      * text = "Erkrankungsbeginn"
// TODO: VS Binding: nein
  * item[+]
    * type = #open-choice
    * linkId = "8.14"
    * text = "Chronische Erkrankung"
    * repeats = true  
  * item[+]
    * type = #boolean
    * linkId = "8.15"
    * text = "Krankenhausaufenthalt"
  * item[+]
    * type = #boolean
    * linkId = "8.16"
    * text = "Allergietest"
  * item[+]
    * type = #boolean
    * linkId = "8.17"
    * text = "Entwicklungsdiagnostik"
  * item[+]
    * type = #boolean
    * linkId = "8.18"
    * text = "Behindertenausweis vorhanden"
  * item[+]
    * type = #choice
    * linkId = "8.19"
    * text = "Grad der Behinderung"
  * item[+]
    * type = #choice
    * linkId = "8.20"
    * text = "Pflegegrad"
  * item[+]
    * type = #open-choice
    * linkId = "8.21"
    * text = "Schwere Behinderung"
  * item[+]
    * type = #choice
    * linkId = "8.22"
    * text = "Behinderung Merkzeichen"
  * item[+]
    * type = #open-choice
    * linkId = "8.23"
    * text = "Regelmäßige Medikamenteneinnahme"
  * item[+]
    * type = #open-choice
    * linkId = "8.24"
    * text = "Medikamenteneinnahme in der Schulzeit"
  * item[+]
    * type = #open-choice
    * linkId = "8.25"
    * text = "Eine Erkrankung, die in einer Notfallsituation beachtet werden muss"
  * item[+]
    * type = #text
    * linkId = "8.26"
    * text = "Sonstige Probleme"
  * item[+]
    * type = #boolean
    * linkId = "8.27"
    * text = "Wurde ihr Kind operiert"
  * item[+]
    * type = #group
    * linkId = "8.28.g"
    * text = "Hatte ihr Kinde einen Unfall"
    * repeats = true
    * item[+]
      * type = #choice
      * linkId = "8.28.g.1"
      * text = "Ort des Unfall"
    * item[+]
      * type = #choice
      * linkId = "8.28.g.2"
      * text = "Art des Unfalls"
//********************************************
// Förderungen
* item[+]
  * type = #group
  * linkId = "9"
  * text = "Förderungen"
  * item[+]
    * type = #boolean
    * linkId = "9.1"
    * text = "Teilnahme am Vorkurs Deutsch"
  * item[+]
    * type = #choice
    * linkId = "9.2"
    * text = "Sprachtherapie"
  * item[+]
    * type = #choice
    * linkId = "9.3"
    * text = "Frühförderung"
  * item[+]
    * type = #choice
    * linkId = "9.4"
    * text = "Ergotherapie"
  * item[+]
    * type = #choice
    * linkId = "9.5"
    * text = "Psychomotorik"
  * item[+]
    * type = #choice
    * linkId = "9.6"
    * text = "Physiotherapie"
  * item[+]
    * type = #choice
    * linkId = "9.7"
    * text = "Psychologische Erziehungsberatung"
  * item[+]
    * type = #choice
    * linkId = "9.8"
    * text = "Krankengymnastik"
  * item[+]
    * type = #choice
    * linkId = "9.9"
    * text = "Integrative Betreuung"
  * item[+]
    * type = #text
    * linkId = "9.10"
    * text = "Sonstige Förderung"
  * item[+]
    * type = #group
    * linkId = "9.11.g"
    * text = "Kuren"
    * repeats = true
    * item[+]
      * type = #date
      * linkId = "9.11.g.1"
      * text = "Wann"
    * item[+]
      * type = #text
      * linkId = "9.11.g.2"
      * text = "Behandlungsschwerpunkt"
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup("10", "Medienkonsum")
  * item[+]
    * insert addItem("10.1", #integer, "Durchschnittlich pro Tag am Fernseher/Smartphone/Tablet/Spielkonsole/Computer")
    * insert uunit(h, "Stunden")
  * item[+]
    * insert addItem("10.2", #boolean, "Fernsehgerät/Computer/Spielkonsole im Zimmer?")
//********************************************
// Arzt
* item[+]
  * insert addGroup("11", "Arzt")
  * item[+]
    * insert addItem("11.1", #boolean, "Hat das Kind bislang ärztliche Behandlung oder Untersützung erhalten?")
  * item[+]
    * insert addItem("11.2", #string, "Name Kinderarzt")
  * item[+]
    * insert addItem("11.3", #string, "Name Facharzt")
//********************************************
// Sonstiges
* item[+]
  * insert addGroup("12", "Sonstiges")
  * item[+]
    * insert addItem("12.1", #choice, "Beratung Erziehungsberatungsstelle")
  * item[+]
    * insert addItem("12.2", #choice, "Beratung Sozialpädiatrisches Zentrum SPZ")
  * item[+]
    * insert addItem("12.3", #boolean, "Teilnahme Netzwerk Gesunde Kinder")
    * item[+]
      * insert addItem("12.3.1", #integer, "Wie lange?")
      * insert uunit(a, "Jahre")
      * enableWhen[+]
        * question = "12.3"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * insert addItem("12.4", #boolean, "KISS Sprachscreening")
  * item[+]
    * insert addItem("12.5", #choice, "Raucherhaushalt")
  * item[+]
    * insert addItem("12.6", #text, "Stärken/Begabung/Besonderheiten des Kindes")
  * item[+]
    * insert addItem("12.7", #boolean, "Regelmäßig Sport")
  * item[+]
    * insert addItem("12.8", #text, "Sportart und Verein")
  * item[+]
    * insert addItem("12.9", #boolean, "Schwimmfähig")
  * item[+]
    * insert addItem("12.10", #boolean, "Seepferdchenabzeichen")
//********************************************
// Sonstiges
* item[+]
  * insert addGroup("13", "Informationen Eltern")
  * item[+]
    * insert addItem("13.1", #choice, "Schulabschluss 1. Elternteil")
  * item[+]
    * insert addItem("13.2", #choice, "Schulabschluss 2. Elternteil")
  * item[+]
    * insert addItem("13.3", #choice, "Berufsabschluss 1. Elternteil")
  * item[+]
    * insert addItem("13.4", #choice, "Berufsabschluss 2. Elternteil")
  * item[+]
    * insert addItem("13.5", #choice, "Berufstätigkeit 1. Elternteil")
  * item[+]
    * insert addItem("13.6", #choice, "Berufstätigkeit 2. Elternteil")
  * item[+]
    * insert addItem("13.7", #integer, [["Anzahl der Kinder im Haushalt. Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet"]])
  * item[+]
    * insert addItem("13.8", #integer, "Anzahl der Erwachsene im Haushalt")
  * item[+]
    * insert addItem("13.9", #date, "Datum seit dem der 1. Elternteil in Deutschland lebt.")
  * item[+]
    * insert addItem("13.10", #date, "Datum seit dem der 2. Elternteil in Deutschland lebt.")
  * item[+]
    * insert addItem("13.11", #choice, "Wer hat diesen Fragebogen ausgefüllt")
  * item[+]
    * insert addItem("13.12", #boolean, [["Einwilligung zur Datenerhebung früherer Untersuchungen, welche beim Gesundheitsamt vorliegen"]])
  * item[+]
    * insert addItem("13.13", #boolean, [["Einwilligung zur Einsicht von Unterlagen zur Frühförderung, falls diese vorliegen"]])
  * item[+]
    * insert addItem("13.14", #boolean, "Ob das Kind an einer Nachmittagsbetreuung teilnehmen soll")
  * item[+]
    * insert addItem("13.15", #boolean, "Arbeitet der 1. Elternteil im Schichtdienst?")
  * item[+]
    * insert addItem("13.16", #boolean, "Arbeitet der 2. Elternteil im Schichtdienst?")