Instance: Untersuchungsbogen
InstanceOf: Questionnaire
Usage: #example
Title: "Untersuchungsbogen"
Description: "Untersuchungsbogen"
* contained[+] = SEU-AF-RegionArtVS
* contained[+] = SEU-AF-SpracheStudieVS
* contained[+] = SEU-AF-MeldungJugendamtVS
* contained[+] = SEU-AF-DurchfuehrungSaeuVS
* contained[+] = SEU-AF-VorstellungSchularztVS
* contained[+] = SEU-AF-WiedervorlageGrundVS
* contained[+] = SEU-AF-BesonderheitenVS
* contained[+] = SEU-AF-UntersuchungsstatusVS
* contained[+] = SEU-AF-MasernimpfungNichtErforderlichGrundVS
* contained[+] = SEU-AF-ImpfungAntwortVS
* contained[+] = SEU-AF-ImpfungAntwortOhneAuffrischungVS
* contained[+] = GenderDEVS
* contained[+] = SEU-AF-AnamneseBesonderheitenVS
* contained[+] = SEU-AF-AntwortGeschwisterVS
* contained[+] = SEU-AF-AntwortKindergartenBesuchVS
* contained[+] = SEU-AF-KindergartenArtVS
* contained[+] = SEU-AF-KontaktDeutscheSpracheVS
* contained[+] = SEU-AF-GesprocheneSpracheVS
* contained[+] = SEU-AF-HaendigkeitVS
* contained[+] = SEU-AF-SprachtherapieVS
* contained[+] = SEU-AF-TeilnahmeVorkursDeutschVS
* contained[+] = SEU-AF-JaNeinKeineAngabeVS
* contained[+] = SEU-AF-AntwortAugenarztVS
* contained[+] = SEU-AF-AntwortenHoerstoerungVS
* contained[+] = SEU-AF-AntwortErwachseneVS
* contained[+] = SEU-AF-GeburtslandVS
* contained[+] = SEU-AF-StaatsangehoerigkeitVS
* contained[+] = SEU-AF-SchulabschlussVS
* contained[+] = SEU-AF-ErwerbstaetigkeitVS
* contained[+] = SEU-AF-AuswaehlbareElternspracheVS
* contained[+] = SEU-AF-UntersuchungsstatusFdSScreeningvS
* contained[+] = SEU-AF-AntwortAuffaelligkeitVS
* contained[+] = SEU-AF-AntwortAuffaelligkeitBeurteilbarVS
* contained[+] = SEU-AF-AntwortenSAeUntersuchungVS
* contained[+] = SEU-AF-UntersuchungsergebnisseSAeUVS
* contained[+] = SEU-AF-VergleichSAeUntersuchungVS
* contained[+] = SEU-AF-AntwortTeilnahmeVS
* id = "SEU-Untersuchungsbogen"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Untersuchungsbogen"
* title = "SEU Untersuchungsbogen Maximaldatensatz"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft

* insert 1-af-stammdaten
* insert 2-af-untersuchungsverlauf
* insert 3-af-impfungen
* insert 4-af-gesfrueherkennung
* insert 5-af-anamnese
* insert 6-af-elternfragebogen
* insert 7-af-fdsscreening
* insert 8-af-schulaerztlicheuntersuchung
* insert 9-af-schulaerztlicheuntersuchung2