Instance: Arztfragebogen
InstanceOf: Questionnaire
Usage: #example
Title: "Arztfragebogen"
Description: "Arztfragebogen"
* contained[+] = RegionVS
* contained[+] = SpracheStudieVS
* contained[+] = MeldungJugendamtVS
* contained[+] = DurchfuehrungSaeuVS
* contained[+] = VorstellungSchularztVS
* contained[+] = WiedervorlageGrundVS
* contained[+] = BesonderheitenVS
* contained[+] = UntersuchungsstatusVS
* contained[+] = MasernimpfungNichtErforderlichGrundVS
* contained[+] = ImpfungAntwortVS
* contained[+] = ImpfungAntwortOhneAuffrischungVS
* contained[+] = GenderDEVS
* id = "SEU-Arztfragebogen"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Arztfragebogen"
* title = "SEU Arztfragebogen Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft

* insert 1-af-stammdaten
* insert 2-af-untersuchungsverlauf
* insert 3-af-impfungen
* insert 4-af-gesfrueherkennung