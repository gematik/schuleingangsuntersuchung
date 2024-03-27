Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung"
Description: "Elternbefragung"
* contained[+] = NeinAbgeschlossenLaeuftGeplantVS
* id = "SEU-Elternbefragung"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * type = #string
    * linkId = "1.1"
    * text = "(1.1) Nachname des Kindes"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
        * valueString = "background-color: lime"
    * insert initialExpression("%patient.name[0].family")  
  * item[+]
    * type = #string
    * linkId = "1.2"
    * text = "(1.2) Vorname des Kindes"
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * type = #date
    * linkId = "1.3"
    * text = "(1.3) Geburtsdatum"
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * type = #choice
    * linkId = "1.4"
    * text = "(1.4) Staatsangehörigkeit"
  //TODO: initial expression
  * item[+]
    * type = #choice
    * linkId = "1.5"
    * text = "(1.5) Geburtsland"
  * item[+]
    * type = #boolean
    * linkId = "1.6"
    * text = "(1.6) In Deutschland geboren"
  * item[+]
    * linkId = "1.6.1"
    * type = #date
    * text = "(1.6.1) Seit wann wohnt das Kind in Deutschland?"  
    * enableWhen[+]
      * question = "1.6"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * type = #string
    * linkId = "1.7"
    * text = "(1.7) Geburtsort"
  * item[+]
    * type = #choice
    * linkId = "1.8"
    * text = "(1.8) Geschlecht"
  * item[+]
    * type = #string
    * linkId = "1.9"
    * text = "(1.9) PLZ"
  * item[+]
    * type = #string
    * linkId = "1.10"
    * text = "(1.10) Wohnort"
  * item[+]
    * type = #string
    * linkId = "1.11"
    * text = "(1.11) Straße"
  * item[+]
    * type = #choice
    * linkId = "1.12"
    * text = "(1.12) Kind lebt hauptsächlich bei"
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
    * text = "(1.12.1) Kind lebt hauptsächlich bei"
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * type = #group
  * linkId = "2"
  * text = "(2) Personenbezogene Daten Personenberechtigter"
  * item[+]
    * type = #choice
    * linkId = "2.1"
    * text = "(2.1) Anrede"
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
    * type = #choice
    * linkId = "2.9"
    * text = "(2.9) Staatsangehörigkeit"
  * item[+]
    * type = #choice
    * linkId = "2.10"
    * text = "(2.10) Herkunftsland"
  * item[+]
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
      * type = #choice
      * linkId = "3.2.4"
      * text = "(3.2.4) Erkrankung"
    * item[+]
      * type = #choice
      * linkId = "3.2.5"
      * text = "(3.2.5) Chronische Erkrankung"
    * item[+]
      * type = #choice
      * linkId = "3.2.6"
      * text = "(3.2.6) Behinderung"
    * item[+]
      * type = #choice
      * linkId = "3.2.7"
      * text = "(3.2.7) Schilddrüsenerkrankung"
