RuleSet: 6-af-elternfragebogen
* item[+] insert addGroup(6, Elternfragebogen)
  * item[+] insert addItem(6.1, #boolean, [[Angaben aus Entwicklungsfragebogen fehlen]])
  * item[+] insert addGroup(6_1, Elternfragebogen)
    * insert EnableWhenBoolean(6.1, !=, true)
    * item[+] insert addItem(6.2, #date, [[Ausfülldatum E-FB]])
    * item[+] insert addItem(6.3, #boolean, [[Gesamtergebnis EFB (gemäß Gesamtpunktzahl) auffällig]])
    * item[+] insert addItem(6.4, #boolean, [[Ergebnis im Bereich Sozialkompetenz auffällig]])