CodeSystem: BefundBewertungBielefelderModellCS
Id: BefundBewertungBielefelderModellCS
Title: "BefundBewertungBielefelderModellCS"
* #A "Ein Befund, der eine weitere ärztliche Abklärung erfordert und dessen Abklärung durch die Schulärztin oder den Schularzt veranlasst wird"
* #B "Ein Befund, dessen Behandlung ausreichend durchgeführt wird oder bereits eingeleitet ist"
* #D "Ein Befund, der eine erhebliche und nicht nur vorübergehende Leistungsbeeinträchtigung für das Kind im Sinne des § 2 Absatz (1)Satz 1 SGB IX bedeutet"
* #X "Ein Befund, der bisher unbehandelt ist und derzeit keine weitere Abklärung durch eine Ärztin oder einen Arzt erfordert oder ein Befund, der entsprechend einer bereits durchgeführten ärztlichen Diagnostik nicht behandlungsbedürftig ist"
* #K "Das Kind wurde durch die Schulärztin oder den Schularzt untersucht, und es liegt kein auffälliger Befund vor"
* #0 "Die Untersuchung des Kindes konnte nicht oder nicht wie vorgesehen durchgeführt werden. Hierzu zählt nicht eine Untersuchung mit unklarem/uneindeutigem Ergebnis, hier ist eine weitere Abklärung erforderlich"

ValueSet: BefundBewertungBielefelderModellVS
Id: BefundBewertungBielefelderModellVS
Title: "BefundBewertungBielefelderModellVS"
* include codes from system BefundBewertungBielefelderModellCS

ValueSet: DeutschUndAndereSpracheVS
Id: DeutschUndAndereSpracheVS
Title: "DeutschUndAndereSpracheVS"
* $bcp47#de "Deutsch"
* $sct#74964007 "Andere Sprache"

CodeSystem: DeutschkenntnisseCS
Id: DeutschkenntnisseCS
Title: "DeutschkenntnisseCS"
* #1 "Das Kind spricht kein Deutsch"
* #2 "Das Kind spricht nur radebrechend Deutsch"
* #3 "Das Kind spricht flüssig Deutsch, jedoch mit erheblichen Fehlern"
* #4 "Das Kind spricht flüssig Deutsch, jedoch mit leichten Fehlern"
* #5 "Das Kind spricht fehlerfrei und flüssig Deutsch. Ein Akzent wird nicht berücksichtigt"

ValueSet: DeutschkenntnisseVS
Id: DeutschkenntnisseVS
Title: "DeutschkenntnisseVS"
* include codes from system DeutschkenntnisseCS