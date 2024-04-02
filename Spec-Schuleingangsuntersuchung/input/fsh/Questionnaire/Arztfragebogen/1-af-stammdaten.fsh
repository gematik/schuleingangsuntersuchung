RuleSet: 1-af-stammdaten
* item[+] insert addGroup(1, Stammdaten)
  * item[+] insert addRItemMl(1.1, #integer, Schlüsselnummer GA, 3)
  * item[+] insert addRItemMl(1.2, #integer, Untersucherin/Untersucher, 2)
  * item[+] insert addRItemMl(1.3, #integer, Laufende Nummer, 12)
  * item[+] insert addRItemMl(1.4, #string, Postleitzahl Wohnort, 4)
  * item[+] insert addItem(1.5, #integer, Sprengel/Kiganr.)
  * item[+] insert addRItem(1.6, #choice, Region)
    * answerValueSet = Canonical(SEU-AF-RegionArtVS)
  * item[+] insert addRItem(1.7, #date, Geburtsdatum)
  * item[+] insert addRItem(1.8, #integer, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+] insert addItem(1.9, #boolean, Kind lebt seit weniger als 1 Jahr in Deutschland)
  * item[+] insert addItem(1.10, #integer, AKDB-Meldejahrgang) //TODO Berechnung aus GebDatum; Feature-Set noch nicht gegeben
    * readOnly = true 
  * item[+] insert addItem(1.11, #integer, Jahr der regulären Einschulung) //TODO Berechnung aus GebDatum; Feature-Set noch nicht gegeben
    * readOnly = true
  * item[+] insert addItem(1.12, #integer, Teilnahme rSEU im 1. UJ)
  * item[+] insert addItem(1.13, #integer, Import-Status) //TODO Wie soll im Questionnaire damit umgegangen werden?
    * readOnly = true

CodeSystem: SEU-AF-RegionArtCS
Id: SEU-AF-RegionArtCS
Title: "SEU-AF Art der Region"
* #KFS "Kreisfreie Stadt"
* #LK "Landkreis"
* #UK "Unbekannt"

ValueSet: SEU-AF-RegionArtVS
Id: SEU-AF-RegionArtVS
Title: "SEU-AF Art der Region"
Description: "Diese Codes enthalten die Art einer Region"
* include codes from system SEU-AF-RegionArtCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-RegionArtCS)
* ^expansion.contains[=].code = #KFS
* ^expansion.contains[=].display = "Kreisfreie Stadt"
* ^expansion.contains[+].system = Canonical(SEU-AF-RegionArtCS)
* ^expansion.contains[=].code = #LK
* ^expansion.contains[=].display = "Landkreis"
* ^expansion.contains[+].system = Canonical(SEU-AF-RegionArtCS)
* ^expansion.contains[=].code = #UK
* ^expansion.contains[=].display = "Unbekannt"


Alias: $deGenderVS = http://fhir.de/CodeSystem/gender-amtlich-de

ValueSet: GenderDEVS
Id: GenderDEVS
Title: "SEU-AF Geschlecht DE"
Description: "Diese Codes enthalten die Angabe des Geschlechts"
* include codes from system $deGenderVS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = $deGenderVS
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "männlich"
* ^expansion.contains[+].system = $deGenderVS
* ^expansion.contains[=].code = #W
* ^expansion.contains[=].display = "weiblich"
* ^expansion.contains[+].system = $deGenderVS
* ^expansion.contains[=].code = #X
* ^expansion.contains[=].display = "unbestimmt"
* ^expansion.contains[+].system = $deGenderVS
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "divers"
