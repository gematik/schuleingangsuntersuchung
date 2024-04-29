Instance: SozialpaedagogischesEntwicklungsscreening
InstanceOf: Questionnaire
Usage: #example
Title: "Sozialpädagogisches Entwicklungsscreening Fragebogen"
Description: "Sozialpädagogisches Entwicklungsscreening Fragebogen"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * type = #integer
  * linkId = "1"
  * text = "Zählen"
* item[+]
  * type = #integer
  * linkId = "2"
  * text = "Mengenvorwissen"
* item[+]
  * type = #integer
  * linkId = "3"
  * text = "Selektive Aufmerksamkeit"
* item[+]
  * type = #integer
  * linkId = "4"
  * text = "Visuomotorik"
* item[+]
  * type = #integer
  * linkId = "5"
  * text = "Visuelles Wahrnehmen und Schlussfolgern"
* item[+]
  * type = #integer
  * linkId = "6"
  * text = "Körperkoordination"
* item[+]
  * type = #choice
  * linkId = "7"
  * text = "Erstsprache"
  * answerValueSet = Canonical(DeutschUndAndereSpracheVS)
* item[+]
  * type = #choice
  * linkId = "8"
  * text = "Deutschkenntnisse"
  * answerValueSet = Canonical(DeutschkenntnisseVS)
* item[+]
  * type = #integer
  * linkId = "9"
  * text = "Präpositionen"
* item[+]
  * type = #integer
  * linkId = "10"
  * text = "Pluralbildung"
* item[+]
  * type = #integer
  * linkId = "11"
  * text = "Pseudowörter"
* item[+]
  * type = #integer
  * linkId = "12"
  * text = "Artikulation"
* item[+]
  * type = #choice
  * linkId = "13"
  * text = "Befund: Zahlen- und Mengenvorwissen"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "14"
  * text = "Befund: Visuomotorik"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "15"
  * text = "Befund: Selektive Aufmerksamkeit"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "16"
  * text = "Befund: Visuelles Wahrnehmen und Schlussfolgern"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "17"
  * text = "Befund: Visuelles Wahrnehmen und Schlussfolgern"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "18"
  * text = "Befund: Sprache/Sprechen"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)
* item[+]
  * type = #choice
  * linkId = "19"
  * text = "Befund: Körperkoordination"
  * answerValueSet = Canonical(BefundBewertungBielefelderModellVS)