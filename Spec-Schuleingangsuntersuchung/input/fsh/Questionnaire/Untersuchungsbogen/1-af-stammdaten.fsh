RuleSet: 1-af-stammdaten

* item[+] insert addGroup(1, Stammdaten)
  * item[+] insert addItemMl(1.1, #integer, Schlüsselnummer GA, 3)
    * insert addSource(#DE-BY)
  * item[+] insert addItemMl(1.2, #integer, Untersucherin/Untersucher, 2)
    * insert addSource(#DE-BY)
  * item[+] insert addItemMl(1.3, #integer, Laufende Nummer, 12)
    * insert addSource(#DE-BY)
  * item[+] insert addItemMl(1.4, #string, Postleitzahl Wohnort, 4)
    * insert addSource(#DE-BY)
    * item[+] insert helpItem(1.4h, Die ersten 4 Ziffern der Postleitzahl)
      * insert addSource(#DE-BY)
  * item[+] insert addItemMl(1.5, #integer, Sprengel/Kiganr., 4)
    * insert addSource(#DE-BY)
  * item[+] insert addItem(1.6, #choice, Region)
    * insert addSource(#DE-BY)
    * answerValueSet = Canonical(SEU-AF-RegionArtVS)
  * item[+] insert addItem(1.7, #date, Geburtsdatum) //TODO-JS: Datumsformat TT.MM.JJJJ
    * insert addSource(#DE-BY)
  * item[+] insert addItem(1.8, #choice, Geschlecht)
    * insert addSource(#DE-BY)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+] insert addItem(1.9, #boolean, Kind lebt seit weniger als 1 Jahr in Deutschland)
    * insert addSource(#DE-BY)
  * item[+] insert addItem(1.10, #integer, AKDB-Meldejahrgang) //TODO Berechnung aus GebDatum; Feature-Set noch nicht gegeben
    * insert addSource(#DE-BY)
    * readOnly = true 
  * item[+] insert addItem(1.11, #integer, Jahr der regulären Einschulung) //TODO Berechnung aus GebDatum; Feature-Set noch nicht gegeben
    * insert addSource(#DE-BY)
    * readOnly = true
  * item[+] insert addItem(1.12, #boolean, Teilnahme rSEU im 1. UJ)
    * insert addSource(#DE-BY)
  * item[+] insert addItem(1.13, #integer, Import-Status) //TODO Wie soll im Questionnaire damit umgegangen werden?
    * insert addSource(#DE-BY)
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
