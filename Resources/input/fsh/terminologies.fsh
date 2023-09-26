CodeSystem:  PersonEthnieCS
Id: PersonEthnieCS
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

ValueSet: PersonEthnieVS
Id: PersonEthnieVS
Title: "SEU Sprachlich-ethnischer Familienhintergrund"
* include codes from system PersonEthnieCS

CodeSystem:  PersonDeutschkenntnisCS
Id: PersonDeutschkenntnisCS
Title: "Deutschkenntnis"
* #1 "kein Deutschverständnis"
* #2 "rudimentär"
* #3 "flüssig mit erheblichen Fehlern"
* #4 "flüssig mit leichten Fehlern"
* #5 "fehlerfreies Deutsch"

ValueSet: PersonDeutschkenntnisVS
Id: PersonDeutschkenntnisVS
Title: "Deutschkenntnis"
* include codes from system PersonDeutschkenntnisCS

CodeSystem:  VerwandtePersonDeutschkenntnisCS
Id: VerwandtePersonDeutschkenntnisCS
Title: "Deutschkenntnis"
* #1 "rudimentär"
* #2 "fehlerhaft"
* #3 "fehlerfrei"
* #9 "unbekannt"

ValueSet: VerwandtePersonDeutschkenntnisVS
Id: VerwandtePersonDeutschkenntnisVS
Title: "Deutschkenntnis"
* include codes from system VerwandtePersonDeutschkenntnisCS