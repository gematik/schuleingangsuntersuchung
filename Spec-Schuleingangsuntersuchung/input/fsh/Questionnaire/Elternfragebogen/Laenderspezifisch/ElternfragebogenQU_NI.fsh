Instance: Elternbefragung_NI
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung NI"
Description: "Elternbefragung NI"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = UnfallOrtVS
* contained[+] = SEU_EF_BildungsabschlussVS
* contained[+] = ErwerbsstatusVS
* contained[+] = VersorgungsartVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_MedienkonsumVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_ZeitdauerVS
* contained[+] = SEU-UB-StaatsangehoerigkeitVS
* contained[+] = GeburtArtVS
* contained[+] = ErkrankungenLetztesJahrPlusVerbrennungenVS
* contained[+] = JaNeinWeissNichtVS
* contained[+] = WerErziehtDasKindVS
* contained[+] = WieVieleStundenFreizeitVS
* contained[+] = WieOftImSportVereinVS
* contained[+] = WieOftTrainingVS
* id = "SEU-Elternbefragung-NI"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungNI"
* title = "SEU Elternfragebogen NI"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItemWithSource(1.4b, #choice, [[Staatsangehörigkeit Mutter]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.4b.1, #choice, [[Staatsangehörigkeit Mutter andere]], #DE-BB)
    * insert enableWhenCode(1.4b, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4b, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.4c, #choice, [[Staatsangehörigkeit Vater]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.4c.1, #choice, [[Staatsangehörigkeit Vater andere]], #DE-BB)
    * insert enableWhenCode(1.4c, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4c, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.5, #choice, [[Geburtsland]])
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.5a, #choice, [[Geburtsland Mutter]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.5b, #choice, [[Geburtsland Vater]], #DE-BB)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItemWithSource(3.1c, #integer, [[Kinder im Haushalt]], #DE-HH)
    * required = true
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * insert enableWhenInteger(3.1, >, 0)
    * insert enableWhenInteger(3.1c, >, 1)
    * enableBehavior = #any
    * item[+]
      * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
      * required = true
    * item[+]
      * insert addItem(3.1.1.2, #choice, Geschlecht des Geschwisters)
      * answerValueSet = Canonical(GenderDEVS)
      * required = true
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItemWithSource(3.2.4b, #boolean, [[Ist ihr Kind an Windpocken erkrankt]], #DE-HE)
      * required = true
    * item[+]
      * insert addItem(3.2.6, #boolean, [[Hat Ihr Kind eine körperliche, geistige oder seelische Behinderung?]])
      * required = true
      * item[+]
        * insert enableWhenBoolean(3.2.6, =, true)
        * insert addItem(3.2.6.1, #string, Welche Behinderung?)
        * required = true
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?) 
    * required = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
    * required = true
  * item[+]
    * insert addItemWithSource(5.2.a, #integer, [[Geburtsgewicht (in Gramm)]], #DE-SL)
    * insert uunit(g, "Gramm")
    * insert minValueInt(360)
    * insert maxValueInt(6500)
    * required = true
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
    * required = true
  * item[+]
    * insert addItem(5.3c, #integer, [[In welcher SS-Woche wurde ihr Kind geboren?]])
    * required = true
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * required = true
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #string, [[Welche Auffälligkeit?]])
      * required = true
  * item[+]
    * insert addItemWithSource(5.10, #choice, [[Art der Geburt]], #DE-NI)
    * answerValueSet = Canonical(GeburtArtVS)
    * required = true
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItemWithSource(7.3a, #boolean, [[Freies Laufen (bis 15 Monate)]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(7.13, #choice, [[Zeigte Ihr Kind mit 5 Jahren Sprachauffälligkeiten?]], #DE-NI)
    * answerValueSet = Canonical(JaNeinWeissNichtVS)
    * required = true
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.13.g, #group, [[Erkrankungen im letzten Jahr]])
    * repeats = true
    * item[+]
      * insert addItemWithSource(8.13.g.1.1, #open-choice, [[Erkrankung]], #DE-NI)
      * answerValueSet = Canonical(ErkrankungenLetztesJahrPlusVerbrennungenVS)
      * required = true
  * item[+]
    * insert addItem(8.14, #boolean, [[Chronische Erkrankung vorhanden]])
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
    * insert addItem(8.17, #boolean, [[Entwicklungsdiagnostik]])
    * required = true
  * item[+]
    * insert addItem(8.21, #boolean, [[Schwere Behinderung vorhanden?]])
    * required = true
  * item[+]
    * insert addGroup(8.21.g, [[Details Behinderung]])
    * insert enableWhenBoolean(8.21, =, true)
    * item[+]
      * insert addItem(8.21.g.1, #text, [[Welche Behinderung]])
      * required = true
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde ihr Kind operiert]])
    * required = true
    * item[+]
      * insert addItem(8.27.1, #choice, [[Wie fand die Operation statt?]])
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(VersorgungsartVS)
      * required = true
    * item[+]
      * insert addItem(8.27.2, #choice, [[Welche Operationen wurden durchgeführt?]])
      * repeats = true
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(SEU_EF_OperationenVS)
      * required = true
  * item[+]
    * insert addItemWithSource(8.52, #choice, [[Unfälle Verbrennung/Verbrühung]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addGroup(8.79, [[Juckender Hautausschlag]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.79.1, #boolean, [[Hatte Ihr Kind irgendwann einmal einen juckenden Hautausschlag, der stärker oder schwächer über mind. 6 Montae auftrat?]], #DE-NI)   
      * required = true
    * item[+]
      * insert addItemWithSource(8.79.2, #boolean, [[Trat dieser juckende Hautausschlag bei Ihrem Kind irgendwann einmal an einer der folgenden Körperstellen auf: In der Ellenbeuge, Kniekehle, an den Hand oder Fußgelenken, im Gesicht oder am Hals?]], #DE-NI)
      * insert enableWhenBoolean(8.79.1, =, true)
      * required = true
  * item[+]
    * insert addGroup(8.80, [[Geräusche beim Atmen]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.80.1, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten jemals beim Atmen pfeiffende oder keuchende Geräusche im Brustkorb?]], #DE-NI)
      * required = true
    * item[+]
      * insert addItemWithSource(8.80.2, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten jemals beim Atmen pfeiffende oder keuchende Geräusche im Brustkorb während oder nach körperlicher Anstrengung?]], #DE-NI)
      * required = true
    * item[+]
      * insert addItemWithSource(8.80.3, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten nachts einen trockenen Reizhusten, obwohl es keine Erkältung oder Bronchitis hatte?]], #DE-NI)
      * required = true
  * item[+]
    * insert addGroup(8.81, [[Niesen, verstopfte Nase]])
    * insert addSource(#DE-NI)
    * item[+]
      * insert addItemWithSource(8.81.1, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten Niesanfälle oder eine laufende, verstopfte oder juckende Nase, obwohl es nicht erkältet war?]], #DE-NI)
      * required = true
    * item[+]
      * insert addItemWithSource(8.81.2, #boolean, [[Hatte Ihr Kind in den letzten 12 Monaten gleichzeitig mit diesen Nasenbeschwerden auch juckende oder tränende Augen?]], #DE-NI)
      * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)?]], #DE-SL)
    * required = true
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * required = true
    * item[+]
      * insert addItemWithSource(9.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * required = true
    * item[+]
      * insert addItem(9.3, #choice, [[Frühförderung]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.4, #choice, [[Ergotherapie]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
    * item[+]
      * insert addItem(9.8, #choice, [[Krankengymnastik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
      * required = true
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItem(10.1, #integer, Durchschnittlich pro Tag am Fernseher/Smartphone/Tablet/Spielkonsole/Computer)
    * insert uunit(h, "Stunden")
    * required = true
  * item[+]
    * insert addItemWithSource(10.3a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Wochentag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
    * required = true
  * item[+]
    * insert addItemWithSource(10.3b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole an einem Wochentag]], #DE-BB)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
    * required = true
  * item[+]
    * insert addItemWithSource(10.4a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Samstag/ Sonntag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
    * required = true
  * item[+]
    * insert addItemWithSource(10.4b, #choice, [[Wie lange sieht nutzt Kind Fernseher, Smartphone oder Spielkonsole am Wochenende]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_ZeitdauerVS)
    * required = true
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItemWithSource(12.19, #choice, [[Wie viele Stunden pro Tag ist Ihr Kind im Freizeitbereich (z.B. Wald oder Garten) körperlich aktiv?]], #DE-NI)
    * answerValueSet = Canonical(WieVieleStundenFreizeitVS)
    * required = true
  * item[+]
    * insert addItemWithSource(12.20, #boolean, [[Ist Ihr Kind Mitglied in einem Sportverein?]], #DE-NI)
    * required = true
  * item[+]
    * insert addItemWithSource(12.21, #choice, [[Wie oft geht ihr Kind in den Sportverein?]], #DE-NI)
    * insert enableWhenBoolean(12.20, =, true)
    * answerValueSet = Canonical(WieOftImSportVereinVS)
    * required = true
  * item[+]
    * insert addItemWithSource(12.22, #choice, [[Wie oft trainiert Ihr Kind pro Woche außerhalb der Kita angeleitet?]], #DE-NI)
    * answerValueSet = Canonical(WieOftTrainingVS)
    * required = true
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItem(13.1, #choice, Schulabschluss 1. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
    * required = true
  * item[+]
    * insert addItem(13.2, #choice, Schulabschluss 2. Elternteil)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
    * required = true
  * item[+]
    * insert addItem(13.5, #choice, Berufstätigkeit 1. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
    * required = true
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
    * required = true
  * item[+]
    * insert addItem(13.15, #boolean, Arbeitet der 1. Elternteil im Schichtdienst?)
    * required = true
  * item[+]
    * insert addItem(13.16, #boolean, Arbeitet der 2. Elternteil im Schichtdienst?)
    * required = true
  * item[+]
    * insert addItemWithSource(13.30, #choice, [[Wer erzieht das Kind?]], #DE-NI)
    * answerValueSet = Canonical(WerErziehtDasKindVS)
    * required = true
