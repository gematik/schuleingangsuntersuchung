RuleSet: 2-esb-autopsie_bestattung_melder_metadaten_obduktionsschein
* item[+] insert addGroup(Autopsie, Autopsie)
  * item[+] insert addItem(Autopsie_beantragt, #string, Autopsie beantragt?) //TODO Choice jnx
  * item[+] insert addItem(Autopsie_beantragt_Verantwortlicher, #string, Bei wem wurde die Autopsie beantragt?)
  * item[+] insert addItem(Autopsie_Ort, #string, Ort der Durchführung)
  * item[+] insert addItem(Path_Institut, #string, Name Pathologisches Institut)
  * item[+] insert addItem(Gerichtsmed_Institut, #string, Name Gerichtsmedizinisches Institut)
* item[+] insert addGroup(Bestattung, Bestattung)
  * item[+] insert addItem(Bestattung, #string, Bestattungsart) //TODO Choice
* item[+] insert addGroup(Melder, Melder)
  * item[+] insert addItem(Melder_ID, #string, Melder ID der meldenden Stelle)
  * item[+] insert addItem(Melder_Prüfcode, #string, Prüfcode der meldenden Stelle)
  * item[+] insert addItem(Ansprechpartner, #string, Ansprechpartner bei der meldenden Stelle)
  * item[+] insert addGroup(Quellsystem, [[Angaben zum Quellsystem, aus dem die Daten stammen]])
    * item[+] insert addItem(Quellsystem_Name, #string, Name)
    * item[+] insert addItem(Quellsystem_Version, #string, Version)
  * item[+] insert addItem(Melder_ReferenzNr, #string, [[ReferenzNr (der Meldung des StaLa)]])
* item[+] insert addGroup(Metadaten, Metadaten)
  * item[+] insert addItem(Exportzeitpunkt, #string, optional mit Uhrzeit)
* item[+] insert addGroup(Obduktionsschein, Obduktionsschein)
  * item[+] insert addItem(Obduktionsschein_liegt_bei, #string, Liegt der Obduktionsbericht bei?) //TODO Choice jn
  * item[+] insert addItem(Obduktion_durchgeführt, #string, Obduktion durchgeführt?) //TODO Choice jnx
  * item[+] insert addItem(Obduktionsschein_Uhrzeit, #time, Uhrzeit der Obduktion)
  * item[+] insert addItem(Obduktionsschein_Ort, #string, Ort der Obduktion)