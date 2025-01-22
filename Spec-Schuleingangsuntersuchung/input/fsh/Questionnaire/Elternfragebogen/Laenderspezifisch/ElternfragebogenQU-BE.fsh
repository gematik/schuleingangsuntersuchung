Instance: ElternbefragungBE
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung Berlin"
Description: "Elternbefragung Berlin"
* id = "SEU-Elternbefragung-BE"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen BE"

// 1. Angabe zur Person

* item[+]
  * insert addItemWithSource(1.8.1, #group, [[Angaben zur Person]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.1, #string, [[Name des Kindes]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.2, #string, [[Vorname]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.3, #text, [[Adresse]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.4, #number, [[Telefon]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.5, #choice, [[Geschlecht]], #DE-BE)
    * answerValueSet = Canonical(Gender-BE-VS)  // to do
  * item[+]
    * insert addItemWithSource(1.6, #date, [[Geburtsdatum]], #DE-BE)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItemWithSource(1.7, #boolean, [[In Deutschland geboren]], #DE-BE)
  * item[+]
    * insert addItemWithSource(1.7.a, #date, [[Seit wann lebt Ihr Kind in Deutschland (Monat/ Jahr)?]], #DE-BE) //TODO: Datumsformat MM.JJJJ
* item[+]
  * insert addItemWithSource(1.8.1, #group, [[Geschwister unter 18 Jahre]], #DE-BE)
    * item[+]
      * insert addItemWithSource(1.8.2, #string, [[Vorname]], #DE-BE)
    * item[+]
      * insert addItemWithSource(1.8.3, #date, [[Geburtsjahr]], #DE-BE)
    * repeats = true
* item[+]
  * insert addItemWithSource(1.9, #string, [[Name des Elternteils A]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.9.1, #string, [[Vorname des Elternteils A]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.9.2, #choice, [[Geburtsland des Elternteils A]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.9.3, #boolean, [[deutsche Staatsangehörigkeit Elternteil A?]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.9.4, #text, [[andere/weitere]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.10, #string, [[Name des Elternteils B]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.10.1, #string, [[Vorname Elternteils B]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.10.2, #choice, [[Geburtsland des Elternteils B]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.10.3, #boolean, [[deutsche Staatsangehörigkeit des Elternteil B?]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.10.4, #text, [[andere/weitere]], #DE-BE)
* item[+]
  * insert addItemWithSource(1.11, #string, [[Welche Sprachen werden in Ihrer Familie mit dem Kind gesprochen?]], #DE-BE)
  * repeats = true     // to do max 3 mal
* item[+]
  * insert addItemWithSource(1.12, #string, [[Name des Kinderarztes/Hausarztes:]], #DE-BE)

//2. Erkrankungen  des Kindes (auch frühere)
* item[+]
  * insert addItemWithSource(2, #group, [[Erkrankungen des Kindes auch frühere]], #DE-BE)
    * item[+]
      * insert addItemWithSource(2.1, #string, [[obstruktive Bronchitis/Asthma]], #DE-BE)
    * item[+]
      * insert addItemWithSource(2.2, #string, [[angeborene Herzfehler/Herzerkrankungen]], #DE-BE)
    * item[+]
      * insert addItemWithSource(2.3, #string, [[Krampfleiden (epileptische Anfälle)]], #DE-BE)
    * item[+]
      * insert addItemWithSource(2.4, #string, [[andere wichtige Erkrankungen/Allergien/Unfälle)]], #DE-BE)
        * item[+]
          * insert addItemWithSource(2.4.1, #text, [[wenn ja, welche:]], #DE-BE)
          * insert enableWhenBoolean(2.4, =, true)
        * item[+]
          * insert addItemWithSource(2.5, #boolean, [[Nimmt Ihr Kind regelmäßig Medikamente ein?]], #DE-BE)
          * item[+]
            * insert addItemWithSource(2.5.1, #text, [[wenn ja, welche:]], #DE-BE)
            * insert enableWhenBoolean(2.5, =, true)
          * item[+]
            * insert addItemWithSource(2.6.2, #integer, [[Anzahl der Krankenhausaufenthalte/Operationen]], #DE-BE)

   //3. Entwicklung des Kindes

* item[+]
  * insert addItemWithSource(3, #group, [[Entwicklung des Kindes]], #DE-BE)
    * item[+]
      * insert addItemWithSource(3.1, #group, [[Wurde/wird Ihr Kind behandelt/betreut]], #DE-BE)
        * item[+]
          * insert addItemWithSource(3.1.1, #boolean, [[durch eine(n) Krankengymnasten/Krankengymnastin?]], #DE-BE)
        * item[+]
          * insert addItemWithSource(3.1.2, #boolean, [[Wurde/wird Ihr Kind behandelt/betreut durch durch eine(n) Ergotherapeuten(in)?]], #DE-BE)
        * item[+]
          * insert addItemWithSource(3.1.3, #boolean, [[Wurde/wird Ihr Kind behandelt/betreut durch eine(n) Logopäden(in)?]], #DE-BE)
        * item[+]
          * insert addItemWithSource(3.1.4, #boolean, [[Wurde/wird Ihr Kind behandelt/betreut durch eine(n) Psychologen(in)/Psychiater(in)/Erziehungsberatung?]], #DE-BE)
      * item[+]
        * insert addItemWithSource(3.2, #group, [[Machen Sie sich Sorgen um Ihr Kind wegen]], #DE-BE)
          * item[+]
            * insert addItemWithSource(3.2.1, #boolean, [[seines Verhaltens?]], #DE-BE)
          * item[+]
            * insert addItemWithSource(3.2.2, #boolean, [[seiner Sprachentwicklung?]], #DE-BE)
          * item[+]
            * insert addItemWithSource(3.2.3, #boolean, [[seiner Konzentrationsfähigkeit?]], #DE-BE)
          * item[+]
            * insert addItemWithSource(3.2.4, #boolean, [[seines Seh- oder Hörvermögens?]], #DE-BE)
          * item[+]
            * insert addItemWithSource(3.2.3, #boolean, [[Nässt ihr Kind ein?]], #DE-BE)

    // 4. Betzeueung des kindes
  * item[+]
    * insert addItemWithSource(4, #group, [[Entwicklung des Kindes]], #DE-BE)
      * item[+]
        * insert addItemWithSource(4.1, #date, [[Seit wann (Monat/Jahr) geht Ihr Kind in eine Kindertagesstätte (auch Elterninitiativ-Kita/ Großtagespflegestelle)?]], #DE-BE)
      * item[+]
        * insert addItemWithSource(4.1.a, #text, [[wenn ja, in welche zuletzt:]], #DE-BE) //to do
      * item[+]
        * insert addItemWithSource(4.1.b, #date, [[wenn Ihr Kind aktuell keine Kita besucht, seit wann nicht mehr?]], #DE-BE)
      * item[+]
        * insert addItemWithSource(4.2, #boolean, [[Geht oder ging Ihr Kind in eine andere Tagesbetreuung?]], #DE-BE)
// 5. Lebensumfeld
  * item[+]
    * insert addItemWithSource(5, #group, [[Lebensumfeld]], #DE-BE)
      * item[+]
        * insert addItemWithSource(5.1, #choice, [[WDas Kind lebt überwiegend bei]], #DE-BE)
        * answerValueSet = Canonical(LebensumfeldVS)
      * item[+]
        * insert addItemWithSource(5.2, #choice, [[Schulabschluss der Eltern (den höchsten ankreuzen und bitte bei beiden Eltern angeben!)]], #DE-BE)
        * answerValueSet = Canonical(Schulabschluss-Eltern-BerlinVS)
      * item[+]
        * insert addItemWithSource(5.3, #choice, [[Berufsausbildung der Eltern (die höchste ankreuzen und bitte bei beiden Eltern angeben!)]], #DE-BE)
        * answerValueSet = Canonical(BeruflicheAusbildungElternBE-VS)
      * item[+]
        * insert addItemWithSource(5.4, #choice, [[Berufstätigkeit der Eltern (bitte bei beiden Eltern angeben!)]], #DE-BE)
        * answerValueSet = Canonical(BeruflicheAusbildungElternBE-VS)
      * item[+]
        * insert addItemWithSource(5.5.1, #number, [[Wie viele Personen leben insgesamt in Ihrem Haushalt (Ihr einzuschulendes Kind mitgerechnet)? Erwachsene:]], #DE-BE)
      * item[+]
        * insert addItemWithSource(5.5.2, #number, [[Wie viele Personen leben insgesamt in Ihrem Haushalt (Ihr einzuschulendes Kind mitgerechnet)? Kinder unter 18 Jahren:]], #DE-BE)
      * item[+]
        * insert addItemWithSource(5.6, #number, [[Wie viele Personen in Ihrem Haushalt sind Raucher/Dampfer?]], #DE-BE)
      * item[+]
        * insert addItemWithSource(5.7, #choice, [[Wie viele Stunden am Tag beschäftigt sich Ihr Kind im Durchschnitt mit elektronischen Geräten? (elektronische Geräte sind Fernsehen, DVD, Computer, Tablet, Smartphone, Playstation und andere)]], #DE-BE)
        * answerValueSet = Canonical(TaeglicherKonsumElektronischerMedien-BE-VS)
      * item[+]
        * insert addItemWithSource(5.7.1, #boolean, [[mein Kind hat einen eigenen Fernseher]], #DE-BE)
      * item[+]
        * insert addItemWithSource(5.7.2, #boolean, [[andere eigene elektronische Geräte]], #DE-BE)
        * item[+]
          * insert addItemWithSource(5.7.3, #text, [[wenn ja, welche:]], #DE-BE)
          * insert enableWhenBoolean(5.7.2, =, true)
  

CodeSystem: LebensumfeldCS
Id: lebensumfeld-cs
Title: "Lebensumfeld CodeSystem"
Description: "LebensumfeldCS"
* #Eltern "Eltern"
* #allein_erziehendem_Elternteil_A "allein erziehendem Elternteil A"
* #allein_erziehendem_Elternteil_B "allein erziehendem Elternteil B"
* #Pflegefamilie "Pflegefamilie"
* #Verwandten "Verwandten"
* #im_Heim "Im Heim"

ValueSet: LebensumfeldVS
Id: lebensumfeld-vs
Title: "Lebensumfeld VS"
Description: "LebensumfeldVS"
* include codes from system LebensumfeldCS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #Eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #allein_erziehendem_Elternteil_A
* ^expansion.contains[=].display = "allein erziehendem Elternteil A"
* ^expansion.contains[+].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #allein_erziehendem_Elternteil_B
* ^expansion.contains[=].display = "allein erziehendem Elternteil B"
* ^expansion.contains[+].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #Pflegefamilie
* ^expansion.contains[=].display = "Pflegefamilie"
* ^expansion.contains[+].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #Verwandten
* ^expansion.contains[=].display = "Verwandten"
* ^expansion.contains[+].system = Canonical(LebensumfeldCS)
* ^expansion.contains[=].code = #im_Heim
* ^expansion.contains[=].display = "Im Heim"

CodeSystem: Schulabschluss-Eltern-BerlinCS
Id: Schulabschluss-Eltern-Berlin-cs
Title: "Schulabschluss-Eltern-Berlin"
Description: "Schulabschluss-Eltern-Berlin"
* #kein_Schulabschluss "kein Schulabschluss"
* #Hauptschulabschluss_oder_weniger_als_10_Klasse "Hauptschulabschluss oder weniger als 10. Klasse"
* #mittlere_Reife_mittlerer_Schulabschluss_MSA_10_Klasse "mittlere Reife/mittlerer Schulabschluss (MSA)/10. Klasse"
* #Abitur_Fachabitur "Abitur/Fachabitur"

ValueSet: Schulabschluss-Eltern-BerlinVS
Id: Schulabschluss-Eltern-Berlin-VS
Title: "Schulabschluss-Eltern-BerlinVS"
Description: "Schulabschluss-Eltern-BerlinVS"
* include codes from system Schulabschluss-Eltern-BerlinCS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(Schulabschluss-Eltern-BerlinCS)
* ^expansion.contains[=].code = #kein_Schulabschluss
* ^expansion.contains[=].display = "kein Schulabschluss"
* ^expansion.contains[+].system = Canonical(Schulabschluss-Eltern-BerlinCS)
* ^expansion.contains[=].code = #Hauptschulabschluss_oder_weniger_als_10_Klasse
* ^expansion.contains[=].display = "Hauptschulabschluss oder weniger als 10. Klasse"
* ^expansion.contains[+].system = Canonical(Schulabschluss-Eltern-BerlinCS)
* ^expansion.contains[=].code = #mittlere_Reife_mittlerer_Schulabschluss_MSA_10_Klasse
* ^expansion.contains[=].display = "mittlere Reife/mittlerer Schulabschluss (MSA)/10. Klasse"
* ^expansion.contains[+].system = Canonical(Schulabschluss-Eltern-BerlinCS)
* ^expansion.contains[=].code = #Abitur_Fachabitur
* ^expansion.contains[=].display = "Abitur/Fachabitur"

CodeSystem: BeruflicheAusbildungElternBE-CS
Id: BeruflicheAusbildungElternBE-CS
Title: "BeruflicheAusbildungElternBE-CS"
Description: "BeruflicheAusbildungElternBE-CS"
* #keine_oder_keine_abgeschlosseneBerufsausbildung  "keine/keine abgeschlossen Berufsausbildung"
* #in_Ausbildung_Studium "in Ausbildung / Studium"
* #abgeschl_Berufsausbildung_Fachschulabschluss  "abgeschlossene Berufsausbildung/Fachschulabschluss"
* #abgeschl_Studium "abgeschlossene Studium (Uni, FachHochschule)"

ValueSet: BeruflicheAusbildungElternBE-VS
Id: BeruflicheAusbildungElternBE-VS
Title: "BeruflicheAusbildungElternBE-VS"
Description: "BeruflicheAusbildungElternBE-VS"
* include codes from system BeruflicheAusbildungElternBE-CS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternBE-CS)
* ^expansion.contains[=].code = #keine_oder_keine_abgeschlosseneBerufsausbildung
* ^expansion.contains[=].display = "keine/keine abgeschlossene Berufsausbildung"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternBE-CS)
* ^expansion.contains[=].code = #in_Ausbildung_Studium
* ^expansion.contains[=].display = "in Ausbildung/Studium"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternBE-CS)
* ^expansion.contains[=].code = #abgeschl_Berufsausbildung_Fachschulabschluss
* ^expansion.contains[=].display = "abgeschl. Berufsausbildung/Fachschulabschluss"
* ^expansion.contains[0].system = Canonical(BeruflicheAusbildungElternBE-CS)
* ^expansion.contains[=].code = #abgeschl_Studium 
* ^expansion.contains[=].display = "abgeschl. Studium (Uni, FachHochschule)"

CodeSystem: Berufstaetigkeit-Eltern-Berlin-CS
Id: Berufstaetigkeit-Eltern-Berlin-cs
Title: "Berufstätigkeit_Eltern_Berlin"
Description: "Berufstätigkeit__Eltern_Berlin"
* #nicht_erwerbstaetig_weil_finde_keine_Arbeit "nicht erwerbstätig, weil finde keine Arbeit"
* #nicht_erwerbstaetig_alle_anderen_Gruende "nicht erwerbstätig, weil alle anderen Gründe"
* #teilzeitbeschaeftigt "teilzeitbeschäftigt"
* #vollzeitbeschaeftigt "vollzeitbeschäftigt"

ValueSet: Berufstaetigkeit-Eltern-Berlin-VS
Id: Berufstaetigkeit-Eltern-Berlin-VS
Title: "Berufstaetigkeit-Eltern-Berlin-VS"
Description: "Berufstaetigkeit-Eltern-Berlin-VS"
* include codes from system Berufstaetigkeit-Eltern-Berlin-CS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(Berufstaetigkeit-Eltern-Berlin-CS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig_weil_finde_keine_Arbeit
* ^expansion.contains[=].display = "nicht erwerbstätig, weil finde keine Arbeit"
* ^expansion.contains[+].system = Canonical(Berufstaetigkeit-Eltern-Berlin-CS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig_alle_anderen_Gruende
* ^expansion.contains[=].display = "nicht erwerbstätig, weil alle anderen Gründe"
* ^expansion.contains[+].system = Canonical(Berufstaetigkeit-Eltern-Berlin-CS)
* ^expansion.contains[=].code = #teilzeitbeschaeftigt
* ^expansion.contains[=].display = "teilzeitbeschäftigt"
* ^expansion.contains[+].system = Canonical(Berufstaetigkeit-Eltern-Berlin-CS)
* ^expansion.contains[=].code = #vollzeitbeschaeftigt
* ^expansion.contains[=].display = "vollzeitbeschäftigt"

CodeSystem: TaeglicherKonsumElektronischerMedien-BE-CS
Id: TaeglicherKonsumElektronischerMedien-BE-CS
Title: "TaeglicherKonsumElektronischerMedien-BE-CS"
Description: "TaeglicherKonsumElektronischerMedien-BE-CS"
* #gar_nicht  "gar nicht"
* #max_1_Stunde "max. 1 Stunde"
* #max_2_Stunden "max. 2 Stunden"
* #max_3_Stunden "max. 3 Stunden"
* #ueber_3_Stunden  "über 3 Stunden"
 
ValueSet: TaeglicherKonsumElektronischerMedien-BE-VS
Id: TaeglicherKonsumElektronischerMedien-BE-VS
Title: "TaeglicherKonsumElektronischerMedien-BE-VS"
Description: "TaeglicherKonsumElektronischerMedien-BE-VS"
* include codes from system TaeglicherKonsumElektronischerMedien-BE-CS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedien-BE-CS)
* ^expansion.contains[=].code = #gar_nicht 
* ^expansion.contains[=].display = "gar nicht"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedien-BE-CS)
* ^expansion.contains[=].code = #max_1_Stunde
* ^expansion.contains[=].display = "max. 1 Stunde"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedien-BE-CS)
* ^expansion.contains[=].code = #max_2_Stunden
* ^expansion.contains[=].display = "max. 2 Stunden"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedien-BE-CS)
* ^expansion.contains[=].code = #max_3_Stunden
* ^expansion.contains[=].display = "max. 3 Stunden"
* ^expansion.contains[0].system = Canonical(TaeglicherKonsumElektronischerMedien-BE-CS)
* ^expansion.contains[=].code = #ueber_3_Stunden 
* ^expansion.contains[=].display = "über 3 Stunden"

CodeSystem: Gender-BE-CS
Id: Gender-BE-CS
Title: "Gender-BE-CS"
Description: "Gender-BE-CS"
* #maennlich  "männlich"
* #weiblich "weiblich"
* #divers "divers"
 
ValueSet: Gender-BE-VS
Id: Gender-BE-VS
Title: "Gender-BE-VS"
Description: "Gender-BE-VS"
* include codes from system Gender-BE-CS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Gender-BE-CS)
* ^expansion.contains[=].code = #maennlich 
* ^expansion.contains[=].display = "männlich"
* ^expansion.contains[0].system = Canonical(Gender-BE-CS)
* ^expansion.contains[=].code = #weiblich
* ^expansion.contains[=].display = "weiblich"
* ^expansion.contains[0].system = Canonical(Gender-BE-CS)
* ^expansion.contains[=].code = #divers
* ^expansion.contains[=].display = "divers"