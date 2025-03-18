CodeSystem: LebtBeiCS
Id: LebtBeiCS
Title: "LebtBeiCS"
Description: "LebtBeiCS"
* #eltern "Eltern"
* #mutter "Mutter"
* #vater "Vater"
* #andere "Andere"
* #mutter_mit_partner_in "bei der Mutter mit Ehe-/ Lebenspartner"
* #vater_mit_partner_in "beim Vater mit Ehe-/ Lebenspartner"
* #wechselmodell "wechselnd zu etwa gleichen Teilen bei Mutter bzw. Vater"

CodeSystem: SEU_EF_WohnsituationKindCS
Id: seu-ef-wohnsituation-kind-cs
Title: "SEU_EF_Wohnsituation Kind CodeSystem"
Description: "CodeSystem für die Angabe der Wohnsituation des Kindes."
* #bei_beiden_leiblichen_eltern "Bei beiden leiblichen Eltern"
* #bei_alleinerziehendem_elternteil "Bei alleinerziehendem Elternteil"
* #bei_elternteil_mit_partner "Bei Elternteil mit Partner"
* #bei_grosseltern_oder_anderen "Bei Großeltern, Pflegeeltern, Adoptiveltern oder anderen"
* #keine_angaben "Keine Angaben"

CodeSystem: SEU_EF_FamiliensituationCS
Id: seu-ef-familiensituation-cs
Title: "SEU_EF_Familiensituation CodeSystem"
Description: "CodeSystem für die Angabe der Familiensituation."
* #leibliche_eltern "Leibliche Eltern"
* #mutter_mit_partner_in "Mutter mit Partner/in"
* #mutter_alleinerziehend "Mutter alleinerziehend"
* #vater_mit_partner_in "Vater mit Partner/in"
* #vater_alleinerziehend "Vater alleinerziehend"
* #wechselmodell "Wechselmodell"
* #heim "Heim"
* #pflegeeltern "Pflegeeltern"
* #andere_familienmitglieder_verwandte "Andere Familienmitglieder/Verwandte"
* #andere_personen "Andere Personen"
* #keine_angabe "Keine Angabe"

ValueSet: LebtBeiVS
Id: LebtBeiVS
Title: "LebtBeiVS"
Description: "LebtBeiVS"
* LebtBeiCS#vater "Vater"
* LebtBeiCS#eltern "Eltern"
* LebtBeiCS#andere "Andere"
* LebtBeiCS#mutter "Mutter"

* include codes from system LebtBeiCS
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[0].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"

ValueSet: LebtBeiMitErweiterungVS
Description: "LebtBeiMitErweiterungVS"
* include codes from system LebtBeiCS
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[0].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #mutter_mit_partner_in
* ^expansion.contains[=].display = "bei der Mutter mit Ehe-/ Lebenspartner"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #vater_mit_partner_in
* ^expansion.contains[=].display = "beim Vater mit Ehe-/ Lebenspartner"
* ^expansion.contains[+].system = Canonical(LebtBeiCS)
* ^expansion.contains[=].code = #wechselmodell
* ^expansion.contains[=].display = "wechselnd zu etwa gleichen Teilen bei Mutter bzw. Vater"

ValueSet: SEU_EF_WohnsituationKindVS
Id: seu-ef-wohnsituation-kind-vs
Title: "SEU_EF_Wohnsituation Kind ValueSet"
Description: "ValueSet, das verschiedene Wohnsituationen des Kindes enthält."
* include codes from system SEU_EF_WohnsituationKindCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_WohnsituationKindCS)
* ^expansion.contains[=].code = #bei_beiden_leiblichen_eltern
* ^expansion.contains[=].display = "Bei beiden leiblichen Eltern"
* ^expansion.contains[+].system = Canonical(SEU_EF_WohnsituationKindCS)
* ^expansion.contains[=].code = #bei_alleinerziehendem_elternteil
* ^expansion.contains[=].display = "Bei alleinerziehendem Elternteil"
* ^expansion.contains[+].system = Canonical(SEU_EF_WohnsituationKindCS)
* ^expansion.contains[=].code = #bei_elternteil_mit_partner
* ^expansion.contains[=].display = "Bei Elternteil mit Partner"
* ^expansion.contains[+].system = Canonical(SEU_EF_WohnsituationKindCS)
* ^expansion.contains[=].code = #bei_grosseltern_oder_anderen
* ^expansion.contains[=].display = "Bei Großeltern, Pflegeeltern, Adoptiveltern oder anderen"
* ^expansion.contains[+].system = Canonical(SEU_EF_WohnsituationKindCS)
* ^expansion.contains[=].code = #keine_angaben
* ^expansion.contains[=].display = "Keine Angaben"

ValueSet: SEU_EF_FamiliensituationVS
Id: seu-ef-familiensituation-vs
Title: "SEU_EF_Familiensituation ValueSet"
Description: "ValueSet, das verschiedene Familiensituationen enthält."
* include codes from system SEU_EF_FamiliensituationCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #leibliche_eltern
* ^expansion.contains[=].display = "Leibliche Eltern"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #mutter_mit_partner_in
* ^expansion.contains[=].display = "Mutter mit Partner/in"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #mutter_alleinerziehend
* ^expansion.contains[=].display = "Mutter alleinerziehend"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #vater_mit_partner_in
* ^expansion.contains[=].display = "Vater mit Partner/in"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #vater_alleinerziehend
* ^expansion.contains[=].display = "Vater alleinerziehend"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #wechselmodell
* ^expansion.contains[=].display = "Wechselmodell"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #heim
* ^expansion.contains[=].display = "Heim"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #pflegeeltern
* ^expansion.contains[=].display = "Pflegeeltern"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #andere_familienmitglieder_verwandte
* ^expansion.contains[=].display = "Andere Familienmitglieder/Verwandte"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #andere_personen
* ^expansion.contains[=].display = "Andere Personen"
* ^expansion.contains[+].system = Canonical(SEU_EF_FamiliensituationCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"