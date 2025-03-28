CodeSystem: WohnsituationKindCS
Id: WohnsituationKindCS
Title: "Wohnsituation des Kindes"
Description: "CodeSystem für die Angabe der Wohnsituation des Kindes bzw. der Familiensituation."
* #eltern "Eltern"
* #mutter "Mutter"
* #vater "Vater"
* #alleinerziehender_elternteil "Alleinerziehender Elternteil"
* #mutter_alleinerziehend "Mutter alleinerziehend"
* #vater_alleinerziehend "Vater alleinerziehend"
* #elternteil_mit_partner "Elternteil mit Partner"
* #mutter_mit_partner "Mutter mit Partner/in"
* #vater_mit_partner "Vater mit Partner/in"
* #wechselmodell "Wechselmodell"
* #heim "Heim"
* #pflegeeltern "Pflegeeltern"
* #andere_familienmitglieder "Andere Familienmitglieder/Verwandte"
* #andere "Andere Personen"
* #keine_angabe "Keine Angabe"

ValueSet: WohnsituationKindVS
Id: WohnsituationKindVS
Title: "WohnsituationKindVS"
Description: "WohnsituationKindVS"
* WohnsituationKindCS#eltern "Eltern"
* WohnsituationKindCS#mutter "Mutter"
* WohnsituationKindCS#vater "Vater"
* WohnsituationKindCS#andere "Andere"
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"

ValueSet: WohnsituationKindAlternativ3VS
Id: WohnsituationKindAlternativ3VS
Title: "WohnsituationKindAlternativ3VS"
Description: "ValueSet, das verschiedene Wohnsituationen des Kindes enthält."
* WohnsituationKindCS#eltern "Eltern"
* WohnsituationKindCS#mutter "Mutter"
* WohnsituationKindCS#vater "Vater"
* WohnsituationKindCS#mutter_mit_partner "bei der Mutter mit Ehe-/ Lebenspartner"
* WohnsituationKindCS#vater_mit_partner "beim Vater mit Ehe-/ Lebenspartner"
* WohnsituationKindCS#wechselmodell "wechselnd zu etwa gleichen Teilen bei Mutter bzw. Vater"
* WohnsituationKindCS#andere "Andere"
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter_mit_partner
* ^expansion.contains[=].display = "bei der Mutter mit Ehe-/ Lebenspartner"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater_mit_partner
* ^expansion.contains[=].display = "beim Vater mit Ehe-/ Lebenspartner"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #wechselmodell
* ^expansion.contains[=].display = "wechselnd zu etwa gleichen Teilen bei Mutter bzw. Vater"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"

ValueSet: WohnsituationKindAlternativ1VS
Id: WohnsituationKindAlternativ1VS
Title: "WohnsituationKindAlternativ1VS"
Description: "ValueSet, das verschiedene Wohnsituationen des Kindes enthält."
* WohnsituationKindCS#eltern "Bei beiden leiblichen Eltern"
* WohnsituationKindCS#alleinerziehender_elternteil "Bei alleinerziehendem Elternteil"
* WohnsituationKindCS#elternteil_mit_partner "Bei Elternteil mit Partner"
* WohnsituationKindCS#andere "Bei Großeltern, Pflegeeltern, Adoptiveltern oder anderen"
* WohnsituationKindCS#keine_angabe "Keine Angaben"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Bei beiden leiblichen Eltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #alleinerziehender_elternteil
* ^expansion.contains[=].display = "Bei alleinerziehendem Elternteil"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #elternteil_mit_partner
* ^expansion.contains[=].display = "Bei Elternteil mit Partner"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Bei Großeltern, Pflegeeltern, Adoptiveltern oder anderen"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angaben"

ValueSet: WohnsituationKindAlternativ2VS
Id: WohnsituationKindAlternativ2VS
Title: "WohnsituationKindAlternativ2VS"
Description: "ValueSet, das verschiedene Wohnsituationen des Kindes enthält."
* WohnsituationKindCS#eltern "Leibliche Eltern"
* WohnsituationKindCS#mutter_mit_partner "Mutter mit Partner/in"
* WohnsituationKindCS#mutter_alleinerziehend "Mutter alleinerziehend"
* WohnsituationKindCS#vater_mit_partner "Vater mit Partner/in"
* WohnsituationKindCS#vater_alleinerziehend "Vater alleinerziehend"
* WohnsituationKindCS#wechselmodell "Wechselmodell"
* WohnsituationKindCS#heim "Heim"
* WohnsituationKindCS#pflegeeltern "Pflegeeltern"
* WohnsituationKindCS#andere_familienmitglieder "Andere Familienmitglieder/Verwandte"
* WohnsituationKindCS#andere "Andere Personen"
* WohnsituationKindCS#keine_angabe "Keine Angabe"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Leibliche Eltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter_mit_partner
* ^expansion.contains[=].display = "Mutter mit Partner/in"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter_alleinerziehend
* ^expansion.contains[=].display = "Mutter alleinerziehend"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater_mit_partner
* ^expansion.contains[=].display = "Vater mit Partner/in"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater_alleinerziehend
* ^expansion.contains[=].display = "Vater alleinerziehend"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #wechselmodell
* ^expansion.contains[=].display = "Wechselmodell"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #heim
* ^expansion.contains[=].display = "Heim"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #pflegeeltern
* ^expansion.contains[=].display = "Pflegeeltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere_familienmitglieder
* ^expansion.contains[=].display = "Andere Familienmitglieder/Verwandte"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere Personen"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

ValueSet: LebensumfeldVS
Id: lebensumfeld-vs
Title: "Lebensumfeld VS"
Description: "LebensumfeldVS"
* include codes from system WohnsituationKindCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Leibliche Eltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #mutter_alleinerziehend
* ^expansion.contains[=].display = "Mutter alleinerziehend"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #vater_alleinerziehend
* ^expansion.contains[=].display = "Vater alleinerziehend"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #pflegeeltern
* ^expansion.contains[=].display = "Pflegeeltern"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #andere_familienmitglieder
* ^expansion.contains[=].display = "Andere Familienmitglieder/Verwandte"
* ^expansion.contains[+].system = Canonical(WohnsituationKindCS)
* ^expansion.contains[=].code = #heim
* ^expansion.contains[=].display = "in einer Einrichtung"