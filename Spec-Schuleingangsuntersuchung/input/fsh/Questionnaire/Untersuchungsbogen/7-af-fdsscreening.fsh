RuleSet: 7-af-fdsscreening
* item[+] insert addGroup(7, Befunde aus dem FdS-Screening)
  * insert addSource(#DE-BY)
  * item[+] insert addGroup(7_1, 1. Screening)
    * insert addSource(#DE-BY)
    * item[+] insert addGroup(7_1_1, Für Eingabe in der Untersuchung etwas erfassen) //Bildet das in der Excel beschriebe ab, aber finde ich grenzwertig... deshalb habe ich die optionalen ReadOnly gesetzt
      * insert addSource(#DE-BY)
      * item[+] insert addItem(7.1, #date, [[Untersuchungsdatum]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.2, #choice, [[Heutige Untersuchung]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningvS)
    * item[+] insert addItem(7.3, #integer, [[gemessene Körpergröße (in cm)]])
      * insert addSource(#DE-BY)
      * insert uunit(cm, "cm")
    * item[+] insert addItemWithSource(7.3a, #decimal, [[gemessene Körpergröße (in m)]], #DE-HE)
      * insert uunit(m, "m")
    * item[+] insert addItem(7.4, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert addSource(#DE-BY)
      * insert uunit(kg, "kg")
    * item[+]
      * insert addItemWithSource(7.4.1, #boolean, [[Messung Körpergewicht durchgeführt]], #DE-BW)
    * item[+] insert addItemWithSource(7.4.a, #boolean, [[Brille]], #DE-BE)
    
    
    * item[+] insert addItemWithSource(7.sehtest.rechts, #choice, [[Sehtest rechts]], #DE-BW) 
      * answerValueSet = Canonical(SEU_UB_SehtestVisusVS)
    * item[+] insert addItemWithSource(7.sehtest.links, #choice, [[Sehtest links]], #DE-BW) 
      * answerValueSet = Canonical(SEU_UB_SehtestVisusVS)
    * item[+] insert addItemWithSource(7.sehtest.1, #boolean, [[Sehtest Hyperopieprüfung auffällig?]], #DE-BW)  
    * item[+] insert addItemWithSource(7.sehtest.2, #choice, [[Sehtest: Vorschaltlinse rechts]], #DE-BW)  
      * answerValueSet = Canonical(SEU_UB_BewertungErgebnisVS)
    * item[+] insert addItemWithSource(7.sehtest.3, #choice, [[Sehtest: Vorschaltlinse links]], #DE-BW)  
      * answerValueSet = Canonical(SEU_UB_BewertungErgebnisVS)
    * item[+] insert addItemWithSource(7.sehtest.4, #choice, [[Sehtest: Räumliches Sehen]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarMoeglichVS)      
    * item[+] insert addItemWithSource(7.sehtest.5, #choice, [[Sehtest: Farbsinn]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarMoeglichVS)    
    * item[+] insert addItemWithSource(7.sehtest.6, #choice, [[Sehtest: Sehstörung]], #DE-BW)
      * answerValueSet = Canonical(JaNeinKeineAngabeVS)  
    * item[+] insert addItemWithSource(7.sehtest.7, #choice, [[Sehtest: Augenärztliche Behandlung]], #DE-BW)
      * answerValueSet = Canonical(JaNeinKeineAngabeVS)  
    * item[+] insert addItemWithSource(7.sehtest.8, #choice, [[Sehtest: Bewertungsvorschlag]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_BewertungsvorschlagVS)
    * item[+] insert addItemWithSource(7.sehtest.9, #boolean, [[Sehtest: Durchgeführt]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.10, #boolean, [[Sehtest: Fehlende Mitarbeit]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.11, #boolean, [[Sehtest: Kinder-/Hausarzt]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.12, #boolean, [[Sehtest: In Behandlung]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.13, #boolean, [[Sehtest: Altersentsprechend]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.14, #boolean, [[Sehtest: Abgeschlossen]], #DE-BW)
    * item[+] insert addItemWithSource(7.sehtest.15, #string, [[Sehtest: Bemerkungen]], #DE-BW)
      * item[+]
        * insert addItemWithSource(7.sehtest.15.1, #boolean, [[Übernahme Hörtest-Bemerkungen in Befundbogen für Sorgeberechtigte]], #DE-BW)
        * insert enableWhenExists(7.sehtest.15)
      * item[+]
        * insert addItemWithSource(7.sehtest.15.2, #boolean, [[Übernahme Hörtest-Bemerkungen in Befundbogen für Kita]], #DE-BW)
        * insert enableWhenExists(7.sehtest.15)
    * item[+] insert addItemWithSource(7.sehtest.16, #boolean, [[Sehtest: Amblyopieprüfung auffällig]], #DE-HE)
    * item[+] insert addItemWithSource(7.sehtest.17, #boolean, [[Sehtest: Myopieprüfung auffällig]], #DE-HE)    
    * item[+] insert addItemWithSource(7.sehtest.18, #boolean, [[Sehtest: Strabismusprüfung auffällig]], #DE-HE) 
    * item[+] insert addItemWithSource(7.sehtest.19, #boolean, [[Sehtest: Farbsinnstörungprüfung auffällig]], #DE-HE) 
    * item[+] insert addItemWithSource(7.sehtest.20, #boolean, [[Sehtest: Astigmatismusprüfung auffällig]], #DE-HE)
    * item[+] insert addItemWithSource(7.sehtest.21, #boolean, [[Sehtest: andere Diagnose]], #DE-HE)
    * item[+] insert addItemWithSource(7.sehtest.22, #choice, [[Sehtest: Stereosehen]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)    
    * item[+] insert addItemWithSource(7.sehtest.23, #choice, [[Sehtest: Farbsinn]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)            
    * item[+] insert addItem(7.6, #choice, [[Lang-Test auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.6a, #choice, [[Lang-Test auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItem(7.7, #choice, [[Sehschärfendifferenz auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)

  * item[+] insert addItem(7.7.a, #choice, [[Visus]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VisusVS) 


    * item[+] insert addItem(7.8, #choice, [[Visus Ferne auffällig (Gerät, Rechts)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)


  * item[+] insert addItem(7.8.1, #choice, [[Visus Sehtestgeraet rechts]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VisusSehtestgeraetRechtsVS) 

	 

      
    * item[+] insert addItem(7.9, #choice, [[Visus Ferne auffällig (Gerät, Links)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)

 * item[+] insert addItem(7.9.1, #choice, [[Visus Sehtestgeraet links]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VisusSehtestgeraetLinksVS)




    * item[+] insert addItem(7.10, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Rechts)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)

 * item[+] insert addItem(7.10.a, #choice, [[Visus Sehtafel rechts]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VisusSehtafelRechtsVS) 



    * item[+] insert addItem(7.11, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Links)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)

      
	  * item[+] insert addItem(7.11.a, #choice, [[Visus Sehtafel links]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VisusSehtafelLinksVS) 

* item[+] insert addItem(7.11.c, #choice, [[Vorschaltlinse rechts]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VorschaltlinseVS) 

  * item[+] insert addItem(7.11.d, #choice, [[Vorschaltlinse links]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(VorschaltlinseVS) 




    * item[+] insert addItem(7.12, #boolean, [[akuter Infekt obere Atemwege liegt vor]])
      * insert addSource(#DE-BY)
    * item[+] insert addItemWithSource(7.12a, #choice, [[akuter Infekt obere Atemwege liegt vor]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItem(7.13, #choice, [[Hörtest auffällig (Rechts)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItemWithSource(7.13.1, #choice, [[Hörtest rechts 0,5 kHz]], #DE-BW)
        * insert enableWhenCode(7.13, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.13.2, #choice, [[Hörtest rechts 1 kHz]], #DE-BW)
        * insert enableWhenCode(7.13, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.13.3, #choice, [[Hörtest rechts 2 kHz]], #DE-BW)
        * insert enableWhenCode(7.13, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.13.4, #choice, [[Hörtest rechts 4 kHz]], #DE-BW)
        * insert enableWhenCode(7.13, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.13.5, #choice, [[Hörtest rechts 6 kHz]], #DE-BW)
        * insert enableWhenCode(7.13, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
    * item[+] insert addItemWithSource(7.13.bewertung, #choice, [[Hörest rechts Bewertungsvorschlag]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_BewertungsvorschlagVS)
    * item[+] insert addItem(7.14, #choice, [[Hörtest auffällig (Links)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItemWithSource(7.14.1, #choice, [[Hörtest links 0,5 kHz]], #DE-BW)
        * insert enableWhenCode(7.14, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.14.2, #choice, [[Hörtest links 1 kHz]], #DE-BW)
        * insert enableWhenCode(7.14, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.14.3, #choice, [[Hörtest links 2 kHz]], #DE-BW)
        * insert enableWhenCode(7.14, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.14.4, #choice, [[Hörtest links 4 kHz]], #DE-BW)
        * insert enableWhenCode(7.14, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
      * item[+] insert addItemWithSource(7.14.5, #choice, [[Hörtest links 6 kHz]], #DE-BW)
        * insert enableWhenCode(7.14, !=, SEU_UB_AntwortAuffaelligkeitCS, 2)
        * answerValueSet = Canonical(SEU_UB_HoertestDezibelVS)
    * item[+] insert addItemWithSource(7.14.bewertung, #choice, [[Hörest links Bewertungsvorschlag]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_BewertungsvorschlagVS)
    * item[+] insert addItemWithSource(7.h.1, #boolean, [[Hörest gesamt altersentsprechend]], #DE-BW)
    * item[+] insert addItemWithSource(7.h.2, #boolean, [[Hörest gesamt abgeschlossen]], #DE-BW)
    * item[+] insert addItemWithSource(7.h.3, #boolean, [[Hörstörung bekannt]], #DE-BW)
    * item[+] insert addItemWithSource(7.h.4, #boolean, [[In HNO ärztlicher Behandlung]], #DE-BW)
    * item[+] insert addItemWithSource(7.h.5, #choice, [[Störquellen während Hörtest]], #DE-BW)
      * answerValueSet = Canonical(SEU_UB_UntersuchungHoertestStoerquellenVS)
      * repeats = true
    * item[+] insert addItemWithSource(7.h.6, #string, [[Hörtest Bemerkung]], #DE-BW)
      * item[+]
        * insert addItemWithSource(7.h.6.1, #boolean, [[Übernahme Hörtest-Bemerkungen in Befundbogen für Sorgeberechtigte]], #DE-BW)
        * insert enableWhenExists(7.h.6)
      * item[+]
        * insert addItemWithSource(7.h.6.2, #boolean, [[Übernahme Hörtest-Bemerkungen in Befundbogen für Kita]], #DE-BW)
        * insert enableWhenExists(7.h.6)
    * item[+] insert addItem(7.15, #choice, [[Visuomotorik auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.15a, #choice, [[Visuomotorik auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.16, #choice, [[Mengenvorwissen auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.16a, #choice, [[Mengenvorwissen auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.17, #choice, [[Zählen auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.17a, #choice, [[Zählen auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.18, #boolean, [[Keine ausreichenden Deutschkenntnisse vorhanden]])
      * insert addSource(#DE-BY)
    * item[+] insert addItemWithSource(7.18a, #choice, [[Keine ausreichenden Deutschkenntnisse vorhanden]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_DeutschkenntnisseVS)
    * item[+] insert addItem(7.18.b, #choice, [[Deutschkenntnisse Kind]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(Deutschkenntnisse_KindVS) 
	  * item[+] insert addItem(7.18.c, #choice, [[Deutschkenntnisse Mutter]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(Deutschkenntnisse_MutterVS)
    * item[+] insert addItem(7.18.d, #choice, [[Deutschkenntnisse Vater]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(Deutschkenntnisse_VaterVS)
    * item[+] insert addItem(7.19, #choice, [[Sprachverständnis auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
    * item[+] insert addItemWithSource(7.19a, #choice, [[Sprachverständnis auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.20, #choice, [[Lautbildung auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
    * item[+] insert addItem(7.21, #boolean, [[Kind stottert mehr als 6 Monate]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(7.22, #boolean, [[Stimme erscheint extrem auffällig über mehr als 3 Monate]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(7.23, #choice, [[Sprache (\"Kernaufgaben\") auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
    * item[+] insert addItem(7.24, #choice, [[Visuelle Wahrnehmung (Züge)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.24a, #choice, [[Visuelle Wahrnehmung (Züge)]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.25, #choice, [[Grobmotorik auffällig]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItemWithSource(7.25a, #choice, [[Grobmotorik auffällig]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
    * item[+] insert addItem(7.26, #choice, [[Formen zeichnen auffällig - Kreis]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.27, #choice, [[Formen zeichnen auffällig - Quadrat]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.28, #choice, [[Formen zeichnen auffällig - Dreieck]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.29, #choice, [[Formen zeichnen auffällig - Raute]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.30, #string, [[Anmerkungen, intern]])
      * insert addSource(#DE-BY)
    * item[+]
      * insert addItemWithSource(7.30.a, #integer, [[Stereosehen: Anzahl erkannter Stereobilder]], #DE-BE)
	  * item[+] insert addItem(7.30.b, #choice, [[Farbsehen]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(FarbsehenVS)


  * item[+] insert addGroup(7_2, 2. Screening)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(7.31, #date, [[Untersuchungsdatum]])
      * insert addSource(#DE-BY)
    * item[+] insert addGroup(7_2_1, Untersuchung 2. Screening)
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(7.31, exists, true)
      * item[+] insert addItem(7.32, #choice, [[Heutige Untersuchung]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningvS)
      * item[+] insert addItem(7.33, #integer, [[gemessene Körpergröße (in cm)]])
        * insert addSource(#DE-BY)
        * insert uunit(cm, "cm")
      * item[+] insert addItemWithSource(7.33a, #integer, [[Perzentile Körpergröße]], #DE-BW)
        * insert uunit(%, "Perzentile")
      * item[+] insert addItem(7.34, #decimal, [[gemessenes Körpergewicht (in kg)]])
        * insert addSource(#DE-BY)
        * insert uunit(kg, "kg")
      * item[+] insert addItemWithSource(7.34a, #integer, [[Perzentile Körpergewicht]], #DE-BW)
        * insert uunit(%, "Perzentile")
      * item[+] insert addItem(7.35, #boolean, [[Sehtest mit Brille]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.35a, #boolean, [[Brillenträger ohne Brille untersucht]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.36, #choice, [[Lang-Test auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.37, #choice, [[Sehschärfendifferenz auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.38, #choice, [[Visus Ferne auffällig (Gerät, Rechts)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.39, #choice, [[Visus Ferne auffällig (Gerät, Links)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.40, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Rechts)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.41, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Links)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.42, #boolean, [[akuter Infekt obere Atemwege liegt vor]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.43, #choice, [[Hörtest auffällig (Rechts)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.44, #choice, [[Hörtest auffällig (Links)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.45, #choice, [[Visuomotorik auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.46, #choice, [[Mengenvorwissen auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.47, #choice, [[Zählen auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.48, #boolean, [[Keine ausreichenden Deutschkenntnisse vorhanden]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.49, #choice, [[Sprachverständnis auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.50, #choice, [[Lautbildung auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.51, #boolean, [[Kind stottert mehr als 6 Monate]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.52, #boolean, [[Stimme erscheint extrem auffällig über mehr als 3 Monate]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(7.53, #choice, [[Sprache (\"Kernaufgaben\") auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.54, #choice, [[Visuelle Wahrnehmung (Züge)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.55, #choice, [[Grobmotorik auffällig]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.56, #choice, [[Formen zeichnen auffällig - Kreis]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.57, #choice, [[Formen zeichnen auffällig - Quadrat]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.58, #choice, [[Formen zeichnen auffällig - Dreieck]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.59, #choice, [[Formen zeichnen auffällig - Raute]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.60, #string, [[Anmerkungen, intern]])
        * insert addSource(#DE-BY)
  * item[+] insert addItemWithSource(7.61, #decimal, [[BMI]], #DE-BW)
  * item[+] insert addItemWithSource(7.62, #choice, [[Bewertung des Gewichts]], #DE-BW)
    * answerValueSet = Canonical(SEU_UB_GewichtsklassenVS)
  * item[+] insert addItemWithSource(7.63, #string, [[Größe & Gewicht: Bemerkungen]], #DE-BW)
    * item[+] insert addItemWithSource(7.63.1, #string, [[Größe & Gewicht: Übernahme der Bemerkungen in Befundbogen für Sorgeberechtigte]], #DE-BW)
      * insert enableWhenExists(7.63)
    * item[+] insert addItemWithSource(7.63.2, #string, [[Größe & Gewicht: Übernahme der Bemerkungen in Befundbogen für Kita]], #DE-BW) 
      * insert enableWhenExists(7.63)
  * item[+] insert addItemWithSource(7.64, #boolean, [[Untersuchung Seitliches Hin und Herspringen 1.Versuch durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.64.1, #integer, [[Untersuchung Seitliches Hin und Herspringen 1.Versuch]], #DE-BW)
    * insert enableWhenBoolean(7.64, =, true)
  * item[+] insert addItemWithSource(7.65, #boolean, [[Untersuchung Seitliches Hin und Herspringen 2.Versuch durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.65.1, #integer, [[Untersuchung Seitliches Hin und Herspringen 2.Versuch]], #DE-BW)
    * insert enableWhenBoolean(7.65, =, true)
  * item[+] insert addItemWithSource(7.66, #decimal, [[Untersuchung Seitliches Hin und Herspringen Durchschnitt]], #DE-BW)
  * item[+] insert addItemWithSource(7.67, #string, [[Seitliches Hin und Herspringen: Bemerkungen]], #DE-BW)
    * item[+] insert addItemWithSource(7.67.1, #string, [[Seitliches Hin und Herspringen: Übernahme der Bemerkungen in Befundbogen für Sorgeberechtigte]], #DE-BW)
      * insert enableWhenExists(7.67)
    * item[+] insert addItemWithSource(7.67.2, #string, [[Seitliches Hin und Herspringen: Übernahme der Bemerkungen in Befundbogen für Kita]], #DE-BW) 
      * insert enableWhenExists(7.67)
  * item[+] insert addItemWithSource(7.68, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Nicht durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.69, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Fehlende Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.70, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Intensiver Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.71, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Förderung häuslich/ Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.72, #boolean, [[Untersuchung Seitliches Hin und Herspringen: in Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.73, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Kinder-/ Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.74, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.75, #boolean, [[Untersuchung Seitliches Hin und Herspringen: Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.76, #boolean, [[Untersuchung Sprache: in Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.77, #boolean, [[Untersuchung Sprache: Kinder-/ Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.78, #boolean, [[Untersuchung Sprache: Intensiver Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.79, #boolean, [[Untersuchung Sprache: Förderung häuslich/ Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.80, #boolean, [[Untersuchung Sprache: Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.81, #boolean, [[Untersuchung Sprache: Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.82, #choice, [[Untersuchung Sprache: Gesprochene Sprache in den ersten 3L Erste_Sprache]], #DE-BW)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+] insert addItemWithSource(7.83, #choice, [[Untersuchung Sprache: Gesprochene Sprache in den ersten 3L Zweite_Sprache]], #DE-BW)
    * answerValueSet = Canonical(ISO6392_LanguageVS)
  * item[+] insert addItemWithSource(7.84, #boolean, [[Untersuchung Sprache: Gesprochene Sprache Weitere gesprochene Sprachen]], #DE-BW)
  * item[+] insert addItemWithSource(7.85, #boolean, [[Untersuchung Sprache: Kontakt dt. Sprache < 10 Monate]], #DE-BW)
  * item[+] insert addItemWithSource(7.86, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Satzbau]], #DE-BW)
  * item[+] insert addItemWithSource(7.87, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Artikel]], #DE-BW)
  * item[+] insert addItemWithSource(7.88, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Verb]], #DE-BW)
  * item[+] insert addItemWithSource(7.89, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Plural]], #DE-BW)
  * item[+] insert addItemWithSource(7.90, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Präposition]], #DE-BW)
  * item[+] insert addItemWithSource(7.91, #boolean, [[Untersuchung Sprache: Spontanansprache Auffälligkeiten Stottern/Poltern]], #DE-BW)
  * item[+] insert addItemWithSource(7.92, #boolean, [[Untersuchung Sprache: Spontansprache Nicht Bewertbar]], #DE-BW)
  * item[+] insert addItemWithSource(7.93, #boolean, [[Untersuchung Sprachscreening: Weitere Abklärung erforderlich]], #DE-BW)
  * item[+] insert addItemWithSource(7.94, #boolean, [[Untersuchung Sprachscreening: Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.95, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_Nicht_durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.96, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.97, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.98, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_1a]], #DE-BW)
  * item[+] insert addItemWithSource(7.99, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_1b]], #DE-BW)
  * item[+] insert addItemWithSource(7.100, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_2a]], #DE-BW)
  * item[+] insert addItemWithSource(7.101, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_2b]], #DE-BW)
  * item[+] insert addItemWithSource(7.102, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_3a]], #DE-BW)
  * item[+] insert addItemWithSource(7.103, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_3b]], #DE-BW)
  * item[+] insert addItemWithSource(7.104, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_4a]], #DE-BW)
  * item[+] insert addItemWithSource(7.105, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_4b]], #DE-BW)
  * item[+] insert addItemWithSource(7.106, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_5a]], #DE-BW)
  * item[+] insert addItemWithSource(7.107, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_5b]], #DE-BW)
  * item[+] insert addItemWithSource(7.108, #integer, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_von_Sätzen_Punktwert]], #DE-BW)
  * item[+] insert addItemWithSource(7.109, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_1a]], #DE-BW)
  * item[+] insert addItemWithSource(7.110, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_1b]], #DE-BW)
  * item[+] insert addItemWithSource(7.111, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_2a]], #DE-BW)
  * item[+] insert addItemWithSource(7.112, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_2b]], #DE-BW)
  * item[+] insert addItemWithSource(7.113, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_3a]], #DE-BW)
  * item[+] insert addItemWithSource(7.114, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_3b]], #DE-BW)
  * item[+] insert addItemWithSource(7.115, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_4a]], #DE-BW)
  * item[+] insert addItemWithSource(7.116, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_4b]], #DE-BW)
  * item[+] insert addItemWithSource(7.117, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_5a]], #DE-BW)
  * item[+] insert addItemWithSource(7.118, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_5b]], #DE-BW)
  * item[+] insert addItemWithSource(7.119, #integer, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_Punktwert]], #DE-BW)
  * item[+] insert addItemWithSource(7.120, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolgen_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.121, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolge_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.122, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Wiedergabe_Zahlenfolge_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.123, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_0]], #DE-BW)
  * item[+] insert addItemWithSource(7.124, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_1]], #DE-BW)
  * item[+] insert addItemWithSource(7.125, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_2]], #DE-BW)
  * item[+] insert addItemWithSource(7.126, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_3]], #DE-BW)
  * item[+] insert addItemWithSource(7.127, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_4]], #DE-BW)
  * item[+] insert addItemWithSource(7.128, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_5]], #DE-BW)
  * item[+] insert addItemWithSource(7.129, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_6]], #DE-BW)
  * item[+] insert addItemWithSource(7.130, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_7]], #DE-BW)
  * item[+] insert addItemWithSource(7.131, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_8]], #DE-BW)
  * item[+] insert addItemWithSource(7.132, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_9]], #DE-BW)
  * item[+] insert addItemWithSource(7.133, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_10]], #DE-BW)
  * item[+] insert addItemWithSource(7.134, #integer, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_Punktwert]], #DE-BW)
  * item[+] insert addItemWithSource(7.135, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_kunstwörter_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.136, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.137, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Nachsprechen_Kunstwörter_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.138, #string, [[Untersuchung_Sprache_Sprachscreening_HASE_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.139, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Bemerkungen_Übernahme in Befundbogen für Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.140, #boolean, [[Untersuchung_Sprache_Sprachscreening_HASE_Bemerkungen_Übernahme in Befundbogen für Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.141, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_bei_NS_im_Grenzbereich_0]], #DE-BW)
  * item[+] insert addItemWithSource(7.142, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_bei_NS_im_Grenzbereich_1]], #DE-BW)
  * item[+] insert addItemWithSource(7.143, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_bei_NS_im_Grenzbereich_2]], #DE-BW)
  * item[+] insert addItemWithSource(7.144, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_bei_NS_im_Grenzbereich_3]], #DE-BW)
  * item[+] insert addItemWithSource(7.145, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.146, #boolean, [[Untersuchung_Sprache_Sprachverständnis_KVS_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.147, #boolean, [[Untersuchung_Artikulation_nicht_durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.148, #boolean, [[Untersuchung_Artikulation_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.149, #boolean, [[Untersuchung_Artikulation_in_Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.150, #boolean, [[Untersuchung_Artikulation_Kinder-/Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.151, #boolean, [[Untersuchung_Artikulation_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.152, #boolean, [[Untersuchung_Artikulation_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.153, #boolean, [[Untersuchung_Artikulation_B]], #DE-BW)
  * item[+] insert addItemWithSource(7.154, #boolean, [[Untersuchung_Artikulation_L/N]], #DE-BW)
  * item[+] insert addItemWithSource(7.155, #boolean, [[Untersuchung_Artikulation_ch1]], #DE-BW)
  * item[+] insert addItemWithSource(7.156, #boolean, [[Untersuchung_Artikulation_ch2]], #DE-BW)
  * item[+] insert addItemWithSource(7.157, #boolean, [[Untersuchung_Artikulation_G/K]], #DE-BW)
  * item[+] insert addItemWithSource(7.158, #boolean, [[Untersuchung_Artikulation_S/Z]], #DE-BW)
  * item[+] insert addItemWithSource(7.159, #boolean, [[Untersuchung_Artikulation_SCH]], #DE-BW)
  * item[+] insert addItemWithSource(7.160, #boolean, [[Untersuchung_Artikulation_R]], #DE-BW)
  * item[+] insert addItemWithSource(7.161, #boolean, [[Untersuchung_Artikulation_F/W/PF]], #DE-BW)
  * item[+] insert addItemWithSource(7.162, #boolean, [[Untersuchung_Artikulation_T/D]], #DE-BW)
  * item[+] insert addItemWithSource(7.163, #boolean, [[Untersuchung_Artikulation_Kons.-verb]], #DE-BW)
  * item[+] insert addItemWithSource(7.164, #boolean, [[Untersuchung_Artikulation_Andere]], #DE-BW)
  * item[+] insert addItemWithSource(7.165, #boolean, [[Untersuchung_Artikulation_Ausspracheverständlichkeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.166, #boolean, [[Untersuchung_Artikulation_Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.167, #string, [[Untersuchung_Artikulation_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.168, #boolean, [[Untersuchung_Artikulation_Bemerkungen_Übernahme in Befundbogen für Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.169, #boolean, [[Untersuchung_Artikulation_Bemerkungen_Übernahme in Befundbogen für Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.170, #boolean, [[Untersuchung_Graphomotorik_Händigkeit_rechts]], #DE-BW)
  * item[+] insert addItemWithSource(7.171, #boolean, [[Untersuchung_Graphomotorik_Händigkeit_links]], #DE-BW)
  * item[+] insert addItemWithSource(7.172, #boolean, [[Untersuchung_Graphomotorik_Händigkeit_unklar]], #DE-BW)
  * item[+] insert addItemWithSource(7.173, #boolean, [[Untersuchung_Graphomotorik_Druck_unauffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.174, #boolean, [[Untersuchung_Graphomotorik_Druck_auffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.175, #boolean, [[Untersuchung_Graphomotorik_Druck_auffällig_zu_stark]], #DE-BW)
  * item[+] insert addItemWithSource(7.176, #boolean, [[Untersuchung_Graphomotorik_Druck_auffällig_zu_schwach]], #DE-BW)
  * item[+] insert addItemWithSource(7.177, #boolean, [[Untersuchung_Graphomotorik_Haltung_unauffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.178, #boolean, [[Untersuchung_Graphomotorik_Haltung_auffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.179, #boolean, [[Untersuchung_Graphomotorik_Haltung_auffällig_Handgelenk_liegt_nicht_auf]], #DE-BW)
  * item[+] insert addItemWithSource(7.180, #boolean, [[Untersuchung_Graphomotorik_Haltung_auffällig_Palmargriff]], #DE-BW)
  * item[+] insert addItemWithSource(7.181, #boolean, [[Untersuchung_Graphomotorik_Haltung_auffällig_kein_Dreipunktgriff]], #DE-BW)
  * item[+] insert addItemWithSource(7.182, #boolean, [[Untersuchung_Graphomotorik_Führung_unauffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.183, #boolean, [[Untersuchung_Graphomotorik_Führung_auffällig]], #DE-BW)
  * item[+] insert addItemWithSource(7.184, #boolean, [[Untersuchung_Graphomotorik_Führung_auffällig_verzittert]], #DE-BW)
  * item[+] insert addItemWithSource(7.185, #boolean, [[Untersuchung_Graphomotorik_Führung_auffällig_unangemessene_Bewegung]], #DE-BW)
  * item[+] insert addItemWithSource(7.186, #boolean, [[Untersuchung_Graphomotorik_Führung_auffällig_ausfahrende_Bewegungsimpulse]], #DE-BW)
  * item[+] insert addItemWithSource(7.187, #boolean, [[Untersuchung_Graphomotorik_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.188, #boolean, [[Untersuchung_Graphomotorik_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.189, #boolean, [[Untersuchung_Graphomotorik_Intensiver_Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.190, #boolean, [[Untersuchung_Graphomotorik_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.191, #boolean, [[Untersuchung_Graphomotorik_In_Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.192, #boolean, [[Untersuchung_Graphomotorik_Kinder-/Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.193, #boolean, [[Untersuchung_Graphomotorik_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.194, #boolean, [[Untersuchung_Graphmotorik_Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.195, #string, [[Untersuchung_Graphomotorik_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.196, #boolean, [[Untersuchung_Graphomotorik_Bemerkungen_Übernahme_in_Befundbogen_für_Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.197, #boolean, [[Untersuchung_Graphomotorik_Bemerkungen_Übernahme_in_Befundbogen_für_Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.198, #boolean, [[Untersuchung_Visuomotorik_DP0_0]], #DE-BW)
  * item[+] insert addItemWithSource(7.199, #boolean, [[Untersuchung_Visuomotorik_DP0_1]], #DE-BW)
  * item[+] insert addItemWithSource(7.200, #boolean, [[Untersuchung_Visuomotorik_DP0_2]], #DE-BW)
  * item[+] insert addItemWithSource(7.201, #boolean, [[Untersuchung_Visuomotorik_DP0_3]], #DE-BW)
  * item[+] insert addItemWithSource(7.202, #boolean, [[Untersuchung_Visuomotorik_DP0_4]], #DE-BW)
  * item[+] insert addItemWithSource(7.203, #choice, [[Untersuchung_Visuomotorik_DP0_Bewertung]], #DE-BW)
    * answerValueSet = Canonical(SEU_UB_EntwicklungsbewertungVS)
  * item[+] insert addItemWithSource(7.204, #boolean, [[Untersuchung_Visuomotorik_DP1_0]], #DE-BW)
  * item[+] insert addItemWithSource(7.205, #boolean, [[Untersuchung_Visuomotorik_DP1_1]], #DE-BW)
  * item[+] insert addItemWithSource(7.206, #boolean, [[Untersuchung_Visuomotorik_DP1_2]], #DE-BW)
  * item[+] insert addItemWithSource(7.207, #boolean, [[Untersuchung_Visuomotorik_DP1_3]], #DE-BW)
  * item[+] insert addItemWithSource(7.208, #boolean, [[Untersuchung_Visuomotorik_DP1_4]], #DE-BW)
  * item[+] insert addItemWithSource(7.209, #boolean, [[Untersuchung_Visuomotorik_DP1_5]], #DE-BW)
  * item[+] insert addItemWithSource(7.210, #choice, [[Untersuchung_Visuomotorik_DP1_Bewertung]], #DE-BW)
    * answerValueSet = Canonical(SEU_UB_EntwicklungsbewertungVS)
  * item[+] insert addItemWithSource(7.211, #boolean, [[Untersuchung_Visuomotorik_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.212, #boolean, [[Untersuchung_Visuomotorik_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.213, #boolean, [[Untersuchung_Visuomotorik_Intensiver_Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.214, #boolean, [[Untersuchung_Visuomotorik_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.215, #boolean, [[Untersuchung_Visuomotorik_In_Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.216, #boolean, [[Untersuchung_Visuomotorik_Kinder-/Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.217, #boolean, [[Untersuchung_Visuomotorik_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.218, #boolean, [[Untersuchung_Visuomotorik_Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.219, #string, [[Untersuchung_Visuomotorik_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.220, #boolean, [[Untersuchung_Visuomotorik_Bemerkungen_Übernahme_in_Befundbogen_für_Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.221, #boolean, [[Untersuchung_Visuomotorik_Bemerkungen_Übernahme_in_Befundbogen_für_Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.222, #boolean, [[Untersuchung_Menschzeichnung_Kopffüßler]], #DE-BW)
  * item[+] insert addItemWithSource(7.223, #boolean, [[Untersuchung_Menschzeichnung_unstrukturiert]], #DE-BW)
  * item[+] insert addItemWithSource(7.224, #boolean, [[Untersuchung_Menschzeichnung_Nicht_Durchgeführt]], #DE-BW)
  * item[+] insert addItemWithSource(7.225, #boolean, [[Untersuchung_Menschzeichnung_Fehlende_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.226, #boolean, [[Untersuchung_Menschzeichnung_Intensiver_Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.227, #boolean, [[Untersuchung_Menschzeichnung_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.228, #boolean, [[Untersuchung_Menschzeichnung_In_Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.229, #boolean, [[Untersuchung_Menschzeichnung_Kinder-/Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.230, #boolean, [[Untersuchung_Menschzeichnung_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.231, #boolean, [[Untersuchung_Menschzeichnung_Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.232, #string, [[Untersuchung_Menschzeichnung_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.233, #boolean, [[Untersuchung_Menschzeichnung_Bemerkungen_Übernahme_in_Befundbogen_für_Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.234, #boolean, [[Untersuchung_Menschzeichnung_Bemerkungen_Übernahme_in_Befundbogen_für_Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.235, #boolean, [[Untersuchung_Mathematische_Basiskompetenz_Intensiver_Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.236, #boolean, [[Untersuchung_Mathematische_Basiskompetenz_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.237, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Konzentration]], #DE-BW)
  * item[+] insert addItemWithSource(7.238, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Ausdauer]], #DE-BW)
  * item[+] insert addItemWithSource(7.239, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Frustrationstoleranz]], #DE-BW)
  * item[+] insert addItemWithSource(7.240, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Mitarbeit]], #DE-BW)
  * item[+] insert addItemWithSource(7.241, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Impulskontrolle]], #DE-BW)
  * item[+] insert addItemWithSource(7.242, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Andere]], #DE-BW)
  * item[+] insert addItemWithSource(7.243, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Arbeitstempo]], #DE-BW)
  * item[+] insert addItemWithSource(7.244, #boolean, [[Untersuchung_Verhalten_Auffälligkeiten_Selbstvertrauen]], #DE-BW)
  * item[+] insert addItemWithSource(7.245, #boolean, [[Untersuchung_Verhalten_Intensiver_Förderbedarf]], #DE-BW)
  * item[+] insert addItemWithSource(7.246, #boolean, [[Untersuchung_Verhalten_Förderung_häuslich/Kindergarten]], #DE-BW)
  * item[+] insert addItemWithSource(7.247, #boolean, [[Untersuchung_Verhalten_In_Behandlung]], #DE-BW)
  * item[+] insert addItemWithSource(7.248, #boolean, [[Untersuchung_Verhalten_Altersentsprechend]], #DE-BW)
  * item[+] insert addItemWithSource(7.249, #boolean, [[Untersuchung_Verhalten_Kinder-/Hausarzt]], #DE-BW)
  * item[+] insert addItemWithSource(7.250, #boolean, [[Untersuchung_Verhalten_Abgeschlossen]], #DE-BW)
  * item[+] insert addItemWithSource(7.251, #string, [[Untersuchung_Verhalten_Bemerkungen]], #DE-BW)
  * item[+] insert addItemWithSource(7.252, #boolean, [[Untersuchung_Verhalten_Bemerkungen_Übernahme_in_Befundbogen_für_Sorgeberechtigte]], #DE-BW)
  * item[+] insert addItemWithSource(7.253, #boolean, [[Untersuchung_Verhalten_Bemerkungen_Übernahme_in_Befundbogen_für_Kita]], #DE-BW)
  * item[+] insert addItemWithSource(7.254, #boolean, [[Untersuchung_Zusammenfassung_SBBZ_Empfehlung_geben]], #DE-BW)
  * item[+] insert addItemWithSource(7.255, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_Schritt_1b]], #DE-BW)
  * item[+] insert addItemWithSource(7.256, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_SETK_3-5_(Schritt_1)]], #DE-BW)
  * item[+] insert addItemWithSource(7.257, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_Schritt_2]], #DE-BW)
  * item[+] insert addItemWithSource(7.258, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_SETK_3-5_(Schritt_2)]], #DE-BW)
  * item[+] insert addItemWithSource(7.259, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_HASE_(Schritt_2)]], #DE-BW)
  * item[+] insert addItemWithSource(7.260, #boolean, [[Untersuchung_Zusammenfassung_Geplante_Untersuchung_SOPESS_(Schritt_2)]], #DE-BW)
  * item[+] insert addItemWithSource(7.261, #boolean, [[Untersuchung_Zusammenfassung_Bemerkungen_Befundbogen]], #DE-BW)
  * item[+] insert addItemWithSource(7.262, #integer, [[Anzahl der Sprünge]], #DE-HE)
  * item[+] insert addItemWithSource(7.263, #integer, [[Punktzahl der Visuomotrikübung]], #DE-HE)
  * item[+] insert addItemWithSource(7.264, #integer, [[Punkte des Artikulation-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.265, #integer, [[Punkte des Pseudowörter-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.266, #integer, [[Punkte des Präpositionen-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.267, #integer, [[Punkte des Pluralbildung-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.268, #choice, [[Auditive Infoverarbeitung]], #DE-HE)
    * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
  * item[+] insert addItemWithSource(7.269, #integer, [[Punkte zum Visuelle-Wahrnehmung-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.270, #integer, [[Punkte zum Zählen-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.271, #integer, [[Punkte zum Mengen-Test]], #DE-HE)
  * item[+] insert addItemWithSource(7.272, #choice, [[Wissen/Denken]], #DE-HE)
    * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)



CodeSystem: SEU_UB_UntersuchungsstatusFdSScreeningCS
Id: SEU-UB-UntersuchungsstatusFdSScreeningCS
Title: "SEU Untersuchungsstatus FdS-Screening"
* #1 "Erstuntersuchung"
* #2 "Wiederholung"
* #3 "nicht bekannt"
* #4 "Screening fand nicht statt"
* #5 "Screening nicht möglich, Kind verweigert"
* #6 "Screening nicht möglich, keine Dt-Kenntnisse"
* #7 "Screening entfällt, gem. §8 SchulgespflV"

ValueSet: SEU_UB_UntersuchungsstatusFdSScreeningvS
Id: SEU-UB-UntersuchungsstatusFdSScreeningVS
Title: "SEU Untersuchungsstatus FdS-Screening"
Description: "Diese Codes enthalten Statusangaben über ein FdS-Screening"
* include codes from system SEU_UB_UntersuchungsstatusFdSScreeningCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Erstuntersuchung"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Wiederholung"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht bekannt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Screening fand nicht statt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Screening nicht möglich, Kind verweigert"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Screening nicht möglich, keine Dt-Kenntnisse"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Screening entfällt, gem. §8 SchulgespflV"

CodeSystem: SEU_UB_AntwortAuffaelligkeitCS
Id: SEU-UB-AntwortAuffaelligkeitCS
Title: "SEU Antwort Auffälligkeit"
* #1 "ja"
* #2 "nein"
* #3 "nicht beurteilbar"
* #8 "Untersuchung nicht möglich"
* #9 "Untersuchung nicht durchgeführt"

ValueSet: SEU_UB_AntwortAuffaelligkeitVS
Id: SEU-UB-AntwortAuffaelligkeitVS
Title: "SEU Antwort Auffälligkeit"
Description: "Diese Codes enthalten Antwortmöglichkeiten zu Auffälligkeiten"
* include codes from system SEU_UB_AntwortAuffaelligkeitCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitCS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Untersuchung nicht möglich"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Untersuchung nicht durchgeführt"

ValueSet: SEU_UB_AntwortAuffaelligkeitBeurteilbarVS
Id: SEU-UB-AntwortAuffaelligkeitBeurteilbarVS
Title: "SEU Antwort Auffälligkeit aber beurteilbar"
Description: "Diese Codes enthalten Antwortmöglichkeiten zu Auffälligkeiten ohne Code 3 'nicht beurteilbar'"
* SEU_UB_AntwortAuffaelligkeitCS#1 "ja"
* SEU_UB_AntwortAuffaelligkeitCS#2 "nein"
* SEU_UB_AntwortAuffaelligkeitCS#8 "Untersuchung nicht möglich"
* SEU_UB_AntwortAuffaelligkeitCS#9 "Untersuchung nicht durchgeführt"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Untersuchung nicht möglich"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Untersuchung nicht durchgeführt"

ValueSet: SEU_UB_AntwortAuffaelligkeitBeurteilbarMoeglichVS
Id: SEU-UB-AntwortAuffaelligkeitBeurteilbarMoeglichVS
Title: "SEU Antwort Auffälligkeit aber beurteilbar"
Description: "Diese Codes enthalten Antwortmöglichkeiten zu Auffälligkeiten ohne Code 3 & 8"
* SEU_UB_AntwortAuffaelligkeitCS#1 "ja"
* SEU_UB_AntwortAuffaelligkeitCS#2 "nein"
* SEU_UB_AntwortAuffaelligkeitCS#9 "Untersuchung nicht durchgeführt"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Untersuchung nicht durchgeführt"

CodeSystem: GewichtsklassenCS
Id: gewichtsklassen-cs
Title: "Gewichtsklassen CodeSystem"
Description: "CodeSystem, das verschiedene Gewichtskategorien enthält."
* #starkes_Untergewicht "Starkes Untergewicht"
* #Untergewicht "Untergewicht"
* #Normalgewicht "Normalgewicht"
* #Übergewicht "Übergewicht"
* #Adipositas "Adipositas"

ValueSet: SEU_UB_GewichtsklassenVS
Id: gewichtsklassen-vs
Title: "Gewichtsklassen ValueSet"
Description: "ValueSet, das verschiedene Gewichtskategorien enthält."
* include codes from system GewichtsklassenCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(GewichtsklassenCS)
* ^expansion.contains[=].code = #starkes_Untergewicht
* ^expansion.contains[=].display = "Starkes Untergewicht"
* ^expansion.contains[+].system = Canonical(GewichtsklassenCS)
* ^expansion.contains[=].code = #Untergewicht
* ^expansion.contains[=].display = "Untergewicht"
* ^expansion.contains[+].system = Canonical(GewichtsklassenCS)
* ^expansion.contains[=].code = #Normalgewicht
* ^expansion.contains[=].display = "Normalgewicht"
* ^expansion.contains[+].system = Canonical(GewichtsklassenCS)
* ^expansion.contains[=].code = #Übergewicht
* ^expansion.contains[=].display = "Übergewicht"
* ^expansion.contains[+].system = Canonical(GewichtsklassenCS)
* ^expansion.contains[=].code = #Adipositas
* ^expansion.contains[=].display = "Adipositas"

CodeSystem: SEU_UB_BewertungsvorschlagCS
Id: bewertungsvorschlag-cs
Title: "Bewertungsvorschlag CodeSystem"
Description: "CodeSystem, das verschiedene Bewertungsvorschläge enthält."
* #Altersentsprechend "Altersentsprechend"
* #Arztempfehlung "Arztempfehlung"

ValueSet: SEU_UB_BewertungsvorschlagVS
Id: bewertungsvorschlag-vs
Title: "Bewertungsvorschlag ValueSet"
Description: "ValueSet, das die verschiedenen Bewertungsvorschläge enthält."
* include codes from system SEU_UB_BewertungsvorschlagCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_BewertungsvorschlagCS)
* ^expansion.contains[=].code = #Altersentsprechend
* ^expansion.contains[=].display = "Altersentsprechend"
* ^expansion.contains[+].system = Canonical(SEU_UB_BewertungsvorschlagCS)
* ^expansion.contains[=].code = #Arztempfehlung
* ^expansion.contains[=].display = "Arztempfehlung"

CodeSystem: SEU_UB_UntersuchungHoertestStoerquellenCS
Id: seu-ub-untersuchung-hoertest-stoerquellen-cs
Title: "SEU_UB_Untersuchung Hörtest Störquellen CodeSystem"
Description: "CodeSystem für mögliche Störquellen bei einem Hörtest."
* #Akuter_Infekt "Akuter Infekt"
* #Laerm "Lärm"

ValueSet: SEU_UB_UntersuchungHoertestStoerquellenVS
Id: seu-ub-untersuchung-hoertest-stoerquellen-vs
Title: "SEU_UB_Untersuchung Hörtest Störquellen ValueSet"
Description: "ValueSet, das mögliche Störquellen bei einem Hörtest enthält."
* include codes from system SEU_UB_UntersuchungHoertestStoerquellenCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_UntersuchungHoertestStoerquellenCS)
* ^expansion.contains[=].code = #Akuter_Infekt
* ^expansion.contains[=].display = "Akuter Infekt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungHoertestStoerquellenCS)
* ^expansion.contains[=].code = #Laerm
* ^expansion.contains[=].display = "Lärm"

CodeSystem: SEU_UB_BewertungErgebnisCS
Id: seu-ub-bewertung-ergebnis-cs
Title: "SEU_UB_Bewertung Ergebnis CodeSystem"
Description: "CodeSystem für die Bewertung des Ergebnisses."
* #besser "Besser"
* #nicht_besser "Nicht besser"
* #nicht_durchgefuehrt "Nicht durchgeführt"

ValueSet: SEU_UB_BewertungErgebnisVS
Id: seu-ub-bewertung-ergebnis-vs
Title: "SEU_UB_Bewertung Ergebnis ValueSet"
Description: "ValueSet, das die Bewertung des Ergebnisses enthält."
* include codes from system SEU_UB_BewertungErgebnisCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_BewertungErgebnisCS)
* ^expansion.contains[=].code = #besser
* ^expansion.contains[=].display = "Besser"
* ^expansion.contains[+].system = Canonical(SEU_UB_BewertungErgebnisCS)
* ^expansion.contains[=].code = #nicht_besser
* ^expansion.contains[=].display = "Nicht besser"
* ^expansion.contains[+].system = Canonical(SEU_UB_BewertungErgebnisCS)
* ^expansion.contains[=].code = #nicht_durchgefuehrt
* ^expansion.contains[=].display = "Nicht durchgeführt"

CodeSystem: ISO6392_LanguageCS
Id: iso6392-language-cs
Title: "ISO 639-2 Language Codes"
Description: "Language codes according to ISO 639-2."
* #aar "Afar"
* #abk "Abchasisch"
* #ace "Achinesisch"
* #ach "Acholi"
* #ada "Dangme"
* #ady "Adygeisch"
* #afr "Afrikaans"
* #ain "Ainu"
* #aka "Akan"
* #alb "Albanisch"
* #ale "Aleutisch"
* #alt "Südaltaisch"
* #amh "Amharisch"
* #anp "Angika"
* #ara "Arabisch"
* #arg "Aragonesisch"
* #arm "Armenisch"
* #arn "Mapudungun"
* #arp "Arapaho"
* #arw "Arawak"
* #asm "Assamesisch"
* #ast "Asturisch"
* #ava "Awarisch"
* #awa "Awadhi"
* #aym "Aymara"
* #aze "Aserbaidschanisch"
* #bak "Baschkirisch"
* #bal "Belutschisch"
* #bam "Bambara"
* #ban "Balinesisch"
* #baq "Baskisch"
* #bas "Bassa"
* #bej "Bedscha"
* #bel "Belarussisch"
* #bem "Bemba"
* #ben "Bengalisch"
* #bho "Bhojpuri"
* #bik "Bikolano"
* #bin "Edo"
* #bis "Bislama"
* #bla "Blackfoot"
* #bos "Bosnisch"
* #bra "Braj-Bhakha"
* #bre "Bretonisch"
* #bua "Burjatisch"
* #bug "Buginesisch"
* #bul "Bulgarisch"
* #bur "Birmanisch"
* #byn "Blin"
* #cad "Caddo"
* #car "Karib"
* #cat "Katalanisch, Valencianisch"
* #ceb "Cebuano"
* #cha "Chamorro"
* #che "Tschetschenisch"
* #chi "Chinesisch"
* #chk "Chuukesisch"
* #chm "Mari"
* #chn "Chinook Wawa"
* #cho "Choctaw"
* #chp "Chipewyan"
* #chr "Cherokee"
* #chv "Tschuwaschisch"
* #chy "Cheyenne"
* #cnr "Montenegrinisch"
* #cor "Kornisch"
* #cos "Korsisch"
* #cre "Cree"
* #crh "Krimtatarisch"
* #csb "Kaschubisch"
* #cze "Tschechisch"
* #dak "Dakota"
* #dan "Dänisch"
* #dar "Darginisch"
* #del "Delawarisch"
* #den "Slavey"
* #dgr "Dogrib"
* #din "Dinka"
* #div "Dhivehi"
* #doi "Dogri"
* #dsb "Niedersorbisch"
* #dua "Duala"
* #dut "Niederländisch, Belgisches Niederländisch"
* #dyu "Dioula"
* #dzo "Dzongkha"
* #efi "Efik"
* #eka "Ekajuk"
* #eng "Englisch"
* #est "Estnisch"
* #ewe "Ewe"
* #ewo "Ewondo"
* #fan "Fang"
* #fao "Färöisch"
* #fat "Fante"
* #fij "Fidschi"
* #fil "Filipino"
* #fin "Finnisch"
* #fon "Fon"
* #fre "Französisch"
* #frr "Nordfriesisch"
* #frs "Ostfriesisches Platt"
* #fry "Westfriesisch"
* #ful "Fulfulde"
* #fur "Furlanisch"
* #gaa "Ga"
* #gay "Gayo"
* #gba "Gbaya-Sprachen"
* #geo "Georgisch"
* #ger "Deutsch"
* #gil "Kiribatisch, Gilbertesisch"
* #gla "Schottisch-gälisch"
* #gle "Irisch"
* #glg "Galicisch, Galegisch"
* #glv "Manx,"
* #gon "Gondi"
* #gor "Gorontalo"
* #grb "Grebo"
* #gre "Griechisch"
* #grn "Guaraní"
* #gsw "Schweizerdeutsch"
* #guj "Gujarati"
* #gwi "Gwich'in (Sprache)"
* #hai "Haida"
* #hat "Haitianisch-Kreolisch"
* #hau "Hausa"
* #haw "Hawaiisch"
* #heb "Hebräisch"
* #her "Otjiherero"
* #hil "Hiligaynon"
* #hin "Hindi"
* #hmn "Hmong-Sprache"
* #hmo "Hiri Motu"
* #hrv "Kroatisch"
* #hsb "Obersorbisch"
* #hun "Ungarisch"
* #hup "Hoopa"
* #iba "Iban"
* #ibo "Igbo"
* #ice "Isländisch"
* #iii "Yi"
* #iku "Inuktitut"
* #ilo "Ilokano"
* #ind "Indonesisch"
* #inh "Inguschisch"
* #ipk "Inupiaq"
* #ita "Italienisch"
* #jav "Javanisch"
* #jpn "Japanisch"
* #jpr "Judäo-Persisch"
* #jrb "Judäo-Arabisch"
* #kaa "Karakalpakisch"
* #kab "Kabylisch"
* #kac "Jingpo"
* #kal "Grönländisch, Kalaallisut"
* #kam "Kikamba"
* #kan "Kannada"
* #kas "Kashmiri"
* #kau "Kanuri"
* #kaz "Kasachisch"
* #kbd "Kabardinisch, Ost-Tscherkessisch"
* #kha "Khasi"
* #khm "Khmer"
* #kik "Kikuyu"
* #kin "Kinyarwanda, Ruandisch"
* #kir "Kirgisisch"
* #kmb "Kimbundu"
* #kok "Konkani"
* #kom "Komi"
* #kon "Kikongo"
* #kor "Koreanisch"
* #kos "Kosraeanisch"
* #kpe "Kpelle"
* #krc "Karatschai-balkarisch"
* #krl "Karelisch"
* #kru "Kurukh"
* #kua "oshiKwanyama"
* #kum "Kumykisch"
* #kur "Kurdisch"
* #kut "Kutanaha"
* #lad "Judenspanisch, Ladino, Sephardisch"
* #lah "Lahnda, Westpanjabi"
* #lam "Lamba"
* #lao "Laotisch"
* #lav "Lettisch"
* #lez "Lesgisch"
* #lim "Limburgisch, Südniederfränkisch"
* #lin "Lingála"
* #lit "Litauisch"
* #lol "Lomongo"
* #loz "Lozi"
* #ltz "Luxemburgisch"
* #lua "Tschiluba"
* #lub "Kiluba"
* #lug "Luganda"
* #lun "Chilunda"
* #luo "Luo"
* #lus "Mizo, Lushai"
* #mac "Mazedonisch"
* #mad "Maduresisch"
* #mag "Magadhi"
* #mah "Marshallesisch"
* #mai "Maithili"
* #mak "Makassar"
* #mal "Malayalam"
* #man "Manding"
* #mao "Maori"
* #mar "Marathi"
* #mas "Maa, Kimaasai"
* #may "Malaiisch"
* #mdf "Mokschanisch"
* #mdr "Mandar"
* #men "Mende"
* #mic "Míkmawísimk"
* #min "Minangkabauisch"
* #mlg "Malagasy, Malagassi"
* #mlt "Maltesisch"
* #mnc "Mandschurisch"
* #mni "Meitei"
* #moh "Mohawk"
* #mon "Mongolisch"
* #mos "Mòoré"
* #mwl "Mirandés"
* #mwr "Marwari"
* #myv "Ersjanisch, Ersja-Mordwinisch"
* #nap "Neapolitanisch"
* #nau "Nauruisch"
* #nav "Navajo"
* #nbl "Süd-Ndebele"
* #nde "Nord-Ndebele"
* #ndo "Ndonga"
* #nds "Niederdeutsch, Plattdeutsch"
* #nep "Nepali"
* #new "Newari"
* #nia "Nias"
* #niu "Niueanisch"
* #nno "Nynorsk"
* #nob "Bokmål"
* #nog "Nogaisch"
* #nor "Norwegisch"
* #nqo "N’Ko"
* #nso "Nord-Sotho"
* #nya "Chichewa"
* #nym "Nyamwesi"
* #nyn "Runyankole, Runyankore"
* #nyo "Runyoro"
* #nzi "Nzema"
* #oci "Okzitanisch"
* #oji "Ojibwe"
* #ori "Oriya"
* #orm "Oromo"
* #osa "Osage"
* #oss "Ossetisch"
* #pag "Pangasinensisch"
* #pam "Kapampangan"
* #pan "Panjabi, Pandschabi"
* #pap "Papiamentu"
* #pau "Palauisch"
* #per "Persisch"
* #pol "Polnisch"
* #pon "Pohnpeanisch"
* #por "Portugiesisch"
* #pus "Paschtunisch"
* #que "Quechua"
* #raj "Rajasthani"
* #rap "Rapanui"
* #rar "Rarotonganisch, Māori der Cookinseln"
* #roh "Bündnerromanisch, Romanisch"
* #rom "Romani, Romanes"
* #rum "Rumänisch"
* #run "Kirundi"
* #rup "Aromunisch, Makedoromanisch"
* #rus "Russisch"
* #sad "Sandawe"
* #sag "Sango"
* #sah "Jakutisch"
* #sas "Sasak"
* #sat "Santali"
* #scn "Sizilianisch"
* #sco "Scots"
* #sel "Selkupisch"
* #shn "Shan"
* #sid "Sidama"
* #sin "Singhalesisch"
* #slo "Slowakisch"
* #slv "Slowenisch"
* #sma "Südsamisch"
* #sme "Nordsamisch"
* #smj "Lulesamisch"
* #smn "Inarisamisch"
* #smo "Samoanisch"
* #sms "Skoltsamisch"
* #sna "Shona"
* #snd "Sindhi"
* #snk "Soninke"
* #som "Somali"
* #sot "Sesotho, Süd-Sotho"
* #spa "Spanisch, Kastilisch"
* #srd "Sardisch"
* #srn "Sranantongo"
* #srp "Serbisch"
* #srr "Serer"
* #ssw "Siswati"
* #suk "Sukuma"
* #sun "Sundanesisch"
* #sus "Susu"
* #swa "Swahili"
* #swe "Schwedisch"
* #syr "Nordost-Neuaramäisch"
* #tah "Tahitianisch, Tahitisch"
* #tam "Tamil"
* #tat "Tatarisch"
* #tel "Telugu"
* #tem "Temne"
* #ter "Terena"
* #tet "Tetum"
* #tgk "Tadschikisch"
* #tgl "Tagalog"
* #tha "Thai"
* #tib "Tibetisch"
* #tig "Tigre"
* #tir "Tigrinya"
* #tiv "Tiv"
* #tkl "Tokelauisch"
* #tli "Tlingit"
* #tmh "Tuareg"
* #tog "ChiTonga"
* #ton "Tongaisch"
* #tpi "Tok Pisin, Neuguinea-Pidgin"
* #tsi "Tsimshian"
* #tsn "Setswana"
* #tso "Xitsonga"
* #tuk "Turkmenisch"
* #tum "Tumbuka"
* #tur "Türkisch"
* #tvl "Tuvaluisch"
* #twi "Twi"
* #tyv "Tuwinisch"
* #udm "Udmurtisch"
* #uig "Uigurisch"
* #ukr "Ukrainisch"
* #umb "Umbundu"
* #urd "Urdu"
* #uzb "Usbekisch"
* #vai "Vai"
* #ven "Tshivenda"
* #vie "Vietnamesisch"
* #vot "Wotisch"
* #wal "Wolaytta"
* #war "Wáray-Wáray"
* #was "Washoe"
* #wel "Walisisch"
* #wln "Wallonisch"
* #wol "Wolof"
* #xal "Kalmückisch"
* #xho "isiXhosa"
* #yao "Yao"
* #yap "Yapesisch"
* #yid "Jiddisch"
* #yor "Yoruba"
* #zap "Zapotekisch"
* #zen "Zenaga"
* #zgh "Marokkanisches Tamazight"
* #zha "Zhuang"
* #zul "isiZulu"
* #zun "Zuñi"
* #zza "Zazaisch"

ValueSet: ISO6392_LanguageVS
Id: language-valueset
Title: "Language ValueSet"
Description: "ValueSet containing all language codes from the ISO 639-2 CodeSystem."
* NullFlavor#NAVU "keine Angabe"
* NullFlavor#OTH "Andere"
* include codes from system ISO6392_LanguageCS
* ^expansion.timestamp = "2024-09-12T12:00:00+00:00"
* ^expansion.contains[+].system = Canonical(NullFlavor)
* ^expansion.contains[=].code = #NAVU
* ^expansion.contains[=].display = "keine Angabe"
* ^expansion.contains[+].system = Canonical(NullFlavor)
* ^expansion.contains[=].code = #OTH
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aar
* ^expansion.contains[=].display = "Afar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #abk
* ^expansion.contains[=].display = "Abchasisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ace
* ^expansion.contains[=].display = "Achinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ach
* ^expansion.contains[=].display = "Acholi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ada
* ^expansion.contains[=].display = "Dangme"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ady
* ^expansion.contains[=].display = "Adygeisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #afr
* ^expansion.contains[=].display = "Afrikaans"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ain
* ^expansion.contains[=].display = "Ainu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aka
* ^expansion.contains[=].display = "Akan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #alb
* ^expansion.contains[=].display = "Albanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ale
* ^expansion.contains[=].display = "Aleutisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #alt
* ^expansion.contains[=].display = "Südaltaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #amh
* ^expansion.contains[=].display = "Amharisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #anp
* ^expansion.contains[=].display = "Angika"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ara
* ^expansion.contains[=].display = "Arabisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arg
* ^expansion.contains[=].display = "Aragonesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arm
* ^expansion.contains[=].display = "Armenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arn
* ^expansion.contains[=].display = "Mapudungun"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arp
* ^expansion.contains[=].display = "Arapaho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #arw
* ^expansion.contains[=].display = "Arawak"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #asm
* ^expansion.contains[=].display = "Assamesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ast
* ^expansion.contains[=].display = "Asturisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ava
* ^expansion.contains[=].display = "Awarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #awa
* ^expansion.contains[=].display = "Awadhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aym
* ^expansion.contains[=].display = "Aymara"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #aze
* ^expansion.contains[=].display = "Aserbaidschanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bak
* ^expansion.contains[=].display = "Baschkirisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bal
* ^expansion.contains[=].display = "Belutschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bam
* ^expansion.contains[=].display = "Bambara"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ban
* ^expansion.contains[=].display = "Balinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #baq
* ^expansion.contains[=].display = "Baskisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bas
* ^expansion.contains[=].display = "Bassa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bej
* ^expansion.contains[=].display = "Bedscha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bel
* ^expansion.contains[=].display = "Belarussisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bem
* ^expansion.contains[=].display = "Bemba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ben
* ^expansion.contains[=].display = "Bengalisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bho
* ^expansion.contains[=].display = "Bhojpuri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bik
* ^expansion.contains[=].display = "Bikolano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bin
* ^expansion.contains[=].display = "Edo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bis
* ^expansion.contains[=].display = "Bislama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bla
* ^expansion.contains[=].display = "Blackfoot"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bos
* ^expansion.contains[=].display = "Bosnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bra
* ^expansion.contains[=].display = "Braj-Bhakha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bre
* ^expansion.contains[=].display = "Bretonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bua
* ^expansion.contains[=].display = "Burjatisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bug
* ^expansion.contains[=].display = "Buginesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bul
* ^expansion.contains[=].display = "Bulgarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #bur
* ^expansion.contains[=].display = "Birmanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #byn
* ^expansion.contains[=].display = "Blin"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cad
* ^expansion.contains[=].display = "Caddo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #car
* ^expansion.contains[=].display = "Karib"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cat
* ^expansion.contains[=].display = "Katalanisch, Valencianisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ceb
* ^expansion.contains[=].display = "Cebuano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cha
* ^expansion.contains[=].display = "Chamorro"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #che
* ^expansion.contains[=].display = "Tschetschenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chi
* ^expansion.contains[=].display = "Chinesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chk
* ^expansion.contains[=].display = "Chuukesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chm
* ^expansion.contains[=].display = "Mari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chn
* ^expansion.contains[=].display = "Chinook Wawa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cho
* ^expansion.contains[=].display = "Choctaw"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chp
* ^expansion.contains[=].display = "Chipewyan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chr
* ^expansion.contains[=].display = "Cherokee"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chv
* ^expansion.contains[=].display = "Tschuwaschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #chy
* ^expansion.contains[=].display = "Cheyenne"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cnr
* ^expansion.contains[=].display = "Montenegrinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cor
* ^expansion.contains[=].display = "Kornisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cos
* ^expansion.contains[=].display = "Korsisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cre
* ^expansion.contains[=].display = "Cree"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #crh
* ^expansion.contains[=].display = "Krimtatarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #csb
* ^expansion.contains[=].display = "Kaschubisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #cze
* ^expansion.contains[=].display = "Tschechisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dak
* ^expansion.contains[=].display = "Dakota"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dan
* ^expansion.contains[=].display = "Dänisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dar
* ^expansion.contains[=].display = "Darginisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #del
* ^expansion.contains[=].display = "Delawarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #den
* ^expansion.contains[=].display = "Slavey"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dgr
* ^expansion.contains[=].display = "Dogrib"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #din
* ^expansion.contains[=].display = "Dinka"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #div
* ^expansion.contains[=].display = "Dhivehi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #doi
* ^expansion.contains[=].display = "Dogri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dsb
* ^expansion.contains[=].display = "Niedersorbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dua
* ^expansion.contains[=].display = "Duala"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dut
* ^expansion.contains[=].display = "Niederländisch, Belgisches Niederländisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dyu
* ^expansion.contains[=].display = "Dioula"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #dzo
* ^expansion.contains[=].display = "Dzongkha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #efi
* ^expansion.contains[=].display = "Efik"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #eka
* ^expansion.contains[=].display = "Ekajuk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #eng
* ^expansion.contains[=].display = "Englisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #est
* ^expansion.contains[=].display = "Estnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ewe
* ^expansion.contains[=].display = "Ewe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ewo
* ^expansion.contains[=].display = "Ewondo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fan
* ^expansion.contains[=].display = "Fang"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fao
* ^expansion.contains[=].display = "Färöisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fat
* ^expansion.contains[=].display = "Fante"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fij
* ^expansion.contains[=].display = "Fidschi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fil
* ^expansion.contains[=].display = "Filipino"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fin
* ^expansion.contains[=].display = "Finnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fon
* ^expansion.contains[=].display = "Fon"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fre
* ^expansion.contains[=].display = "Französisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #frr
* ^expansion.contains[=].display = "Nordfriesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #frs
* ^expansion.contains[=].display = "Ostfriesisches Platt"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fry
* ^expansion.contains[=].display = "Westfriesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ful
* ^expansion.contains[=].display = "Fulfulde"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #fur
* ^expansion.contains[=].display = "Furlanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gaa
* ^expansion.contains[=].display = "Ga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gay
* ^expansion.contains[=].display = "Gayo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gba
* ^expansion.contains[=].display = "Gbaya-Sprachen"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #geo
* ^expansion.contains[=].display = "Georgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ger
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gil
* ^expansion.contains[=].display = "Kiribatisch, Gilbertesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gla
* ^expansion.contains[=].display = "Schottisch-gälisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gle
* ^expansion.contains[=].display = "Irisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #glg
* ^expansion.contains[=].display = "Galicisch, Galegisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #glv
* ^expansion.contains[=].display = "Manx,"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gon
* ^expansion.contains[=].display = "Gondi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gor
* ^expansion.contains[=].display = "Gorontalo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #grb
* ^expansion.contains[=].display = "Grebo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gre
* ^expansion.contains[=].display = "Griechisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #grn
* ^expansion.contains[=].display = "Guaraní"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gsw
* ^expansion.contains[=].display = "Schweizerdeutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #guj
* ^expansion.contains[=].display = "Gujarati"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #gwi
* ^expansion.contains[=].display = "Gwich'in (Sprache)"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hai
* ^expansion.contains[=].display = "Haida"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hat
* ^expansion.contains[=].display = "Haitianisch-Kreolisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hau
* ^expansion.contains[=].display = "Hausa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #haw
* ^expansion.contains[=].display = "Hawaiisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #heb
* ^expansion.contains[=].display = "Hebräisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #her
* ^expansion.contains[=].display = "Otjiherero"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hil
* ^expansion.contains[=].display = "Hiligaynon"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hin
* ^expansion.contains[=].display = "Hindi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hmn
* ^expansion.contains[=].display = "Hmong-Sprache"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hmo
* ^expansion.contains[=].display = "Hiri Motu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hrv
* ^expansion.contains[=].display = "Kroatisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hsb
* ^expansion.contains[=].display = "Obersorbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hun
* ^expansion.contains[=].display = "Ungarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #hup
* ^expansion.contains[=].display = "Hoopa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iba
* ^expansion.contains[=].display = "Iban"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ibo
* ^expansion.contains[=].display = "Igbo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ice
* ^expansion.contains[=].display = "Isländisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iii
* ^expansion.contains[=].display = "Yi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #iku
* ^expansion.contains[=].display = "Inuktitut"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ilo
* ^expansion.contains[=].display = "Ilokano"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ind
* ^expansion.contains[=].display = "Indonesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #inh
* ^expansion.contains[=].display = "Inguschisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ipk
* ^expansion.contains[=].display = "Inupiaq"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ita
* ^expansion.contains[=].display = "Italienisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jav
* ^expansion.contains[=].display = "Javanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jpn
* ^expansion.contains[=].display = "Japanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jpr
* ^expansion.contains[=].display = "Judäo-Persisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #jrb
* ^expansion.contains[=].display = "Judäo-Arabisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kaa
* ^expansion.contains[=].display = "Karakalpakisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kab
* ^expansion.contains[=].display = "Kabylisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kac
* ^expansion.contains[=].display = "Jingpo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kal
* ^expansion.contains[=].display = "Grönländisch, Kalaallisut"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kam
* ^expansion.contains[=].display = "Kikamba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kan
* ^expansion.contains[=].display = "Kannada"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kas
* ^expansion.contains[=].display = "Kashmiri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kau
* ^expansion.contains[=].display = "Kanuri"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kaz
* ^expansion.contains[=].display = "Kasachisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kbd
* ^expansion.contains[=].display = "Kabardinisch, Ost-Tscherkessisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kha
* ^expansion.contains[=].display = "Khasi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #khm
* ^expansion.contains[=].display = "Khmer"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kik
* ^expansion.contains[=].display = "Kikuyu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kin
* ^expansion.contains[=].display = "Kinyarwanda, Ruandisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kir
* ^expansion.contains[=].display = "Kirgisisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kmb
* ^expansion.contains[=].display = "Kimbundu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kok
* ^expansion.contains[=].display = "Konkani"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kom
* ^expansion.contains[=].display = "Komi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kon
* ^expansion.contains[=].display = "Kikongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kor
* ^expansion.contains[=].display = "Koreanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kos
* ^expansion.contains[=].display = "Kosraeanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kpe
* ^expansion.contains[=].display = "Kpelle"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #krc
* ^expansion.contains[=].display = "Karatschai-balkarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #krl
* ^expansion.contains[=].display = "Karelisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kru
* ^expansion.contains[=].display = "Kurukh"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kua
* ^expansion.contains[=].display = "oshiKwanyama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kum
* ^expansion.contains[=].display = "Kumykisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kur
* ^expansion.contains[=].display = "Kurdisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #kut
* ^expansion.contains[=].display = "Kutanaha"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lad
* ^expansion.contains[=].display = "Judenspanisch, Ladino, Sephardisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lah
* ^expansion.contains[=].display = "Lahnda, Westpanjabi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lam
* ^expansion.contains[=].display = "Lamba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lao
* ^expansion.contains[=].display = "Laotisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lav
* ^expansion.contains[=].display = "Lettisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lez
* ^expansion.contains[=].display = "Lesgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lim
* ^expansion.contains[=].display = "Limburgisch, Südniederfränkisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lin
* ^expansion.contains[=].display = "Lingála"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lit
* ^expansion.contains[=].display = "Litauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lol
* ^expansion.contains[=].display = "Lomongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #loz
* ^expansion.contains[=].display = "Lozi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ltz
* ^expansion.contains[=].display = "Luxemburgisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lua
* ^expansion.contains[=].display = "Tschiluba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lub
* ^expansion.contains[=].display = "Kiluba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lug
* ^expansion.contains[=].display = "Luganda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lun
* ^expansion.contains[=].display = "Chilunda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #luo
* ^expansion.contains[=].display = "Luo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #lus
* ^expansion.contains[=].display = "Mizo, Lushai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mac
* ^expansion.contains[=].display = "Mazedonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mad
* ^expansion.contains[=].display = "Maduresisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mag
* ^expansion.contains[=].display = "Magadhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mah
* ^expansion.contains[=].display = "Marshallesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mai
* ^expansion.contains[=].display = "Maithili"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mak
* ^expansion.contains[=].display = "Makassar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mal
* ^expansion.contains[=].display = "Malayalam"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #man
* ^expansion.contains[=].display = "Manding"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mao
* ^expansion.contains[=].display = "Maori"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mar
* ^expansion.contains[=].display = "Marathi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mas
* ^expansion.contains[=].display = "Maa, Kimaasai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #may
* ^expansion.contains[=].display = "Malaiisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mdf
* ^expansion.contains[=].display = "Mokschanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mdr
* ^expansion.contains[=].display = "Mandar"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #men
* ^expansion.contains[=].display = "Mende"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mic
* ^expansion.contains[=].display = "Míkmawísimk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #min
* ^expansion.contains[=].display = "Minangkabauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mlg
* ^expansion.contains[=].display = "Malagasy, Malagassi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mlt
* ^expansion.contains[=].display = "Maltesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mnc
* ^expansion.contains[=].display = "Mandschurisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mni
* ^expansion.contains[=].display = "Meitei"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #moh
* ^expansion.contains[=].display = "Mohawk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mon
* ^expansion.contains[=].display = "Mongolisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mos
* ^expansion.contains[=].display = "Mòoré"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mwl
* ^expansion.contains[=].display = "Mirandés"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #mwr
* ^expansion.contains[=].display = "Marwari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #myv
* ^expansion.contains[=].display = "Ersjanisch, Ersja-Mordwinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nap
* ^expansion.contains[=].display = "Neapolitanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nau
* ^expansion.contains[=].display = "Nauruisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nav
* ^expansion.contains[=].display = "Navajo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nbl
* ^expansion.contains[=].display = "Süd-Ndebele"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nde
* ^expansion.contains[=].display = "Nord-Ndebele"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ndo
* ^expansion.contains[=].display = "Ndonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nds
* ^expansion.contains[=].display = "Niederdeutsch, Plattdeutsch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nep
* ^expansion.contains[=].display = "Nepali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #new
* ^expansion.contains[=].display = "Newari"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nia
* ^expansion.contains[=].display = "Nias"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #niu
* ^expansion.contains[=].display = "Niueanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nno
* ^expansion.contains[=].display = "Nynorsk"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nob
* ^expansion.contains[=].display = "Bokmål"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nog
* ^expansion.contains[=].display = "Nogaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nor
* ^expansion.contains[=].display = "Norwegisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nqo
* ^expansion.contains[=].display = "N’Ko"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nso
* ^expansion.contains[=].display = "Nord-Sotho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nya
* ^expansion.contains[=].display = "Chichewa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nym
* ^expansion.contains[=].display = "Nyamwesi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nyn
* ^expansion.contains[=].display = "Runyankole, Runyankore"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nyo
* ^expansion.contains[=].display = "Runyoro"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #nzi
* ^expansion.contains[=].display = "Nzema"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oci
* ^expansion.contains[=].display = "Okzitanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oji
* ^expansion.contains[=].display = "Ojibwe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ori
* ^expansion.contains[=].display = "Oriya"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #orm
* ^expansion.contains[=].display = "Oromo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #osa
* ^expansion.contains[=].display = "Osage"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #oss
* ^expansion.contains[=].display = "Ossetisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pag
* ^expansion.contains[=].display = "Pangasinensisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pam
* ^expansion.contains[=].display = "Kapampangan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pan
* ^expansion.contains[=].display = "Panjabi, Pandschabi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pap
* ^expansion.contains[=].display = "Papiamentu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pau
* ^expansion.contains[=].display = "Palauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #per
* ^expansion.contains[=].display = "Persisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pol
* ^expansion.contains[=].display = "Polnisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pon
* ^expansion.contains[=].display = "Pohnpeanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #por
* ^expansion.contains[=].display = "Portugiesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #pus
* ^expansion.contains[=].display = "Paschtunisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #que
* ^expansion.contains[=].display = "Quechua"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #raj
* ^expansion.contains[=].display = "Rajasthani"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rap
* ^expansion.contains[=].display = "Rapanui"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rar
* ^expansion.contains[=].display = "Rarotonganisch, Māori der Cookinseln"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #roh
* ^expansion.contains[=].display = "Bündnerromanisch, Romanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rom
* ^expansion.contains[=].display = "Romani, Romanes"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rum
* ^expansion.contains[=].display = "Rumänisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #run
* ^expansion.contains[=].display = "Kirundi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rup
* ^expansion.contains[=].display = "Aromunisch, Makedoromanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #rus
* ^expansion.contains[=].display = "Russisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sad
* ^expansion.contains[=].display = "Sandawe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sag
* ^expansion.contains[=].display = "Sango"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sah
* ^expansion.contains[=].display = "Jakutisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sas
* ^expansion.contains[=].display = "Sasak"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sat
* ^expansion.contains[=].display = "Santali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #scn
* ^expansion.contains[=].display = "Sizilianisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sco
* ^expansion.contains[=].display = "Scots"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sel
* ^expansion.contains[=].display = "Selkupisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #shn
* ^expansion.contains[=].display = "Shan"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sid
* ^expansion.contains[=].display = "Sidama"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sin
* ^expansion.contains[=].display = "Singhalesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #slo
* ^expansion.contains[=].display = "Slowakisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #slv
* ^expansion.contains[=].display = "Slowenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sma
* ^expansion.contains[=].display = "Südsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sme
* ^expansion.contains[=].display = "Nordsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smj
* ^expansion.contains[=].display = "Lulesamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smn
* ^expansion.contains[=].display = "Inarisamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #smo
* ^expansion.contains[=].display = "Samoanisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sms
* ^expansion.contains[=].display = "Skoltsamisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sna
* ^expansion.contains[=].display = "Shona"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #snd
* ^expansion.contains[=].display = "Sindhi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #snk
* ^expansion.contains[=].display = "Soninke"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #som
* ^expansion.contains[=].display = "Somali"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sot
* ^expansion.contains[=].display = "Sesotho, Süd-Sotho"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #spa
* ^expansion.contains[=].display = "Spanisch, Kastilisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srd
* ^expansion.contains[=].display = "Sardisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srn
* ^expansion.contains[=].display = "Sranantongo"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srp
* ^expansion.contains[=].display = "Serbisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #srr
* ^expansion.contains[=].display = "Serer"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ssw
* ^expansion.contains[=].display = "Siswati"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #suk
* ^expansion.contains[=].display = "Sukuma"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sun
* ^expansion.contains[=].display = "Sundanesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #sus
* ^expansion.contains[=].display = "Susu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #swa
* ^expansion.contains[=].display = "Swahili"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #swe
* ^expansion.contains[=].display = "Schwedisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #syr
* ^expansion.contains[=].display = "Nordost-Neuaramäisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tah
* ^expansion.contains[=].display = "Tahitianisch, Tahitisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tam
* ^expansion.contains[=].display = "Tamil"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tat
* ^expansion.contains[=].display = "Tatarisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tel
* ^expansion.contains[=].display = "Telugu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tem
* ^expansion.contains[=].display = "Temne"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ter
* ^expansion.contains[=].display = "Terena"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tet
* ^expansion.contains[=].display = "Tetum"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tgk
* ^expansion.contains[=].display = "Tadschikisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tgl
* ^expansion.contains[=].display = "Tagalog"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tha
* ^expansion.contains[=].display = "Thai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tib
* ^expansion.contains[=].display = "Tibetisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tig
* ^expansion.contains[=].display = "Tigre"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tir
* ^expansion.contains[=].display = "Tigrinya"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tiv
* ^expansion.contains[=].display = "Tiv"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tkl
* ^expansion.contains[=].display = "Tokelauisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tli
* ^expansion.contains[=].display = "Tlingit"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tmh
* ^expansion.contains[=].display = "Tuareg"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tog
* ^expansion.contains[=].display = "ChiTonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ton
* ^expansion.contains[=].display = "Tongaisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tpi
* ^expansion.contains[=].display = "Tok Pisin, Neuguinea-Pidgin"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tsi
* ^expansion.contains[=].display = "Tsimshian"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tsn
* ^expansion.contains[=].display = "Setswana"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tso
* ^expansion.contains[=].display = "Xitsonga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tuk
* ^expansion.contains[=].display = "Turkmenisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tum
* ^expansion.contains[=].display = "Tumbuka"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tur
* ^expansion.contains[=].display = "Türkisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tvl
* ^expansion.contains[=].display = "Tuvaluisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #twi
* ^expansion.contains[=].display = "Twi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #tyv
* ^expansion.contains[=].display = "Tuwinisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #udm
* ^expansion.contains[=].display = "Udmurtisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #uig
* ^expansion.contains[=].display = "Uigurisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ukr
* ^expansion.contains[=].display = "Ukrainisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #umb
* ^expansion.contains[=].display = "Umbundu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #urd
* ^expansion.contains[=].display = "Urdu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #uzb
* ^expansion.contains[=].display = "Usbekisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vai
* ^expansion.contains[=].display = "Vai"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #ven
* ^expansion.contains[=].display = "Tshivenda"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vie
* ^expansion.contains[=].display = "Vietnamesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #vot
* ^expansion.contains[=].display = "Wotisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wal
* ^expansion.contains[=].display = "Wolaytta"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #war
* ^expansion.contains[=].display = "Wáray-Wáray"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #was
* ^expansion.contains[=].display = "Washoe"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wel
* ^expansion.contains[=].display = "Walisisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wln
* ^expansion.contains[=].display = "Wallonisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #wol
* ^expansion.contains[=].display = "Wolof"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #xal
* ^expansion.contains[=].display = "Kalmückisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #xho
* ^expansion.contains[=].display = "isiXhosa"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yao
* ^expansion.contains[=].display = "Yao"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yap
* ^expansion.contains[=].display = "Yapesisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yid
* ^expansion.contains[=].display = "Jiddisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #yor
* ^expansion.contains[=].display = "Yoruba"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zap
* ^expansion.contains[=].display = "Zapotekisch"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zen
* ^expansion.contains[=].display = "Zenaga"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zgh
* ^expansion.contains[=].display = "Marokkanisches Tamazight"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zha
* ^expansion.contains[=].display = "Zhuang"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zul
* ^expansion.contains[=].display = "isiZulu"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zun
* ^expansion.contains[=].display = "Zuñi"
* ^expansion.contains[+].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #zza
* ^expansion.contains[=].display = "Zazaisch"

CodeSystem: SEU_UB_HoertestDezibelCS
Id: seu-ub-hoertest-dezibel-cs
Title: "SEU_UB_Hörtest CodeSystem"
Description: "CodeSystem für die Angabe der Dezibelstufen im Hörtest."
* #20db "20db"
* #30db "30db"
* #40db "40db"
* #50db "50db"

ValueSet: SEU_UB_HoertestDezibelVS
Id: seu-ub-hoertest-dezibel-vs
Title: "SEU_UB_Hörtest ValueSet"
Description: "ValueSet, das verschiedene Dezibelstufen im Hörtest enthält."
* include codes from system SEU_UB_HoertestDezibelCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_HoertestDezibelCS)
* ^expansion.contains[=].code = #20db
* ^expansion.contains[=].display = "20db"
* ^expansion.contains[+].system = Canonical(SEU_UB_HoertestDezibelCS)
* ^expansion.contains[=].code = #30db
* ^expansion.contains[=].display = "30db"
* ^expansion.contains[+].system = Canonical(SEU_UB_HoertestDezibelCS)
* ^expansion.contains[=].code = #40db
* ^expansion.contains[=].display = "40db"
* ^expansion.contains[+].system = Canonical(SEU_UB_HoertestDezibelCS)
* ^expansion.contains[=].code = #50db
* ^expansion.contains[=].display = "50db"

CodeSystem: SEU_UB_SehtestVisusCS
Id: seu-ub-sehtest-visus-cs
Title: "SEU_UB_Sehtest Visus CodeSystem"
Description: "CodeSystem für die Angabe der Visuswerte im Sehtest."
* #nicht_durchgefuehrt "Nicht durchgeführt"
* #1_Visus "1"
* #0_9_Visus "0,9"
* #0_8_Visus "0,8"
* #0_7_Visus "0,7"
* #0_6_Visus "0,6"
* #0_5_Visus "0,5"

ValueSet: SEU_UB_SehtestVisusVS
Id: seu-ub-sehtest-visus-vs
Title: "SEU_UB_Sehtest Visus ValueSet"
Description: "ValueSet, das verschiedene Visuswerte im Sehtest enthält."
* include codes from system SEU_UB_SehtestVisusCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #nicht_durchgefuehrt
* ^expansion.contains[=].display = "Nicht durchgeführt"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #1_Visus
* ^expansion.contains[=].display = "1"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #0_9_Visus
* ^expansion.contains[=].display = "0,9"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #0_8_Visus
* ^expansion.contains[=].display = "0,8"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #0_7_Visus
* ^expansion.contains[=].display = "0,7"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #0_6_Visus
* ^expansion.contains[=].display = "0,6"
* ^expansion.contains[+].system = Canonical(SEU_UB_SehtestVisusCS)
* ^expansion.contains[=].code = #0_5_Visus
* ^expansion.contains[=].display = "0,5"

CodeSystem: SEU_UB_EntwicklungsbewertungCS
Id: seu-ub-entwicklungsbewertung-cs
Title: "SEU_UB_Entwicklungsbewertung CodeSystem"
Description: "CodeSystem für die Angabe der Entwicklungsbewertung."
* #altersentsprechend "Altersentsprechend"
* #foerderbedarf "ggf. Förderbedarf"
* #arztempfehlung "ggf. Arztempfehlung"
* #foerderbedarf_und_arztempfehlung "Förderbedarf und ggf. Arztempfehlung"

ValueSet: SEU_UB_EntwicklungsbewertungVS
Id: seu-ub-entwicklungsbewertung-vs
Title: "SEU_UB_Entwicklungsbewertung ValueSet"
Description: "ValueSet, das die Entwicklungsbewertung enthält."
* include codes from system SEU_UB_EntwicklungsbewertungCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_EntwicklungsbewertungCS)
* ^expansion.contains[=].code = #altersentsprechend
* ^expansion.contains[=].display = "Altersentsprechend"
* ^expansion.contains[+].system = Canonical(SEU_UB_EntwicklungsbewertungCS)
* ^expansion.contains[=].code = #foerderbedarf
* ^expansion.contains[=].display = "ggf. Förderbedarf"
* ^expansion.contains[+].system = Canonical(SEU_UB_EntwicklungsbewertungCS)
* ^expansion.contains[=].code = #arztempfehlung
* ^expansion.contains[=].display = "ggf. Arztempfehlung"
* ^expansion.contains[+].system = Canonical(SEU_UB_EntwicklungsbewertungCS)
* ^expansion.contains[=].code = #foerderbedarf_und_arztempfehlung
* ^expansion.contains[=].display = "Förderbedarf und ggf. Arztempfehlung"

CodeSystem: SEU_UB_UntersuchungsergebnisseIBAUCS
Id: seu-ub-untersuchungsergebnisse-ibau-cs
Title: "SEU_UB_Untersuchungsergebnisse IBAU CodeSystem"
Description: "CodeSystem für die Untersuchungsergebnisse IBAU."
* #I "In Ordnung"
* #B "Bekannt/Behandelt"
* #U "Unbekannt"
* #A "Arztbrief (die Untersuchung war auffällig)"

ValueSet: SEU_UB_UntersuchungsergebnisseIBAUVS
Id: seu-ub-untersuchungsergebnisse-ibau-vs
Title: "SEU_UB_Untersuchungsergebnisse IBAU ValueSet"
Description: "ValueSet, das die Untersuchungsergebnisse IBAU enthält."
* include codes from system SEU_UB_UntersuchungsergebnisseIBAUCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_UntersuchungsergebnisseIBAUCS)
* ^expansion.contains[=].code = #I
* ^expansion.contains[=].display = "In Ordnung"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseIBAUCS)
* ^expansion.contains[=].code = #B
* ^expansion.contains[=].display = "Bekannt/Behandelt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseIBAUCS)
* ^expansion.contains[=].code = #U
* ^expansion.contains[=].display = "Unbekannt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseIBAUCS)
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "Arztbrief (die Untersuchung war auffällig)"

CodeSystem: SEU_UB_DeutschkenntnisseCS
Id: seu-ub-deutschkenntnisse-cs
Title: "SEU_UB_Deutschkenntnisse CodeSystem"
Description: "CodeSystem für die Angabe der Deutschkenntnisse."
* #kein_deutsch "Kein Deutsch"
* #schlecht "Schlecht"
* #fluessig_mit_erheblichen_fehlern "Flüssig mit erheblichen Fehlern"
* #fluessig_mit_leichten_fehlern "Flüssig mit leichten Fehlern"
* #fehlerfrei "Fehlerfrei"
* #unbekannt "Unbekannt"

ValueSet: SEU_UB_DeutschkenntnisseVS
Id: seu-ub-deutschkenntnisse-vs
Title: "SEU_UB_Deutschkenntnisse ValueSet"
Description: "ValueSet, das verschiedene Deutschkenntnisse enthält."
* include codes from system SEU_UB_DeutschkenntnisseCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #kein_deutsch
* ^expansion.contains[=].display = "Kein Deutsch"
* ^expansion.contains[+].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #schlecht
* ^expansion.contains[=].display = "Schlecht"
* ^expansion.contains[+].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #fluessig_mit_erheblichen_fehlern
* ^expansion.contains[=].display = "Flüssig mit erheblichen Fehlern"
* ^expansion.contains[+].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #fluessig_mit_leichten_fehlern
* ^expansion.contains[=].display = "Flüssig mit leichten Fehlern"
* ^expansion.contains[+].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #fehlerfrei
* ^expansion.contains[=].display = "Fehlerfrei"
* ^expansion.contains[+].system = Canonical(SEU_UB_DeutschkenntnisseCS)
* ^expansion.contains[=].code = #unbekannt
* ^expansion.contains[=].display = "Unbekannt"

CodeSystem: VisusCS
Id: VisusCS
Title: "VisusCS"
Description: "VisusCS"
* #ohne_Brille  "ohne Brille"
* #mit_Brille "mit Brille"
* #keine_Angabe "k.A./nicht möglich"


ValueSet: VisusVS
Id: VisusVS
Title: "VisusVS"
Description: "VisusVS"
* include codes from system VisusCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(VisusCS) 
* ^expansion.contains[=].code = #ohne_Brille   
* ^expansion.contains[=].display = "ohne Brille"
* ^expansion.contains[0].system = Canonical(VisusCS)
* ^expansion.contains[=].code = #mit_Brille 
* ^expansion.contains[=].display = "mit Brille"
* ^expansion.contains[0].system = Canonical(VisusCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "k.A./nicht möglich"


odeSystem: VisusSehtestgeraetRechtsCS
Id: VisusSehtestgeraetRechtsCS
Title: "VisusSehtestgeraetRechtsCS"
Description: "VisusSehtestgeraetRechtsCS"
* #blind  "blind Visus = 0"
* #kleiner_0_16 "Visus < 0,16"
* #0_16 "Visus = 0,16"
* #0_3 "Visus = 0,3"
* #0_5 "Visus = 0,5"
* #0_7 "Visus = 0,7" 
* #1_0 "Visus = 1,0"
* #keine_Angabe "keine Angabe"


ValueSet: VisusSehtestgeraetRechtsVS
Id: VisusSehtestgeraetRechtsVS
Title: "VisusSehtestgeraetRechtsVS"
Description: "VisusSehtestgeraetRechtsVS"
* include codes from system VisusSehtestgeraetRechtsCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #blind    
* ^expansion.contains[=].display = "blind Visus = 0"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #kleiner_0_16
* ^expansion.contains[=].display = "Visus < 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code =  #0_16 "Visus = 0,16"
* ^expansion.contains[=].display = "Visus = 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #0_3 
* ^expansion.contains[=].display = "Visus = 0,3"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code =  #0_5 
* ^expansion.contains[=].display = "Visus = 0,5"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #0_7 
* ^expansion.contains[=].display =  "Visus = 0,7"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #1_0 
* ^expansion.contains[=].display = "Visus = 1,0"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetRechtsCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"



CodeSystem: VisusSehtestgeraetLinksCS
Id: VisusSehtestgeraetLinksCS
Title: "VisusSehtestgeraetLinksCS"
Description: "VisusSehtestgeraetLinksCS"
* #blind  "blind Visus = 0"
* #kleiner_0_16 "Visus < 0,16"
* #0_16 "Visus = 0,16"
* #0_3 "Visus = 0,3"
* #0_5 "Visus = 0,5"
* #0_7 "Visus = 0,7" 
* #1_0 "Visus = 1,0"
* #keine_Angabe "keine Angabe"


ValueSet: VisusSehtestgeraetLinksVS
Id: VisusSehtestgeraetLinksVS
Title: "VisusSehtestgeraetLinksVS"
Description: "VisusSehtestgeraetLinksVS"
* include codes from system VisusSehtestgeraetLinksCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical()
* ^expansion.contains[=].code = #blind    
* ^expansion.contains[=].display = "blind Visus = 0"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #kleiner_0_16
* ^expansion.contains[=].display = "Visus < 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #0_16 "Visus = 0,16"
* ^expansion.contains[=].display = "Visus = 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #0_3 
* ^expansion.contains[=].display = "Visus = 0,3"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code =  #0_5 
* ^expansion.contains[=].display = "Visus = 0,5"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #0_7 
* ^expansion.contains[=].display = "Visus = 0,7"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #1_0 
* ^expansion.contains[=].display = "Visus = 1,0"
* ^expansion.contains[0].system = Canonical(VisusSehtestgeraetLinksCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"



CodeSystem: VisusSehtafelRechtsCS
Id: VisusSehtafelRechtsCS
Title: "VisusSehtafelRechtsCS"
Description: "VisusSehtafelRechtsCS"
* #blind  "blind Visus = 0"
* #kleiner_0_16 "Visus < 0,16"
* #0_16 "Visus = 0,16"
* #0_3 "Visus = 0,3"
* #0_5 "Visus = 0,5"
* #0_7 "Visus = 0,7" 
* #1_0 "Visus = 1,0"
* #keine_Angabe "keine Angabe"


ValueSet: VisusSehtafelRechtsVS
Id: VisusSehtafelRechtsVS
Title: "VisusSehtafelRechtsVS"
Description: "VisusSehtafelRechtsVS"
* include codes from system VisusSehtafelRechtsCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code = #blind    
* ^expansion.contains[=].display = "blind Visus = 0"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code = #kleiner_0_16
* ^expansion.contains[=].display = "Visus < 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code =  #0_16 "Visus = 0,16"
* ^expansion.contains[=].display = "Visus = 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code =  #0_3 
* ^expansion.contains[=].display = "Visus = 0,3"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code =  #0_5 
* ^expansion.contains[=].display = "Visus = 0,5"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code = #0_7 
* ^expansion.contains[=].display = "Visus = 0,7"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code = #1_0 
* ^expansion.contains[=].display = "Visus = 1,0"
* ^expansion.contains[0].system = Canonical(VisusSehtafelRechtsCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"



CodeSystem: VisusSehtafelLinksCS
Id: VisusSehtafelLinksCS
Title: "VisusSehtafelLinksCS"
Description: "VisusSehtafelLinksCS"
* #blind  "blind Visus = 0"
* #kleiner_0_16 "Visus < 0,16"
* #0_16 "Visus = 0,16"
* #0_3 "Visus = 0,3"
* #0_5 "Visus = 0,5"
* #0_7 "Visus = 0,7" 
* #1_0 "Visus = 1,0"
* #keine_Angabe "keine Angabe"


ValueSet: VisusSehtafelLinksVS
Id: VisusSehtafelLinksVS
Title: "VisusSehtafelLinksVS"
Description: "VisusSehtafelLinksVS"
* include codes from system VisusSehtafelLinksCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #blind    
* ^expansion.contains[=].display = "blind Visus = 0"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #kleiner_0_16
* ^expansion.contains[=].display = "Visus < 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #0_16 "Visus = 0,16"
* ^expansion.contains[=].display = "Visus = 0,16"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #0_3 
* ^expansion.contains[=].display = "Visus = 0,3"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #0_5 
* ^expansion.contains[=].display = "Visus = 0,5"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #0_7 
* ^expansion.contains[=].display = "Visus = 0,7"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #1_0 
* ^expansion.contains[=].display = "Visus = 1,0"
* ^expansion.contains[0].system = Canonical(VisusSehtafelLinksCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: FarbsehenCS
Id: FarbsehenCS
Title: "FarbsehenCS"
Description: "FarbsehenCS"
* #unauffaellig  "unauffaellig"
* #auffaellig "auffaellig"
* #keine_Angabe "keine Angabe/verweigert"

ValueSet: FarbsehenVS
Id: FarbsehenVS
Title: "FarbsehenVS"
Description: "FarbsehenVS"
* include codes from system FarbsehenCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(FarbsehenCS)
* ^expansion.contains[=].code = #unauffaellig   
* ^expansion.contains[=].display = "unauffällig" 
* ^expansion.contains[0].system = Canonical(FarbsehenCS)
* ^expansion.contains[=].code = #auffaellig 
* ^expansion.contains[=].display = "auffällig"
* ^expansion.contains[0].system = Canonical(FarbsehenCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe/verweigert" 

CodeSystem: VorschaltlinseCS
Id: VorschaltlinseCS
Title: "VorschaltlinseCS"
Description: "VorschaltlinseCS"
* #besser  "besser"
* #gleich "gleich"
* #schlechter "schlechter"
* #keine_Angabe "keine Angabe"

ValueSet: VorschaltlinseVS
Id: VorschaltlinseVS
Title: "VorschaltlinseVS"
Description: "VorschaltlinseVS"
* include codes from system VorschaltlinseCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(VorschaltlinseCS)
* ^expansion.contains[=].code = #besser   
* ^expansion.contains[=].display = "besser" 
* ^expansion.contains[0].system = Canonical(VorschaltlinseCS)
* ^expansion.contains[=].code = #gleich 
* ^expansion.contains[=].display = "gleich"
* ^expansion.contains[0].system = Canonical(VorschaltlinseCS)
* ^expansion.contains[=].code = #schlechter 
* ^expansion.contains[=].display = "schlechter"
* ^expansion.contains[0].system = Canonical(VorschaltlinseCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe/verweigert" 

CodeSystem: Deutschkenntnisse_KindCS
Id: Deutschkenntnisse_KindCS
Title: "Deutschkenntnisse_KindCS"
Description: "Deutschkenntnisse_KindCS"
* #nicht  "nicht"
* #einzelne Worte "einzelne Worte"
* #fluessig_mit_erheblichen_Fehlern "flüssig mit erheblichen Fehlern"
* #sehr_gut "sehr gut"
* #keine_Angabe "keine Angabe"


ValueSet: Deutschkenntnisse_KindVS
Id: Deutschkenntnisse_KindVS
Title: "Deutschkenntnisse_KindVS"
Description: "Deutschkenntnisse_KindVS"
* include codes from system Deutschkenntnisse_KindCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_KindCS)
* ^expansion.contains[=].code = #nicht  
* ^expansion.contains[=].display = "nicht" 
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_KindCS)
* ^expansion.contains[=].code = #einzelne Worte 
* ^expansion.contains[=].display = "einzelne Worte"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_KindCS)
* ^expansion.contains[=].code = #fluessig_mit_erheblichen_Fehlern 
* ^expansion.contains[=].display = "flüssig mit erheblichen Fehlern"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_KindCS)
* ^expansion.contains[=].code = #sehr_gut
* ^expansion.contains[=].display = "sehr gut"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_KindCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"


CodeSystem: Deutschkenntnisse_MutterCS
Id: Deutschkenntnisse_MutterCS
Title: "Deutschkenntnisse_MutterCS"
Description: "Deutschkenntnisse_MutterCS"
* #nicht  "nicht"
* #einzelne Worte "einzelne Worte"
* #fluessig_mit_erheblichen_Fehlern "flüssig mit erheblichen Fehlern"
* #sehr_gut "sehr gut"
* #hat_nicht_begleitet "hat nicht begleitet"
* #keine_Angabe "keine Angabe"


ValueSet: Deutschkenntnisse_MutterVS
Id: Deutschkenntnisse_MutterVS
Title: "Deutschkenntnisse_MutterVS"
Description: "Deutschkenntnisse_MutterVS"
* include codes from system Deutschkenntnisse_MutterCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #nicht  
* ^expansion.contains[=].display = "nicht" 
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #einzelne Worte 
* ^expansion.contains[=].display = "einzelne Worte"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #fluessig_mit_erheblichen_Fehlern 
* ^expansion.contains[=].display = "flüssig mit erheblichen Fehlern"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #sehr_gut
* ^expansion.contains[=].display = "sehr gut"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #hat_nicht_begleitet "hat_nicht_begleitet"
* ^expansion.contains[=].display = "hat nicht begleitet"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_MutterCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: Deutschkenntnisse_VaterCS
Id: Deutschkenntnisse_VaterCS
Title: "Deutschkenntnisse_VaterCS"
Description: "Deutschkenntnisse_VaterCS"
* #nicht  "nicht"
* #einzelne Worte "einzelne Worte"
* #fluessig_mit_erheblichen_Fehlern "flüssig mit erheblichen Fehlern"
* #sehr_gut "sehr gut"
* #hat_nicht_begleitet "hat nicht begleitet"
* #keine_Angabe "keine Angabe"

ValueSet: Deutschkenntnisse_VaterVS
Id: Deutschkenntnisse_VaterVS
Title: "Deutschkenntnisse_VaterVS"
Description: "Deutschkenntnisse_VaterVS"
* include codes from system Deutschkenntnisse_VaterCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #nicht  
* ^expansion.contains[=].display = "nicht" 
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #einzelne Worte 
* ^expansion.contains[=].display = "einzelne Worte"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #fluessig_mit_erheblichen_Fehlern 
* ^expansion.contains[=].display = "flüssig mit erheblichen Fehlern"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #sehr_gut
* ^expansion.contains[=].display = "sehr gut"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #hat_nicht_begleitet "hat_nicht_begleitet"
* ^expansion.contains[=].display = "hat nicht begleitet"
* ^expansion.contains[0].system = Canonical(Deutschkenntnisse_VaterCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"