//********************************************
// Kinderbetreuung
* item[+]
  * type = #group
  * linkId = "4"
  * text = "(4) Kinderbetreuung"
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
    * linkId = "5.3"
    * text = "(5.3) Geburtslänge (in cm)"
  * item[+]
    * type = #boolean
    * linkId = "5.4"
    * text = "(5.4) Waren Geburtsgewicht und Geburtslänge normal?"
  * item[+]
    * type = #choice
    * linkId = "5.5"
    * text = "(5.5) Auffälligkeit bei der Geburt"
    * repeats = true
  * item[+]
    * type = #choice
    * linkId = "5.6"
    * text = "(5.6) Auffälligkeit in der Schwangerschaft"
    * repeats = true
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
    * type = #choice
    * linkId = "6.1"
    * text = "(6.1) Welche Sprachen werden Zuhause gesprochen?"
    * repeats = true
  * item[+]
    * type = #choice
    * linkId = "6.2"
    * text = "(6.2) Muttersprache des Kindes"
  * item[+]
    * type = #choice
    * linkId = "6.3"
    * text = "(6.3) Teilnahme des Kindes an einem Deutschkurs"
  * item[+]
    * type = #boolean
    * linkId = "6.4"
    * text = "(6.4) Sprachauffälligkeiten"
  * item[+]
    * type = #choice
    * linkId = "6.5"
    * text = "(6.5) Kontakt zu Deutschsprechenden"
  * item[+]
    * type = #group
    * linkId = "6.6"
    * text = "(6.6) Kontakt zu Deutschprechenden seit Alter:"
    * enableWhen[+]
      * question = "6.5"
      * operator = #=
      * answerCoding = #nichtSeitGeburt
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
    * type = #choice
    * linkId = "7.9"
    * text = "(7.9) Links- oder Rechtshänder"
  * item[+]
    * type = #text
    * linkId = "7.10"
    * text = "(7.10) Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens"
  * item[+]
    * type = #choice
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
      * type = #open-choice
      * linkId = "8.13.g.1"
      * text = "(8.13.g.1) Erkrankung"
    * item[+]        
      * type = #date
      * linkId = "8.13.g.2"
      * text = "(8.13.g.2) Erkrankungsbeginn"
    // TODO: VS Binding: nein
  * item[+]
    * type = #open-choice
    * linkId = "8.14"
    * text = "(8.14) Chronische Erkrankung"
    * repeats = true  
  * item[+]
    * type = #boolean
    * linkId = "8.15"
    * text = "(8.15) Krankenhausaufenthalt"
  * item[+]
    * type = #boolean
    * linkId = "8.16"
    * text = "(8.16) Allergietest"
  * item[+]
    * type = #boolean
    * linkId = "8.17"
    * text = "(8.17) Entwicklungsdiagnostik"
  * item[+]
    * type = #boolean
    * linkId = "8.18"
    * text = "(8.18) Behindertenausweis vorhanden"
  * item[+]
    * type = #choice
    * linkId = "8.19"
    * text = "(8.19) Grad der Behinderung"
  * item[+]
    * type = #choice
    * linkId = "8.20"
    * text = "(8.20) Pflegegrad"
  * item[+]
    * type = #open-choice
    * linkId = "8.21"
    * text = "(8.21) Schwere Behinderung"
  * item[+]
    * type = #choice
    * linkId = "8.22"
    * text = "(8.22) Behinderung Merkzeichen"
  * item[+]
    * type = #open-choice
    * linkId = "8.23"
    * text = "(8.23) Regelmäßige Medikamenteneinnahme"
  * item[+]
    * type = #open-choice
    * linkId = "8.24"
    * text = "(8.24) Medikamenteneinnahme in der Schulzeit"
  * item[+]
    * type = #open-choice
    * linkId = "8.25"
    * text = "(8.25) Eine Erkrankung, die in einer Notfallsituation beachtet werden muss"
  * item[+]
    * type = #text
    * linkId = "8.26"
    * text = "(8.26) Sonstige Probleme"
  * item[+]
    * type = #boolean
    * linkId = "8.27"
    * text = "(8.27) Wurde ihr Kind operiert"
  * item[+]
    * type = #group
    * linkId = "8.28.g"
    * text = "(8.28.g) Hatte ihr Kinde einen Unfall"
    * repeats = true
    * item[+]
      * type = #choice
      * linkId = "8.28.g.1"
      * text = "(8.28.g.1) Ort des Unfall"
    * item[+]
      * type = #choice
      * linkId = "8.28.g.2"
      * text = "(8.28.g.2) Art des Unfalls"
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
    * type = #choice
    * linkId = "9.2"
    * text = "(9.2) Sprachtherapie"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.3"
    * text = "(9.3) Frühförderung"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.4"
    * text = "(9.4) Ergotherapie"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.5"
    * text = "(9.5) Psychomotorik"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.6"
    * text = "(9.6) Physiotherapie"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.7"
    * text = "(9.7) Psychologische Erziehungsberatung"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.8"
    * text = "(9.8) Krankengymnastik"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * type = #choice
    * linkId = "9.9"
    * text = "(9.9) Integrative Betreuung"
    * answerValueSet = Canonical(NeinAbgeschlossenLaeuftGeplantVS)
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
  * item[+]
    * insert addItem(12.2, #choice, Beratung Sozialpädiatrisches Zentrum SPZ)
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
  * item[+]
    * insert addItem(12.6, #text, Stärken/Begabung/Besonderheiten des Kindes)
  * item[+]
    * insert addItem(12.7, #boolean, Regelmäßig Sport)
  * item[+]
    * insert addItem(12.8, #text, Sportart und Verein)
  * item[+]
    * insert addItem(12.9, #boolean, Schwimmfähig)
  * item[+]
    * insert addItem(12.10, #boolean, Seepferdchenabzeichen)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItem(13.1, #choice, Schulabschluss 1. Elternteil)
  * item[+]
    * insert addItem(13.2, #choice, Schulabschluss 2. Elternteil)
  * item[+]
    * insert addItem(13.3, #choice, Berufsabschluss 1. Elternteil)
  * item[+]
    * insert addItem(13.4, #choice, Berufsabschluss 2. Elternteil)
  * item[+]
    * insert addItem(13.5, #choice, Berufstätigkeit 1. Elternteil)
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
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