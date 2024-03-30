Instance: Arztfragebogen
InstanceOf: Questionnaire
Usage: #example
Title: "Arztfragebogen"
Description: "Arztfragebogen"
//* contained[+] = NeinAbgeschlossenLaeuftGeplantVS
* id = "SEU-Arztfragebogen"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Arztfragebogen"
* title = "SEU Arztfragebogen Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft

* insert 1-af-stammdaten
* insert 2-af-untersuchungsverlauf