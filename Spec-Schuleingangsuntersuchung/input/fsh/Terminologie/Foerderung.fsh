CodeSystem: FoerderungCS
Id: FoerderungCS
Title: "FoerderungCS"
Description: "FoerderungCS"
* #logopaedie "Logopädie"
* #ergotherapie "Ergotherapie"
* #physiotherapie_krankengymnastik "Physiotherapie/Krankengymnastik"
* #sozialpaediatrisches_zentrum "Sozialpädiatrisches Zentrum (SPZ)"
* #fuehe_hilfen "Frühe Hilfen"
* #integrationskind_kindergarrten "Integrationskind im Kindergarten"
* #einzelkindintegration "Einzelkindintegration (1:1 Betreuung)"
* #sprachfoerderung_kindergarten "Sprachförderung im Kindergarten"
* #fruehfoerderstelle "Frühförderstelle"
* #familienberatungsstelle "Familienberatungsstelle"
* #physiologische_behandlung_psychotherapie "Physiologische Behandlung/Psychotherapie"
* #jugendamt_familienhilfe "Jugendamt/Familienhilfe"

ValueSet: FoerderungVS
Id: FoerderungVS
Title: "FoerderungVS"
Description: "FoerderungVS"
* include codes from system FoerderungCS
* ^expansion.timestamp = "2024-04-04T11:16:49+00:00"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #logopaedie
* ^expansion.contains[=].display = "Logopädie"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #ergotherapie
* ^expansion.contains[=].display = "Ergotherapie"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #physiotherapie_krankengymnastik
* ^expansion.contains[=].display = "Physiotherapie/Krankengymnastik"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #sozialpaediatrisches_zentrum
* ^expansion.contains[=].display = "Sozialpädiatrisches Zentrum (SPZ)"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #fuehe_hilfen
* ^expansion.contains[=].display = "Frühe Hilfen"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #integrationskind_kindergarrten
* ^expansion.contains[=].display = "Integrationskind im Kindergarten"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #einzelkindintegration
* ^expansion.contains[=].display = "Einzelkindintegration (1:1 Betreuung)"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #sprachfoerderung_kindergarten
* ^expansion.contains[=].display = "Sprachförderung im Kindergarten"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #fruehfoerderstelle
* ^expansion.contains[=].display = "Frühförderstelle"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #familienberatungsstelle
* ^expansion.contains[=].display = "Familienberatungsstelle"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #physiologische_behandlung_psychotherapie
* ^expansion.contains[=].display = "Physiologische Behandlung/Psychotherapie"
* ^expansion.contains[+].system = Canonical(FoerderungCS)
* ^expansion.contains[=].code = #jugendamt_familienhilfe
* ^expansion.contains[=].display = "Jugendamt/Familienhilfe"