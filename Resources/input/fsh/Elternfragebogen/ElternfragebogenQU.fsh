Instance: Elternbefragung
InstanceOf: Questionnaire
Usage: #example
* insert launchContext("patient", #Patient, "Patientenkontext")
* title = "Elternfragebogen"
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
      * linkId = "8.1.1"
      * text = "Freitext Angabe, abhängig zu 'Regelmäßig_Behandlung'. Angabe zu Grund und Fachrichtung"
      * enableWhen[+]
        * question = "8.1"
        * operator = #=
        * answerBoolean = true
    * item[+]
      * type = #boolean
      * linkId = "8.2"
      * text = "Sehstörung"
    * item[+]
      * type = #boolean
      * linkId = "8.3"
      * text = "Sprachstörung"
    * item[+]
      * type = #boolean
      * linkId = "8.4"
      * text = "Schielbehandlung"  
    * item[+]
      * type = #boolean
      * linkId = "8.5"
      * text = "Brillenträger"  
    * item[+]
      * type = #date
      * linkId = "8.6"
      * text = "Letzte Untersuchung beim Augenarzt"
    * item[+]
      * type = #date
      * linkId = "8.7"
      * text = "Letzte Untersuchung beim Zahnarzt"
    * item[+]
      * type = #boolean
      * linkId = "8.8"
      * text = "Schwere angeborene Hörstörung vorhanden?"
      * item[+]
        * type = #choice
        * linkId = "8.8.1"
        * text = "Wo besteht die schwere Hörstörung?"
        * enableWhen[+]
          * question = "8.8"
          * operator = #=
          * answerBoolean = true
      * item[+]
        * type = #boolean
        * linkId = "8.8.2"
        * text = "Werden Hörgeräte genutzt/benötigt?"
        * enableWhen[+]
          * question = "8.8"
          * operator = #=
          * answerBoolean = true
        * item[+]
          * type = #date
          * linkId = "8.8.2.1"
          * text = "Beginn Hörgerätnutzung (links)"
          * enableWhen[+]
            * question = "8.8.2"
            * operator = #=
            * answerBoolean = true
        * item[+]
          * type = #date
          * linkId = "8.8.2.2"
          * text = "Beginn Hörgerätnutzung (rechts)"
          * enableWhen[+]
            * question = "8.8.2"
            * operator = #=
            * answerBoolean = true
      * item[+]
        * type = #boolean
        * linkId = "8.8.3"
        * text = "Wurde ein Cochleaimplantat implantiert?"
        * enableWhen[+]
          * question = "8.8"
          * operator = #=
          * answerBoolean = true
        * item[+]
          * type = #date
          * linkId = "8.8.3.1"
          * text = "Implantation Cochlea (links)"
          * enableWhen[+]
            * question = "8.8.3"
            * operator = #=
            * answerBoolean = true
        * item[+]
          * type = #date
          * linkId = "8.8.3.2"
          * text = "Implantation Cochlea (rechts)"
          * enableWhen[+]
            * question = "8.8.3"
            * operator = #=
            * answerBoolean = true
    * item[+]
      * type = #boolean
      * linkId = "8.9"
      * text = "Stoffwechsel oder Hormonstörung vorhanden?"
      * item[+]
        * type = #choice
        * linkId = "8.9.1"
        * text = "Stoffwechsel oder Hormonstörung:"
        * repeats = true
        * enableWhen[+]
          * question = "8.9"
          * operator = #=
          * answerBoolean = true
        * item[+]
          * type = #date
          * linkId = "8.9.1.1"
          * text = "Diagnosestellung:"
          * repeats = true
          * enableWhen[+]
            * question = "8.9"
            * operator = #=
            * answerBoolean = true
    * item[+]
      * type = #open-choice
      * linkId = "8.10"
      * text = "Erkrankungen"
      * repeats = true
      * item[+]
        * type = #date
        * linkId = "8.10.1"
        * text = "Erstdiagnose"
        * repeats = true
        * enableWhen[+]
          * question = "8.10"
          * operator = #exists
          * answerBoolean = true
    * item[+]
      * type = #open-choice
      * linkId = "8.11"
      * text = "Durchgemachte Infektionskrankheiten"
      * repeats = true
      * item[+]
        * type = #date
        * linkId = "8.11.1"
        * text = "Wann?"
        * repeats = true
        * enableWhen[+]
          * question = "8.11"
          * operator = #=
          * answerCoding = #keine
    * item[+]
      * type = #boolean
      * linkId = "8.12"
      * text = "Allergietest durchgeführt"
    * item[+]
      * type = #boolean
      * linkId = "8.13"
      * text = "Entwicklungsdiagnostik durchgeführt"
    * item[+]
      * type = #boolean
      * linkId = "8.14"
      * text = "Behinderntenausweis vorhanden?"
      * item[+]
        * type = #choice
        * linkId = "8.14.1"
        * text = "Merkzeichen auf Behindertenausweis:"
        * repeats = true
        * enableWhen[+]
          * question = "8.14"
          * operator = #=
          * answerBoolean = true
    * item[+]
      * type = #choice
      * linkId = "8.15"
      * text = "Grad der Behinderung"
    * item[+]
      * type = #open-choice
      * linkId = "8.16"
      * text = "Art der Behinderung"
    * item[+]
      * type = #choice
      * linkId = "8.17"
      * text = "Pflegegrad"
    * item[+]
      * type = #choice
      * linkId = "8.18"
      * text = "Werden regelmäßig Medikamente eingenommen? Falls ja, welche?"
      * repeats = true
      * item[+]
        * type = #boolean
        * linkId = "8.18.1"
        * text = "Muss das Medikament in der Schule eingenommen werden?"
        * enableWhen[+]
          * question = "8.18"
          * operator = #!=
          * answerCoding = #keine
    * item[+]
      * type = #text
      * linkId = "8.18a"
      * text = "Erkrankungen, die in einer Notfallsituation beachtet werden müssen"      
    * item[+]
      * type = #text
      * linkId = "8.19"
      * text = "Sonstige gesundheitliche Probleme"
    * item[+]
      * type = #boolean
      * linkId = "8.20"
      * text = "Hatte ihr Kind bereits eine ambulante oder stationäre OP?"
      * repeats = true
      * item[+]
        * type = #choice
        * linkId = "8.20.1"
        * text = "Wo fand der Unfall statt?"
        * enableWhen[+]
          * question = "8.20"
          * operator = #=
          * answerBoolean = true
      * item[+]
        * type = #choice
        * linkId = "8.20.1"
        * text = "Art der Verletzung"
        * enableWhen[+]
          * question = "8.20"
          * operator = #=
          * answerBoolean = true
//********************************************
// Förderungen
* item[+]
  * type = #group
  * linkId = "9"
  * text = "Förderungen"
  * item[+]
    * type = #boolean
    * linkId = "9.1"
    * text = "Teilnahme an Vorkurs Deutsch"
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
    * text = "Integrative_Betreuuung"
  * item[+]
    * type = #text
    * linkId = "9.10"
    * text = "Sonstige_Förderung"
  * item[+]
    * type = #boolean
    * linkId = "9.11"
    * text = "Kuren"
    * repeats = true
    * item[+]
      * type = #open-choice
      * linkId = "9.11.1"
      * text = "Art der Kur"
      * enableWhen[+]
        * question = "9.11"
        * operator = #=
        * answerBoolean = true
    * item[+]
      * type = #open-choice
      * linkId = "9.11.1"
      * text = "Art der Kur"
      * enableWhen[+]
        * question = "9.11"
        * operator = #=
        * answerBoolean = true
//********************************************
// Medienkonsum
* item[+]
  * type = #group
  * linkId = "10"
  * text = "Medienkonsum"
  * item[+]
    * type = #quantity
    * linkId = "10.1"
    * text = "Medienkonsum: Durchschnittliche Stunden pro Tag"
  * item[+]
    * type = #boolean
    * linkId = "10.2"
    * text = "Fernsehgerät/Computer/Spielkonsole im Zimmer"
//********************************************
// Arzt
* item[+]
  * type = #group
  * linkId = "11"
  * text = "Arzt"
  * item[+]
    * type = #boolean
    * linkId = "11.1"
    * text = "Hat das Kind bislang Behandlung oder Untersützung erhalten?"
  * item[+]
    * type = #string
    * linkId = "11.2"
    * text = "Name des Kinderarztes"
  * item[+]
    * type = #string
    * linkId = "11.3"
    * repeats = true
    * text = "Weitere Fachärzte (zusätzlich zu Hausarzt)"
//********************************************
// Sonstiges
* item[+]
  * type = #group
  * linkId = "12"
  * text = "Sonstiges"
  * item[+]
    * type = #choice
    * linkId = "12.1"
    * text = "Beratung in Erziehungsberatungsstelle"
  * item[+]
    * type = #choice
    * linkId = "12.2"
    * text = "Beratung in Sozialpädiatrischen Zentrum (SPZ)"
  * item[+]
    * type = #boolean
    * linkId = "12.3"
    * text = "Netzwerk_GesundeKinder"
    * item[+]
      * type = #quantity
      * linkId = "12.3.1"
      * text = "Netzwerk_GesundeKinder_Dauer in Jahren"
      * enableWhen[+]
        * question = "12.3"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "12.4"
    * text = "KISS Sprachsscreening"
  * item[+]
    * type = #choice
    * linkId = "12.5"
    * text = "Raucher Haushalt"
  * item[+]
    * type = #text
    * linkId = "12.6"
    * text = "Freie Angabe zu Stärken/Begabung/Besonderheiten des Kindes"
  * item[+]
    * type = #boolean
    * linkId = "12.7"
    * text = "Treibt ihr Kind regelmäßig Sport?"
    * item[+]
      * type = #text
      * linkId = "12.7.1"
      * text = "Sportart & Verein"
      * repeats = true
      * enableWhen[+]
        * question = "12.7"
        * operator = #=
        * answerBoolean = true
  * item[+]
    * type = #boolean
    * linkId = "12.8"
    * text = "Kann ihr Kind schwimmen?"
  * item[+]
    * type = #boolean
    * linkId = "12.9"
    * text = "Seepferdchenabzeichen vorhanden?"
  * item[+]
    * type = #integer
    * linkId = "12.10"
    * text = "Vorgangsnummer"
//********************************************
// Informationen Eltern
* item[+]
  * type = #group
  * linkId = "13"
  * text = "Informationen Eltern"
  * item[+]
    * type = #choice
    * linkId = "13.1"
    * text = "Schulabschluss Elternteil1"
  * item[+]
    * type = #choice
    * linkId = "13.2"
    * text = "Schulabschluss Elternteil2"
  * item[+]
    * type = #choice
    * linkId = "13.3"
    * text = "Berufsausbildung Elternteil1"
  * item[+]
    * type = #choice
    * linkId = "13.4"
    * text = "Berufsausbildung Elternteil2"
  * item[+]
    * type = #choice
    * linkId = "13.5"
    * text = "Berufstätigkeit Elternteil1"
    * item[+]
      * type = #text
      * linkId = "13.5.1"
      * text = "Grund der Beschäftigungslosigkeit"
      * enableWhen[+]
        * question = "13.5"
        * operator = #=
        * answerCoding = #keine
    * item[+]
      * type = #boolean
      * linkId = "13.5.2"
      * text = "Schichtdienst"
      * enableWhen[+]
        * question = "13.5"
        * operator = #!=
        * answerCoding = #keine
  * item[+]
    * type = #choice
    * linkId = "13.6"
    * text = "Berufstätigkeit Elternteil2"
    * item[+]
      * type = #text
      * linkId = "13.6.1"
      * text = "Grund der Beschäftigungslosigkeit"
      * enableWhen[+]
        * question = "13.6"
        * operator = #=
        * answerCoding = #keine
    * item[+]
      * type = #boolean
      * linkId = "13.6.2"
      * text = "Schichtdienst"
      * enableWhen[+]
        * question = "13.6"
        * operator = #!=
        * answerCoding = #keine
  * item[+]
    * type = #integer
    * linkId = "13.7"
    * text = "Anzahl Erwachsene im Haushalt"
  * item[+]
    * type = #integer
    * linkId = "13.8"
    * text = "Anzahl Kinder unter 18 Jahren, einzuschulendes Kind mitgerechnet im Haushalt"
  * item[+]
    * type = #date
    * linkId = "13.9"
    * text = "Datum seitdem Elternteil1 in Deutschland lebt"
  * item[+]
    * type = #date
    * linkId = "13.10"
    * text = "Datum seitdem Elternteil2 in Deutschland lebt"
  * item[+]
    * type = #choice
    * linkId = "13.11"
    * text = "Wer hat diesen Fragebogen ausgefüllt"
  * item[+]
    * type = #boolean
    * linkId = "13.12"
    * text = "Einwilligung zur Datenerhebung früherer Untersuchungen, welche beim Gesundheitsamt vorliegent"
  * item[+]
    * type = #boolean
    * linkId = "13.13"
    * text = "Einwilligung zur Einsicht von Unterlagen zur Frühförderung, falls diese vorliegen"
  * item[+]
    * type = #boolean
    * linkId = "13.14"
    * text = "Soll das Kind an einer Nachnmittagsbetreuung teilnehmen?"