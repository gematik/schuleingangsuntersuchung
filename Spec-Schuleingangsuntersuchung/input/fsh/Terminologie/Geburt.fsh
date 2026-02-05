CodeSystem: GeburtArtCS
Id: GeburtArtCS
Title: "GeburtArtCS"
Description: "CodeSystem, das die Arten der Geburt enthält."
* #spontangeburt "Spontangeburt"
* #kaiserschnitt "Kaiserschnitt"
* #mehrlingsgeburt "Mehrlingsgeburt"
* #mit_Saugglocke_oder_zangen "Geburt mit Saugglocke oder Zangen"
* #frühgeburt "Frühgeburt"
* #frühgeburt_und_kaiserschnitt "Frühgeburt und Kaiserschnitt"
* #frühgeburt_und_weitere_komplikationen "Frühgeburt und weitere Geburtskomplikationen"
* #weitere_komplikationen "weitere Geburtskomplikationen (z.B. Saugglocke, Zangengeburt)"   // TODO: ähnlich wie #mit_Saugglocke_oder_zangen, aber nicht identisch

CodeSystem: GeburtBesonderheitenCS
Id: GeburtBesonderheitenCS
Title: "CodeSystem für Auffälligkeiten bei der Geburt"
Description: "Dieses CodeSystem klassifiziert verschiedene Auffälligkeiten, die bei der Geburt auftreten können."
* #fruehgeburt "Frühgeburt"
* #mehrlingsgeburt "Mehrlingsgeburt"
* #entbindung_per_zange_saugglocke "Entbindung per Zange oder Saugglocke"
* #neonatale_betreuung "NNeonatologische Betreuung des Kindes nach der Geburt"

ValueSet: GeburtArtVS
Id: GeburtArtVS
Title: "Art der Geburt Value Set"
Description: "ValueSet, das die Arten der Geburt enthält."
* GeburtArtCS#spontangeburt "Spontangeburt"
* GeburtArtCS#kaiserschnitt "Kaiserschnitt"
* GeburtArtCS#mehrlingsgeburt "Mehrlingsgeburt"
* GeburtArtCS#mit_Saugglocke_oder_zangen "Geburt mit Saugglocke oder Zangen"
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

ValueSet: GeburtsmodusVS
Id: Geburtsmodus
Title: "Geburtsmodus"
Description: "ValueSet, das den Modus der Geburt enthält."
* GeburtArtCS#spontangeburt "Normalgeburt (Spontangeburt)"
* GeburtArtCS#frühgeburt "Frühgeburt"
* GeburtArtCS#frühgeburt_und_kaiserschnitt "Frühgeburt und Kaiserschnitt"
* GeburtArtCS#frühgeburt_und_weitere_komplikationen "Frühgeburt und weitere Geburtskomplikationen"
* GeburtArtCS#kaiserschnitt "Kaiserschnitt"
* GeburtArtCS#weitere_komplikationen "weitere Geburtskomplikationen (z.B. Saugglocke, Zangengeburt)"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #spontangeburt
* ^expansion.contains[=].display = "Normalgeburt (Spontangeburt)"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #frühgeburt
* ^expansion.contains[=].display = "Frühgeburt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #frühgeburt_und_kaiserschnitt
* ^expansion.contains[=].display = "Frühgeburt und Kaiserschnitt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #frühgeburt_und_weitere_komplikationen
* ^expansion.contains[=].display = "Frühgeburt und weitere Geburtskomplikationen"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #kaiserschnitt
* ^expansion.contains[=].display = "Kaiserschnitt"
* ^expansion.contains[+].system = Canonical(GeburtArtCS)
* ^expansion.contains[=].code = #weitere_komplikationen
* ^expansion.contains[=].display = "weitere Geburtskomplikationen (z.B. Saugglocke, Zangengeburt)"

ValueSet: GeburtBesonderheitenVS
Id: GeburtBesonderheitenVS
Title: "Geburt Besonderheiten Value Set"
Description: "ValueSet, das verschiedene Auffälligkeiten bei der Geburt enthält."
* GeburtBesonderheitenCS#fruehgeburt "Frühgeburt"
* GeburtBesonderheitenCS#mehrlingsgeburt "Mehrlingsgeburt"
* GeburtBesonderheitenCS#entbindung_per_zange_saugglocke "Entbindung per Zange oder Saugglocke"
* GeburtBesonderheitenCS#neonatale_betreuung "Neonatologische Betreuung des Kindes nach der Geburt"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(GeburtBesonderheitenCS)
* ^expansion.contains[=].code = #fruehgeburt
* ^expansion.contains[=].display = "Frühgeburt"
* ^expansion.contains[+].system = Canonical(GeburtBesonderheitenCS)
* ^expansion.contains[=].code = #mehrlingsgeburt
* ^expansion.contains[=].display = "Mehrlingsgeburt"
* ^expansion.contains[+].system = Canonical(GeburtBesonderheitenCS)
* ^expansion.contains[=].code = #entbindung_per_zange_saugglocke
* ^expansion.contains[=].display = "Entbindung per Zange oder Saugglocke"
* ^expansion.contains[+].system = Canonical(GeburtBesonderheitenCS)
* ^expansion.contains[=].code = #neonatale_betreuung
* ^expansion.contains[=].display = "Neonatologische Betreuung des Kindes nach der Geburt"