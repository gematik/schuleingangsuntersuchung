CodeSystem: ArzttypenCS
Id: ArzttypenCS
Title: "Arzttypen"
Description: "CodeSystem für die Angabe der Arzttypen."
* #kinderarzt "Kinderarzt/Hausarzt"
* #zahnarzt "Zahnarzt"
* #kieferorthopaede "Kieferorthopäde"
* #augenarzt "Augenarzt"
* #hnoarzt "Hals-Nasen-Ohren-Arzt"
* #hautarzt "Hautarzt"
* #urologe "Urologe"
* #chirurg "Chirurg/Orthopäde"
* #kinder_jugend_psychiater "Kinder- und Jugendpsychiater"

ValueSet: ArzttypenVS
Id: ArzttypenVS
Title: "ArzttypenVS"
Description: "ValueSet, das verschiedene Arzttypen enthält."
* ArzttypenCS#kinderarzt "Kinderarzt/Hausarzt"
* ArzttypenCS#zahnarzt "Zahnarzt"
* ArzttypenCS#kieferorthopaede "Kieferorthopäde"
* ArzttypenCS#augenarzt "Augenarzt"
* ArzttypenCS#hnoarzt "Hals-Nasen-Ohren-Arzt"
* ArzttypenCS#hautarzt "Hautarzt"
* ArzttypenCS#urologe "Urologe"
* ArzttypenCS#chirurg "Chirurg/Orthopäde"
* ArzttypenCS#kinder_jugend_psychiater "Kinder- und Jugendpsychiater"
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #kinderarzt
* ^expansion.contains[=].display = "Kinderarzt/Hausarzt"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #zahnarzt
* ^expansion.contains[=].display = "Zahnarzt"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #kieferorthopaede
* ^expansion.contains[=].display = "Kieferorthopäde"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #augenarzt
* ^expansion.contains[=].display = "Augenarzt"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #hnoarzt
* ^expansion.contains[=].display = "Hals-Nasen-Ohren-Arzt"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #hautarzt
* ^expansion.contains[=].display = "Hautarzt"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #urologe
* ^expansion.contains[=].display = "Urologe"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #chirurg
* ^expansion.contains[=].display = "Chirurg/Orthopäde"
* ^expansion.contains[+].system = Canonical(ArzttypenCS)
* ^expansion.contains[=].code = #kinder_jugend_psychiater
* ^expansion.contains[=].display = "Kinder- und Jugendpsychiater"