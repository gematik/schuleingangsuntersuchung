CodeSystem: FreiesLaufenGelerntCS
Id: FreiesLaufenGelerntCS
Title: "FreiesLaufenGelerntCS"
Description: "CodeSystem, dass das Alter beschreibt, ab dem das Kind frei laufen kann."
* #bis_15_monate "bis zum 15. Monat"
* #spaeter "später als 15. Monat"

CodeSystem: SprechenGelerntCS
Id: SprechenGelerntCS
Title: "SprechenGelerntCS"
Description: "CodeSystem, das beschreibt, wann das Kind sprechen gelernt hat (mind. 2-Wort-Sätze, ca. 50 Wörter)."
* #bis_2_geburtstag "bis zum 2. Geburtstag"
* #spaeter "später als 2. Geburtstag"

ValueSet: FreiesLaufenGelerntVS
Id: FreiesLaufenGelerntVS
Title: "Freies Laufen gelernt Value Set"
Description: "ValueSet, dass das Alter beschreibt, ab dem das Kind frei laufen kann."
* FreiesLaufenGelerntCS#bis_15_monate "bis zum 15. Monat"
* FreiesLaufenGelerntCS#spaeter "später als 15. Monat"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(FreiesLaufenGelerntCS)
* ^expansion.contains[=].code = #bis_15_monate
* ^expansion.contains[=].display = "bis zum 15. Monat"
* ^expansion.contains[+].system = Canonical(FreiesLaufenGelerntCS)
* ^expansion.contains[=].code = #spaeter
* ^expansion.contains[=].display = "später als 15. Monat"

ValueSet: SprechenGelerntVS
Id: SprechenGelerntVS
Title: "Sprechen gelernt Value Set"
Description: "ValueSet, das beschreibt, wann das Kind sprechen gelernt hat (mind. 2-Wort-Sätze, ca. 50 Wörter)."
* SprechenGelerntCS#bis_2_geburtstag "bis zum 2. Geburtstag"
* SprechenGelerntCS#spaeter "später als 2. Geburtstag"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SprechenGelerntCS)
* ^expansion.contains[=].code = #bis_2_geburtstag
* ^expansion.contains[=].display = "bis zum 2. Geburtstag"
* ^expansion.contains[+].system = Canonical(SprechenGelerntCS)
* ^expansion.contains[=].code = #spaeter
* ^expansion.contains[=].display = "später als 2. Geburtstag"

CodeSystem: TagsNachtsSauberCS
Id: TagsNachtsSauberCS
Title: "TagsNachtsSauberCS"
Description: "CodeSystem, das beschreibt, wann das Kind tags und nachts sauber (trocken) wurde."
* #bis_4_geburtstag "bis zum 4. Geburtstag"
* #spaeter "später als 4. Geburtstag"

ValueSet: TagsNachtsSauberVS
Id: TagsNachtsSauberVS
Title: "Tags und nachts sauber Value Set"
Description: "ValueSet, das beschreibt, wann das Kind tags und nachts sauber (trocken) wurde."
* TagsNachtsSauberCS#bis_4_geburtstag "bis zum 4. Geburtstag"
* TagsNachtsSauberCS#spaeter "später als 4. Geburtstag"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(TagsNachtsSauberCS)
* ^expansion.contains[=].code = #bis_4_geburtstag
* ^expansion.contains[=].display = "bis zum 4. Geburtstag"
* ^expansion.contains[+].system = Canonical(TagsNachtsSauberCS)
* ^expansion.contains[=].code = #spaeter
* ^expansion.contains[=].display = "später als 4. Geburtstag"