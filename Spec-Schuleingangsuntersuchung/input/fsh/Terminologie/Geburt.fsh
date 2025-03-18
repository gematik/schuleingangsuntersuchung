CodeSystem: GeburtArtCS
Id: GeburtArtCS
Title: "GeburtArtCS"
Description: "CodeSystem, das die Arten der Geburt enthält."
* #spontangeburt "Spontangeburt"
* #kaiserschnitt "Kaiserschnitt"
* #mehrlingsgeburt "Mehrlingsgeburt"
* #mit_Saugglocke_oder_zangen "Geburt mit Saugglocke oder Zangen"
ValueSet: GeburtArtVS
Id: GeburtArtVS
Title: "Art der Geburt Value Set"
Description: "ValueSet, das die Arten der Geburt enthält."
* include codes from system GeburtArtCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #spontangeburt
* ^expansion.contains[=].display = "Spontangeburt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #kaiserschnitt
* ^expansion.contains[=].display = "Kaiserschnitt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #mehrlingsgeburt
* ^expansion.contains[=].display = "Mehrlingsgeburt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #mit_Saugglocke_oder_zangen
* ^expansion.contains[=].display = "Geburt mit Saugglocke oder Zangen"