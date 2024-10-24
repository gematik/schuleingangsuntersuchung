CodeSystem: BefundBewertungBielefelderModellCS
Id: BefundBewertungBielefelderModellCS
Title: "BefundBewertungBielefelderModellCS"
Description: ""
* #A "Ein Befund, der eine weitere ärztliche Abklärung erfordert und dessen Abklärung durch die Schulärztin oder den Schularzt veranlasst wird"
* #B "Ein Befund, dessen Behandlung ausreichend durchgeführt wird oder bereits eingeleitet ist"
* #D "Ein Befund, der eine erhebliche und nicht nur vorübergehende Leistungsbeeinträchtigung für das Kind im Sinne des § 2 Absatz (1)Satz 1 SGB IX bedeutet"
* #X "Ein Befund, der bisher unbehandelt ist und derzeit keine weitere Abklärung durch eine Ärztin oder einen Arzt erfordert oder ein Befund, der entsprechend einer bereits durchgeführten ärztlichen Diagnostik nicht behandlungsbedürftig ist"
* #K "Das Kind wurde durch die Schulärztin oder den Schularzt untersucht, und es liegt kein auffälliger Befund vor"
* #0 "Die Untersuchung des Kindes konnte nicht oder nicht wie vorgesehen durchgeführt werden. Hierzu zählt nicht eine Untersuchung mit unklarem/uneindeutigem Ergebnis, hier ist eine weitere Abklärung erforderlich"

ValueSet: BefundBewertungBielefelderModellVS
Id: BefundBewertungBielefelderModellVS
Title: "BefundBewertungBielefelderModellVS"
Description: ""
* include codes from system BefundBewertungBielefelderModellCS
* ^expansion.timestamp = "2024-04-12T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "Ein Befund, der eine weitere ärztliche Abklärung erfordert und dessen Abklärung durch die Schulärztin oder den Schularzt veranlasst wird"
* ^expansion.contains[+].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #B
* ^expansion.contains[=].display = "Ein Befund, dessen Behandlung ausreichend durchgeführt wird oder bereits eingeleitet ist"
* ^expansion.contains[+].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "Ein Befund, der eine erhebliche und nicht nur vorübergehende Leistungsbeeinträchtigung für das Kind im Sinne des § 2 Absatz (1)Satz 1 SGB IX bedeutet"
* ^expansion.contains[+].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #X
* ^expansion.contains[=].display = "Ein Befund, der bisher unbehandelt ist und derzeit keine weitere Abklärung durch eine Ärztin oder einen Arzt erfordert oder ein Befund, der entsprechend einer bereits durchgeführten ärztlichen Diagnostik nicht behandlungsbedürftig ist"
* ^expansion.contains[+].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Das Kind wurde durch die Schulärztin oder den Schularzt untersucht, und es liegt kein auffälliger Befund vor"
* ^expansion.contains[+].system = Canonical(BefundBewertungBielefelderModellCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "Die Untersuchung des Kindes konnte nicht oder nicht wie vorgesehen durchgeführt werden. Hierzu zählt nicht eine Untersuchung mit unklarem/uneindeutigem Ergebnis, hier ist eine weitere Abklärung erforderlich"

ValueSet: DeutschUndAndereSpracheVS
Id: DeutschUndAndereSpracheVS
Title: "DeutschUndAndereSpracheVS"
Description: ""
* ISO6392_LanguageCS#ger "Deutsch"
* $sct#74964007 "Andere Sprache"
* ^expansion.timestamp = "2024-09-30T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(ISO6392_LanguageCS)
* ^expansion.contains[=].code = #de
* ^expansion.contains[=].display = "Deutsch"
* ^expansion.contains[+].system = $sct
* ^expansion.contains[=].code = #74964007
* ^expansion.contains[=].display = "Andere Sprache"

CodeSystem: DeutschkenntnisseCS
Id: DeutschkenntnisseCS
Title: "DeutschkenntnisseCS"
Description: ""
* #1 "Das Kind spricht kein Deutsch"
* #2 "Das Kind spricht nur radebrechend Deutsch"
* #3 "Das Kind spricht flüssig Deutsch, jedoch mit erheblichen Fehlern"
* #4 "Das Kind spricht flüssig Deutsch, jedoch mit leichten Fehlern"
* #5 "Das Kind spricht fehlerfrei und flüssig Deutsch. Ein Akzent wird nicht berücksichtigt"

ValueSet: DeutschkenntnisseVS
Id: DeutschkenntnisseVS
Title: "DeutschkenntnisseVS"
Description: ""
* include codes from system DeutschkenntnisseCS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(DeutschkenntnisseCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Das Kind spricht kein Deutsch"
* ^expansion.contains[+].system = Canonical(DeutschkenntnisseCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Das Kind spricht nur radebrechend Deutsch"
* ^expansion.contains[+].system = Canonical(DeutschkenntnisseCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Das Kind spricht flüssig Deutsch, jedoch mit erheblichen Fehlern"
* ^expansion.contains[+].system = Canonical(DeutschkenntnisseCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Das Kind spricht flüssig Deutsch, jedoch mit leichten Fehlern"
* ^expansion.contains[+].system = Canonical(DeutschkenntnisseCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Das Kind spricht fehlerfrei und flüssig Deutsch. Ein Akzent wird nicht berücksichtigt"




