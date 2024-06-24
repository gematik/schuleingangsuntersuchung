RuleSet: 1-esb-ausstellender_arzt_einrichtung
* item[+] insert addGroup(ausstellender Arzt_Einrichtung Obduktionsschein, Ausstellender Arzt:in oder Einrichtung Obduktionsschein)
  * item[+] insert addGroup(ausstellender_Arzt, Ausstellender Arzt:in)
    * item[+] insert addItem(Obduktion_Arzt_ID, #string, ID des Arztes der Obduktion laut Arztliste der Ärztekammer)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Titel, #string, Titel des Arztes) //TODO choice möglich, wenn VS klar
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Vorname, #string, Vorname des Arztes)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Nachname, #string, Nachname des Arztes)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Institution, #string, Institution des Arztes)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Strasse_Hausnr, #string, Hausnummer und Straße des Arztes)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_PLZ, #string, PLZ des Arztes) //TODO Regex möglich
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Ort, #string, Ort des Arztes)
    * item[+] insert addItem(Obduktionsschein_Ausstell_Arzt_Telefon, #string, Telefon des Arztes) //TODO RegEx möglich
  * item[+] insert addGroup(ausstellende_Einrichtung, Ausstellende Einrichtung)
    * item[+] insert addItem(Ausstell_Arzt_ID, #string, ID des Ausstellenden Arztes laut Arztliste der Ärztekammer)
    * item[+] insert addItem(Ausstell_Arzt_LANR, #string, [[Die Lebenslange Arztnummer (LANR) des ausstellenden Arztes]])
    * item[+] insert addItem(Ausstell_Arzt_Zulassungsnummer, #string, Gleich LANR?)
    * item[+] insert addItem(Ausstell_Arzt_Titel, #string, Titel des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Vorname, #string, Vorname des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Nachname, #string, Nachname des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Institution, #string, Institution des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Klinik, #string, Klinik)
    * item[+] insert addItem(Ausstell_Arzt_Praxis, #string, Praxis)
    * item[+] insert addItem(Ausstell_Arzt_Abteilung, #string, Abteilung/Fachrichtung)
    * item[+] insert addItem(Ausstell_Arzt_Strasse_Hausnr, #string, Hausnummer und Straße des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Zusatz, #string, Zusatz)
    * item[+] insert addItem(Ausstell_Arzt_Land, #string, Herkunftsland für Anschrift. Bei unbekanntem Land kann der Wert X verwendet werden) //TODO Choice
    * item[+] insert addItem(Ausstell_Arzt_PLZ, #string, PLZ des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Ort, #string, Ort des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Telefon, #string, Telefon des Arztes)
    * item[+] insert addItem(Ausstell_Arzt_Postfach, #string, Postfach)
    * item[+] insert addItem(Facharztgruppe, #string, ärztliche Dienstgruppe) //TODO Choice
    * item[+] insert addItem(Berufsgruppe, #string, Einsatzbereich) //TODO Choice