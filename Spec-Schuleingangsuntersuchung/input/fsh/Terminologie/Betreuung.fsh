CodeSystem: KinderbetreuungCS
Id: KinderbetreuungCS
Title: "KinderbetreuungCS"
Description: "CodeSystem, das die verschiedenen Betreuungsformen eines Kindes beschreibt."
* #hauskind "nur zuhause (Hauskind)"
* #kita_halbtags "KITA halbtags (<5h), Rest des Tages zuhause"
* #kita_ganztags "KITA ganztags (>6h)"
* #tagespflege_halbtags "Tagespflege halbtags (<5h), Rest des Tages zuhause"
* #tagespflege_ganztags "Tagespflege ganztags (>6h)"
* #kita_und_tagespflege "KITA und Tagespflege (jeweils etwa halbtags)"

ValueSet: KinderbetreuungVS
Id: KinderbetreuungVS
Title: "KinderbetreuungVS"
Description: "ValueSet, das die verschiedenen Betreuungsformen eines Kindes beschreibt."
* KinderbetreuungCS#hauskind "nur zuhause (Hauskind)"
* KinderbetreuungCS#kita_halbtags "KITA halbtags (<5h), Rest des Tages zuhause"
* KinderbetreuungCS#kita_ganztags "KITA ganztags (>6h)"
* KinderbetreuungCS#tagespflege_halbtags "Tagespflege halbtags (<5h), Rest des Tages zuhause"
* KinderbetreuungCS#tagespflege_ganztags "Tagespflege ganztags (>6h)"
* KinderbetreuungCS#kita_und_tagespflege "KITA und Tagespflege (jeweils etwa halbtags)"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #hauskind
* ^expansion.contains[=].display = "nur zuhause (Hauskind)"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #kita_halbtags
* ^expansion.contains[=].display = "KITA halbtags (<5h), Rest des Tages zuhause"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #kita_ganztags
* ^expansion.contains[=].display = "KITA ganztags (>6h)"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #tagespflege_halbtags
* ^expansion.contains[=].display = "Tagespflege halbtags (<5h), Rest des Tages zuhause"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #tagespflege_ganztags
* ^expansion.contains[=].display = "Tagespflege ganztags (>6h)"
* ^expansion.contains[+].system = Canonical(KinderbetreuungCS)
* ^expansion.contains[=].code = #kita_und_tagespflege
* ^expansion.contains[=].display = "KITA und Tagespflege (jeweils etwa halbtags)"

CodeSystem: KitaEintrittsalterCS
Id: KitaEintrittsalterCS
Title: "KitaEintrittsalterCS"
Description: "CodeSystem, das das Alter des Kindes beim Eintritt in die Kita beschreibt."
* #unter_2_jahre "< 2 Jahre"
* #2_jahre "2 Jahre"
* #3_jahre "3 Jahre"
* #4_jahre "4 Jahre"
* #5_jahre "5 Jahre"

ValueSet: KitaEintrittsalterVS
Id: KitaEintrittsalterVS
Title: "Alter bei Kita-Eintritt Value Set"
Description: "ValueSet, das das Alter des Kindes beim Eintritt in die Kita beschreibt."
* KitaEintrittsalterCS#unter_2_jahre "< 2 Jahre"
* KitaEintrittsalterCS#2_jahre "2 Jahre"
* KitaEintrittsalterCS#3_jahre "3 Jahre"
* KitaEintrittsalterCS#4_jahre "4 Jahre"
* KitaEintrittsalterCS#5_jahre "5 Jahre"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(KitaEintrittsalterCS)
* ^expansion.contains[=].code = #unter_2_jahre
* ^expansion.contains[=].display = "< 2 Jahre"
* ^expansion.contains[+].system = Canonical(KitaEintrittsalterCS)
* ^expansion.contains[=].code = #2_jahre
* ^expansion.contains[=].display = "2 Jahre"
* ^expansion.contains[+].system = Canonical(KitaEintrittsalterCS)
* ^expansion.contains[=].code = #3_jahre
* ^expansion.contains[=].display = "3 Jahre"
* ^expansion.contains[+].system = Canonical(KitaEintrittsalterCS)
* ^expansion.contains[=].code = #4_jahre
* ^expansion.contains[=].display = "4 Jahre"
* ^expansion.contains[+].system = Canonical(KitaEintrittsalterCS)
* ^expansion.contains[=].code = #5_jahre
* ^expansion.contains[=].display = "5 Jahre"