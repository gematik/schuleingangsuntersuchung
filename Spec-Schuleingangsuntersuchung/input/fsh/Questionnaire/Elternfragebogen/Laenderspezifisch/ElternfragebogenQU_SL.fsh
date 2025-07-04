Instance: ElternbefragungSL
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung SL"
Description: "Elternbefragung SL"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = WohnsituationKindAlternativ2VS
* contained[+] = ISO6392_LanguageVS
* contained[+] = VersorgungsartVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_UnfallVS
* contained[+] = SEU_EF_AlterKindVS
* contained[+] = SEU_EF_AlterKindEinreiseVS
* contained[+] = SEU_EF_SchwangerschaftVS
* contained[+] = SEU_EF_UnfallortVS
* contained[+] = SEU_EF_BehandlungstypVS
* contained[+] = SEU_EF_SpracheVS
* contained[+] = SEU-UB-StaatsangehoerigkeitVS
* id = "SEU-Elternbefragung-SL"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/ElternbefragungSL"
* title = "SEU Elternfragebogen SL"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItemWithSource(1.4a, #choice, [[Staatsangehörigkeit]], #DE-BB)
    * answerValueSet = Canonical(SEU-UB-StaatsangehoerigkeitVS)
    * required = true
  * item[+]
    * insert addItemWithSource(1.4a.1, #choice, [[Staatsangehörigkeit andere]], #DE-BB)
    * insert enableWhenCode(1.4a, =, SEU-UB-StaatsangehoerigkeitCS, 2)
    * insert enableWhenCode(1.4a, =, SEU-UB-StaatsangehoerigkeitCS, 3)
    * enableBehavior = #any
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
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
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
    * required = true
  * item[+]
    * insert addItemWithSource(1.6.1a, #choice, Wie alt war das Kind bei Einreise nach Deutschland?, #DE-SL)
    * required = true
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(SEU_EF_AlterKindEinreiseVS)
  * item[+]
    * insert addItemWithSource(1.12a, #choice, [[Kind lebt hauptsächlich bei]], #DE-BB)
    * answerValueSet = Canonical(WohnsituationKindAlternativ2VS)
    * required = true
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
    * required = true
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItemWithSource(3.1a, #integer, Anzahl der im Familienverbund lebenden Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
    * required = true
  * item[+]
    * insert addItemWithSource(3.1b, #integer, Aktuell im Haushalt lebende Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
    * required = true
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItemWithSource(3.2.6a, #boolean, [[Liegt bei Ihrem Kind ein Grad der Behinderung/ein Pflegegrad vor?]], #DE-SL)
      * required = true
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItemWithSource(4.1a, #choice, Wie alt war das Kind bei der Aufnahme in die Kita?, #DE-SL)
    * answerValueSet = Canonical(SEU_EF_AlterKindVS)
    * required = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItemWithSource(5.1.a, #integer, [[Dauer der Schwangerschaft (in Wochen)]], #DE-SL)
    * insert uunit(wk, "Wochen")
    * insert minValueInt(22)
    * insert maxValueInt(43)
    * required = true
  * item[+]
    * insert addItemWithSource(5.2.a, #integer, [[Geburtsgewicht (in Gramm)]], #DE-SL)
    * insert uunit(g, "Gramm")
    * insert minValueInt(360)
    * insert maxValueInt(6500)    
    * required = true
  * item[+]
    * insert addItemWithSource(5.6a, #choice, [[Schwangerschaftsverlauf]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_SchwangerschaftVS)
    * required = true
  * item[+]
    * insert addItemWithSource(5.8, #boolean, [[Stillen / mit Muttermilch ernährt]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(5.8.1, #integer, [[Stillzeit in Monaten]], #DE-SL)
    * insert enableWhenBoolean(5.8, =, true)
    * insert uunit(mo, "Monate")
    * insert minValueInt(0)
    * insert maxValueInt(24)
    * required = true
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * insert addItemWithSource(6.1b, #choice, [[1. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+]
    * insert addItemWithSource(6.1c, #choice, [[2. vorrangig in der Familie gesprochene Sprache]], #DE-SL)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * required = true
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItemWithSource(7.3a, #boolean, [[Freies Laufen (bis 15 Monate)]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(7.4a, #boolean, [[Erste Worte bis 1 Jahr]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(7.5a, #boolean, [[Kleine Sätze bis 2 Jahre]], #DE-SL)
    * required = true
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
    * required = true
  * item[+]
    * insert addItemWithSource(8.2a, #choice, [[Welche Behandlung? (Mehrfachnennung möglich)]], #DE-SL)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_BehandlungstypVS)
    * required = true
  * item[+]
    * insert addItem(8.4, #boolean, [[Sprachstörung vorhanden?]])
    * required = true
    * item[+]
      * insert addItemWithSource(8.4.1a, #choice, [[Störung in der Sprachentwicklung]], #DE-SL)
      * insert enableWhenBoolean(8.4, =, true)
      * answerValueSet = Canonical(SEU_EF_SpracheVS)
      * required = true
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde Ihr Kind operiert]])
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
      * item[+]
        * insert addItemWithSource(8.27.2.1, #string, [[Sonstige Operationen?]], #DE-SL)
        * insert enableWhenCode(8.27.2, =, SEU_EF_OperationenCS, sonstige_operation)
  * item[+]
    * insert addItem(8.28a, #boolean, [[Hatte Ihr Kind einen Unfall]])
    * required = true
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte Ihr Kind einen Unfall]])
    * insert enableWhenBoolean(8.28a, =, true)
    * enableBehavior = #any
    * repeats = true
    * item[+]
      * insert addItemWithSource(8.28.g.3, #choice, [[Anlass des Unfalls]], #DE-SL)
      * answerValueSet = Canonical(SEU_EF_UnfallVS)
  * item[+]
    * insert addItemWithSource(8.30, #boolean, [[Wurde Ihr Kind jemals aufgrund von Unfallverletzungen von einem Arzt behandelt?]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.31, #boolean, [[Einnässen tags]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.32, #boolean, [[Einnässen nachts]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.33, #boolean, [[Einkoten tags]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.34, #boolean, [[Einkoten nachts]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.35, #boolean, [[Erkrankungen Tuberkuloseerkrankung]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.36, #boolean, [[Erkrankungen Meningitis/Enceph.]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.37, #boolean, [[Erkrankungen Pneumonien]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.38, #boolean, [[Erkrankungen Pseudocroup]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.39, #boolean, [[Erkrankungen Fieberkrampf/Krampfanfall]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.40, #boolean, [[Erkrankungen Harnwegserkrankungen]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.41, #boolean, [[Erkrankungen rez Otitis media]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.42, #boolean, [[Erkrankungen Allergie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.42a, #boolean, [[Erkrankungen Neurodermitis]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.43, #boolean, [[Erkrankungen Sonstige]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.44, #boolean, [[Operationen Adenotomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.45, #boolean, [[Operationen Tonsillen-OP]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.46, #boolean, [[Operationen Herniotomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.47, #boolean, [[Operationen Appendektomie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.48, #boolean, [[Operationen Circumcision]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.49, #boolean, [[Operationen Orchidopexie]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.50, #boolean, [[Operationen Augenoperation]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.51, #boolean, [[Operationen Sonstige OP]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.52, #choice, [[Unfälle Verbrennung/Verbrühung]], #DE-SL)
    * required = true
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
  * item[+]
    * insert addItemWithSource(8.53, #choice, [[Unfälle Intoxikation]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.54, #choice, [[Unfälle Knochenbrüche/Weichteilverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.55, #choice, [[Unfälle Schwere Kopfverletzungen]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.56, #choice, [[Unfälle Sonstige]], #DE-SL)
    * answerValueSet = Canonical(SEU_EF_UnfallortVS)
    * required = true
  * item[+]
    * insert addItemWithSource(8.57, #boolean, [[Reg. Med. Antikonvulsiva]], #DE-SL)
    * required = true
    * item[+]
      * insert addItem(8.57.1, #string, [[Wegen welcher Erkrankungen ist Ihr Kind zurzeit in Behandlung??]])
      * required = true
      * insert enableWhenBoolean(8.57, =, true)
  * item[+]
    * insert addItemWithSource(8.58, #boolean, [[Reg. Med. Antiasthmatika/Antiallergika]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.59, #boolean, [[Reg. Med. Psychopharmaka]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.60, #boolean, [[Reg. Med. Cardiaca/Kreislaufpräparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.61, #boolean, [[Reg. Med. Jodid oder Thyroxin]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.62, #boolean, [[Reg. Med. Dermatologische Präparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.63, #boolean, [[Reg. Med. Homöopathische Präparate]], #DE-SL)
    * required = true
  * item[+]
    * insert addItemWithSource(8.64, #boolean, [[Reg. Med. Sonstige]], #DE-SL)
    * required = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)]], #DE-SL)    
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * required = true
    * item[+]
      * insert addItemWithSource(9.11, #boolean, [[Fördermaßn. Integration in Regel-Kita]], #DE-SL)
      * required = true
    * item[+]
      * insert addItemWithSource(9.12, #boolean, [[Fördermaßn. FörderKita/Integrative Kita]], #DE-SL)
      * required = true
    * item[+]
      * insert addItemWithSource(9.13, #boolean, [[Fördermaßn. Vorschul. Päd. Sprachförderung]], #DE-SL)
      * required = true
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItemWithSource(12.7a, #boolean, [[Präv. Maßnahmen Regemäßig Sport im Verein]], #DE-SL)
    * required = true
