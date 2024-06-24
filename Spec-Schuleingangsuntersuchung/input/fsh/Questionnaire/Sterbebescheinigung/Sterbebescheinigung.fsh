Instance: Sterbebescheinigung
InstanceOf: Questionnaire
Usage: #example
Title: "Sterbebescheinigung"
Description: "Sterbebescheinigung"
* contained[+] = JaNeinKeineAngabeVS
* id = "Sterbebescheinigung"
* url = "https://www.oegd.de/fhir/Questionnaire/Sterbebescheinigung"
* title = "elektronische Sterbebescheinigung (eSB) Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft

* insert 1-esb-ausstellender_arzt_einrichtung
* insert 2-esb-autopsie_bestattung_melder_metadaten_obduktionsschein
* insert 3-esb-risiken