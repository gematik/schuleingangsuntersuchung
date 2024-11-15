RuleSet: 1-af-stammdaten

* item[+] insert addGroup(1, Stammdaten)
  * item[+] insert addItemMl(1.1, #integer, Schlüsselnummer GA, 3)
    * insert addSource(#DE-BY)
  * item[+] insert addItemMl(1.2, #integer, Untersucherin/Untersucher, 2)
    * insert addSource(#DE-BY)
  * item[+] insert addItemWithSource(1.2a, #string, Untersucherin/Untersucher, #DE-HE)
    * repeats = true
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
    * answerValueSet = Canonical(SEU_UB_RegionArtVS)
  * item[+] insert addItem(1.7, #date, Geburtsdatum) //TODO-JS: Datumsformat TT.MM.JJJJ
    * insert addSource(#DE-BY)
  * item[+] insert addItemWithSource(1.7a, #date, Geburtsdatum, #DE-HE) //TODO: Datumsformat MM.JJJJ: https://chat.fhir.org/#narrow/channel/179255-questionnaire/topic/Specifying.20a.20partial.20date
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
  * item[+]
    * insert addItemWithSource(1.14, #string, [[Vorname Kind]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.15, #string, [[Nachname Kind]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.16, #integer, [[Alter des Kindes in Jahren]], #DE-BW)
    * insert uunit(a, "Jahre")
  * item[+]
    * insert addItemWithSource(1.17, #integer, [[Ort der Untersuchung]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.18, #boolean, [[Kind bei Untersuchung anwesend?]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.19, #boolean, [[Sorgeberechtigte Person 1 anwesend?]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.20, #boolean, [[Sorgeberechtigte Person 2 anwesend?]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.21, #boolean, [[Andere Begleitperson anwesend?]], #DE-BW)
    * item[+]
      * insert addGroup(1.21.g, [[Details Begleitperson]])
      * insert enableWhenBoolean(1.21, =, true)
      * item[+]
        * insert addItemWithSource(1.21.g.1, #string, [[Andere Begleitperson Name]], #DE-BW)
      * item[+]
        * insert addItemWithSource(1.21.g.2, #string, [[Andere Begleitperson Beziehungsstatus]], #DE-BW)
      * item[+]
        * insert addItemWithSource(1.21.g.3, #boolean, [[Andere Begleitperson Einverständniserklärung Sorgeberechtigte Person vorliegend]], #DE-BW)
  * item[+]
    * insert addItemWithSource(1.22, #choice, [[Deutschkenntnisse der Hauptbezugsperson?]], #DE-HE)
    * answerValueSet = Canonical(SEU_UB_VerwandtePersonDeutschkenntnisVS)

CodeSystem: SEU_UB_RegionArtCS
Id: SEU-UB-RegionArtCS
Title: "SEU-AF Art der Region"
* #KFS "Kreisfreie Stadt"
* #LK "Landkreis"
* #UK "Unbekannt"

ValueSet: SEU_UB_RegionArtVS
Id: SEU-UB-RegionArtVS
Title: "SEU-AF Art der Region"
Description: "Diese Codes enthalten die Art einer Region"
* include codes from system SEU_UB_RegionArtCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_RegionArtCS)
* ^expansion.contains[=].code = #KFS
* ^expansion.contains[=].display = "Kreisfreie Stadt"
* ^expansion.contains[+].system = Canonical(SEU_UB_RegionArtCS)
* ^expansion.contains[=].code = #LK
* ^expansion.contains[=].display = "Landkreis"
* ^expansion.contains[+].system = Canonical(SEU_UB_RegionArtCS)
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
* ^expansion.contains[=].display = "unbekannt"
* ^expansion.contains[+].system = $deGenderVS
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "divers"

CodeSystem: SEU_UB_VerwandtePersonDeutschkenntnisCS
Id: seu-ub-verwandtepersondeutschkenntnis-cs
Title: "SEU_UB_Deutschkenntnis"
Description: "CodeSystem für die Deutschkenntnisse einer verwandten Person."
* #1 "rudimentär"
* #2 "fehlerhaft"
* #3 "fehlerfrei"
* #9 "unbekannt"

ValueSet: SEU_UB_VerwandtePersonDeutschkenntnisVS
Id: seu-ub-verwandtepersondeutschkenntnis-vs
Title: "SEU_UB_Deutschkenntnis ValueSet"
Description: "ValueSet, das die Deutschkenntnisse einer verwandten Person enthält."
* include codes from system SEU_UB_VerwandtePersonDeutschkenntnisCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_VerwandtePersonDeutschkenntnisCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "rudimentär"
* ^expansion.contains[+].system = Canonical(SEU_UB_VerwandtePersonDeutschkenntnisCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "fehlerhaft"
* ^expansion.contains[+].system = Canonical(SEU_UB_VerwandtePersonDeutschkenntnisCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "fehlerfrei"
* ^expansion.contains[+].system = Canonical(SEU_UB_VerwandtePersonDeutschkenntnisCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "unbekannt"
