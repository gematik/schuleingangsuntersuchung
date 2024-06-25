CodeSystem: JaNeinKeineAngabeCS
Id: JaNeinKeineAngabeCS
Title: "Ja-Nein-Keine Angabe CodeSystem"
* #yes "Ja"
* #no "Nein"
* #x "Keine Angabe"

ValueSet: JaNeinKeineAngabeVS
Id: JaNeinKeineAngabeVS
Title: "Ja-Nein-Keine Angabe ValueSet"
* include codes from system JaNeinKeineAngabeCS
* ^expansion.timestamp = "2024-06-24T12:00:00+00:00"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #yes
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #no
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(JaNeinKeineAngabeCS)
* ^expansion.contains[=].code = #x
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: AngabeTotgeborenCS
Id: AngabeTotgeborenCS
* #0 "Als tote Leibesfrucht geboren"
* #1 "In der Geburt verstorben"
* #2 "Keine Angabe"

ValueSet: AngabeTotgeborenVS
Id: AngabeTotgeborenVS
* include codes from system AngabeTotgeborenCS
* ^expansion.timestamp = "2024-06-24T12:00:00+00:00"
* ^expansion.contains[+].system = Canonical(AngabeTotgeborenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "Als tote Leibesfrucht geboren"
* ^expansion.contains[+].system = Canonical(AngabeTotgeborenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "In der Geburt verstorben"
* ^expansion.contains[+].system = Canonical(AngabeTotgeborenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: BerufsgruppeCS
Id: BerufsgruppeCS
* #0 "Krankenhaus"
* #1 "Niedergelassen"
* #2 "Rettungsdienst"
* #3 "ambulanter Notdienst"
* #9 "Sonstige"

ValueSet: BerufsgruppeVS
Id: BerufsgruppeVS
* include codes from system BerufsgruppeCS

CodeSystem: BestattungsartCS
Id: BestattungsartCS
* #0 "Erdbestattung"
* #1 "Feuerbestattung"
* #2 "keine Angabe"

ValueSet: BestattungsartVS
Id: BestattungsartVS
* include codes from system BestattungsartCS

CodeSystem: BundeslandCS
Id: BundeslandCS
* #1 "Schleswig-Holstein"
* #2 "Hamburg"
* #3 "Niedersachsen"
* #4 "Bremen"
* #5 "Nordrhein-Westfalen"
* #6 "Hessen"
* #7 "Rheinland-Pfalz"
* #8 "Baden-Württemberg"
* #9 "Bayern"
* #10 "Saarland"
* #11 "Berlin"
* #12 "Brandenburg"
* #13 "Mecklenburg-Vorpommern"
* #14 "Sachsen"
* #15 "Sachsen-Anhalt"
* #16 "Thüringen"
* #99 "Bund"

ValueSet: BundeslandVS
Id: BundeslandVS
* include codes from system BundeslandCS

CodeSystem: FacharztgruppeCS
Id: FacharztgruppeCS
* #0 "Hausarzt/-ärztin"
* #1 "Notarzt/-ärztin"
* #2 "Arzt/Ärztin des kassenärztlichen Not-dienstes"
* #3 "diensthabender Arzt/Ärztin im Kran-kenhaus"
* #4 "Rechtsmedizinger/-in"
* #5 "Sonstiges"

ValueSet: FacharztgruppeVS
Id: FacharztgruppeVS
* include codes from system FacharztgruppeCS

CodeSystem: FamilienstandCS
Id: FamilienstandCS
* #0 "CS muss noch definiert werden"

ValueSet: FamilienstandVS
Id: FamilienstandVS
* include codes from system FamilienstandCS

CodeSystem: FeststellungSterbezeitCS
Id: FeststellungSterbezeitCS
* #0 "Nach eigenen Festellungen"
* #1 "Nach Angaben von Angehörigen/Dritten"
* #2 "keine Angabe"

ValueSet: FeststellungSterbezeitVS
Id: FeststellungSterbezeitVS
* include codes from system FeststellungSterbezeitCS

CodeSystem: FeststellungTodesursacheCS
Id: FeststellungTodesursacheCS
* #0 "Behandelnder Arzt"
* #1 "nicht behandelnder Arzt nach Angaben des behandelnden Arztes"
* #2 "nicht behandelnder Arzt ohne Angaben des behandelnden Arztes"
* #3 "Ärztl. Leichenschauer nach Angaben des behandelnden Arztes"

ValueSet: FeststellungTodesursacheVS
Id: FeststellungTodesursacheVS
* include codes from system FeststellungTodesursacheCS

CodeSystem: GeburtOrtCS
Id: GeburtOrtCS
* #0 "Krankenhaus"
* #1 "sonstiger Ort mit Angabe"
* #2 "zu Hause"

ValueSet: GeburtOrtVS
Id: GeburtOrtVS
* include codes from system GeburtOrtCS

CodeSystem: IdentifikationsartCS
Id: IdentifikationsartCS
* #0 "Aufgrund eigener Kenntnis"
* #1 "Nach Einsicht n Personalausweis/Reisepass"
* #2 "Nach Angaben von Angehörigen/Dritten"
* #3 "sonstigem Nacheis"
* #9 "Nicht möglich"

ValueSet: IdentifikationsartVS
Id: IdentifikationsartVS
* include codes from system IdentifikationsartCS

CodeSystem: JnCS
Id: JnCS
* #1 "ja"
* #0 "nein"

ValueSet: JnVS
Id: JnVS
* include codes from system JnCS

CodeSystem: JnxCS
Id: JnxCS
* #1 "ja"
* #9 "keine Angabe"
* #0 "nein"

ValueSet: JnxVS
Id: JnxVS
* include codes from system JnxCS

CodeSystem: NichtnatuerlicherTodArtCS
Id: NichtnatuerlicherTodArtCS
* #0 "Selbsttötung"
* #1 "Tötung"
* #2 "Unfalltod"

ValueSet: NichtnatuerlicherTodArtVS
Id: NichtnatuerlicherTodArtVS
* include codes from system NichtnatuerlicherTodArtCS

CodeSystem: QuelleTodesursachenCS
Id: QuelleTodesursachenCS
* #O "Obduktionsschein"
* #T "Leichenschauschein"

ValueSet: QuelleTodesursachenVS
Id: QuelleTodesursachenVS
* include codes from system QuelleTodesursachenCS

CodeSystem: StaatDnxCS
Id: StaatDnxCS
* #D "Deutsch"
* #N "Nicht deutsch"
* #X "unbekannt"

ValueSet: StaatDnxVS
Id: StaatDnxVS
* include codes from system StaatDnxCS

CodeSystem: SterbeortKategorieCS
Id: SterbeortKategorieCS
* #0 "Einrichtung der Eingliederungshilfe"
* #1 "Im Heim"
* #2 "Im Krankenhaus"
* #3 "Sonstiger Ort"
* #4 "Stat. Hospiz"
* #5 "Transport"
* #6 "zu Hause"

ValueSet: SterbeortKategorieVS
Id: SterbeortKategorieVS
* include codes from system SterbeortKategorieCS

CodeSystem: SterbezeitExaktCS
Id: SterbezeitExaktCS
* #0 "genauer Todeszeitpunkt"
* #1 "der Todeszeitpunkt ist nicht genau bestimmbar"

ValueSet: SterbezeitExaktVS
Id: SterbezeitExaktVS
* include codes from system SterbezeitExaktCS

CodeSystem: UnfallkategorieCS
Id: UnfallkategorieCS
* #0 "Arbeits-oder Dienstunfall (ohne Wegeunfall)"
* #1 "häuslicher Unfall"
* #2 "Schulunfall (ohne Wegeunfall)"
* #3 "Sonstiger Unfall"
* #4 "Sport-oder Spielunfall (nicht in Haus oder Schule)"
* #5 "Verkehrsunfall"
* #6 "Verkehrsunfall (auf nicht öffentl. Verkehrsweg)"
* #7 "Verkehrsunfall (einschk. Wegeunfall)"

ValueSet: UnfallkategorieVS
Id: UnfallkategorieVS
* include codes from system UnfallkategorieCS

CodeSystem: VerkehrsunfallkategorieCS
Id: VerkehrsunfallkategorieCS
* #0 "PKW-Fahrer/-in"
* #1 "LKW-Fahrer/-in"
* #2 "Motorradfahrer/-in"
* #3 "Fahrer/-in eines sonstigen KFZ"
* #4 "PKW-Beifahrer/-in"
* #5 "LKW-Beifahrer/-in"
* #6 "Motorradmitfahrer/-in"
* #7 "Fahrradfahrer/-in"
* #8 "Fahrradmitfahrer/-in"
* #9 "Fußgänger/-in"
* #10 "E-Scooter/-in"
* #11 "Sonstiges (bitte in Beschreibung der äußeren Ursache aufführen)"
* #99 "nicht bekannt"

ValueSet: VerkehrsunfallkategorieVS
Id: VerkehrsunfallkategorieVS
* include codes from system VerkehrsunfallkategorieCS

CodeSystem: ZeichenTodCS
Id: ZeichenTodCS
* #0 "erfolglose Reanimation"
* #1 "Fäulnis"
* #2 "Hirntod"
* #3 "Totenflecke"
* #4 "Totenstarre"
* #5 "Verletzungen, die nicht mit dem Leben vereinbar sind"

ValueSet: ZeichenTodVS
Id: ZeichenTodVS
* include codes from system ZeichenTodCS