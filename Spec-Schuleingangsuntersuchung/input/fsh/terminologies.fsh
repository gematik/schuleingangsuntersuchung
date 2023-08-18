CodeSystem:  SeuPersonEthnieCs
Id: SeuPersonEthnieCs
Title: "SEU Sprachlich-ethnischer Familienhintergrund"
* #0 "Deutschland"
* #1 "Türkei"
* #2 "GUS/Osteuropa"
* #3 "Europäische Mittelmeerländer, inkl. Balkan"
* #4 "Arabischer Raum (Marokko, Afghan., Pakistan, Syrien, Irak,… Nordafrika)"
* #5 "Nordeuropa / sonst. Westeuropa"
* #6 "(Schwarz-)Afrika, südlich der Sahara"
* #7 "Asien"
* #8 "Lateinamerika" 
* #9 "Sonstige Staaten (Nordamerika, Australien, usw)"

ValueSet: SeuPersonEthnieVs
Id: SeuPersonEthnieVs
Title: "SEU Sprachlich-ethnischer Familienhintergrund"
* include codes from system SeuPersonEthnieCs

CodeSystem:  SeuPersonDeutschkenntnisCs
Id: SeuPersonDeutschkenntnisCs
Title: "Deutschkenntnis"
* #1 "kein Deutschverständnis"
* #2 "rudimentär"
* #3 "flüssig mit erheblichen Fehlern"
* #4 "flüssig mit leichten Fehlern"
* #5 "fehlerfreies Deutsch"

ValueSet: SeuPersonDeutschkenntnisVs
Id: SeuPersonDeutschkenntnisVs
Title: "Deutschkenntnis"
* include codes from system SeuPersonDeutschkenntnisCs

CodeSystem:  SeuVerwandtePersonDeutschkenntnisCs
Id: SeuVerwandtePersonDeutschkenntnisCs
Title: "Deutschkenntnis"
* #1 "rudimentär"
* #2 "fehlerhaft"
* #3 "fehlerfrei"
* #9 "unbekannt"

ValueSet: SeuVerwandtePersonDeutschkenntnisVs
Id: SeuVerwandtePersonDeutschkenntnisVs
Title: "Deutschkenntnis"
* include codes from system SeuVerwandtePersonDeutschkenntnisCs