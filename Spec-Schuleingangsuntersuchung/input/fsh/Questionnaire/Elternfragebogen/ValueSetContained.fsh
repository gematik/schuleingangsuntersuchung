ValueSet: SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
Id: SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
Title: "SEU-EF-NeinAbgeschlossenLaeuftGeplantVS"
Description: "SEU-EF-NeinAbgeschlossenLaeuftGeplantVS"
* include codes from system SEU-EF-NeinAbgeschlossenLaeuftGeplantCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantCS)
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantCS)
* ^expansion.contains[=].code = #abgeschlossen
* ^expansion.contains[=].display = "abgeschlossen"
* ^expansion.contains[+].system = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantCS)
* ^expansion.contains[=].code = #läuft
* ^expansion.contains[=].display = "läuft z.Zt. Noch"
* ^expansion.contains[+].system = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantCS)
* ^expansion.contains[=].code = #geplant
* ^expansion.contains[=].display = "geplant"

ValueSet: JaNeinAngemeldetVS
Id: JaNeinAngemeldetVS
Title: "JaNeinAngemeldetVS"
Description: "JaNeinAngemeldetVS"
* include codes from system JaNeinAngemeldetCS
* ^expansion.timestamp = "2024-04-04T10:25:43+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/JaNeinAngemeldetCS"
* ^expansion.contains[=].code = #ja
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/JaNeinAngemeldetCS"
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/JaNeinAngemeldetCS"
* ^expansion.contains[=].code = #ist-angemeldet
* ^expansion.contains[=].display = "Ist angemeldet"

ValueSet: GeplantFindetStattAbgeschlossenVS
Id: geplant-findet-statt-abgeschlossen-vs
Title: "Geplant, Findet Statt, Abgeschlossen Value Set"
Description: "GeplantFindetStattAbgeschlossenVS"
* include codes from system GeplantFindetStattAbgeschlossenCS
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(GeplantFindetStattAbgeschlossenCS)
* ^expansion.contains[=].code = #geplant
* ^expansion.contains[=].display = "Geplant"
* ^expansion.contains[+].system = Canonical(GeplantFindetStattAbgeschlossenCS)
* ^expansion.contains[=].code = #findet_statt
* ^expansion.contains[=].display = "Findet statt"
* ^expansion.contains[+].system = Canonical(GeplantFindetStattAbgeschlossenCS)
* ^expansion.contains[=].code = #abgeschlossen
* ^expansion.contains[=].display = "Abgeschlossen"

ValueSet: HaeufigkeitAuswahlVS
Id: haeufigkeit-auswahl-vs
Title: "Häufigkeit Auswahl ValueSet"
Description: "HaeufigkeitAuswahlVS"
* include codes from system HaeufigkeitAuswahlCS
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(HaeufigkeitAuswahlCS)
* ^expansion.contains[=].code = #gelegentlich
* ^expansion.contains[=].display = "Gelegentlich"
* ^expansion.contains[+].system = Canonical(HaeufigkeitAuswahlCS)
* ^expansion.contains[=].code = #häufig
* ^expansion.contains[=].display = "Häufig"
* ^expansion.contains[+].system = Canonical(HaeufigkeitAuswahlCS)
* ^expansion.contains[=].code = #nie
* ^expansion.contains[=].display = "Nie"

ValueSet: VersorgungsartVS
Id: versorgungsart-vs
Title: "Versorgungsart ValueSet"
Description: "VersorgungsartVS"
* include codes from system VersorgungsartCS
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(VersorgungsartCS)
* ^expansion.contains[=].code = #ambulant
* ^expansion.contains[=].display = "Ambulant"
* ^expansion.contains[+].system = Canonical(VersorgungsartCS)
* ^expansion.contains[=].code = #krankenhaus
* ^expansion.contains[=].display = "Krankenhaus"


ValueSet: RechtsLinksHaenderVS
Id: RechtsLinksHaenderVS
Title: "RechtsLinksHaenderVS"
Description: "RechtsLinksHaenderVS"
* include codes from system RechtsLinksHaenderCS
* ^expansion.timestamp = "2024-04-04T10:35:15+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/RechtsLinksHaenderCS"
* ^expansion.contains[=].code = #rechtshänder
* ^expansion.contains[=].display = "Rechtshänder"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/RechtsLinksHaenderCS"
* ^expansion.contains[=].code = #linkshänder
* ^expansion.contains[=].display = "Linkshänder"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/RechtsLinksHaenderCS"
* ^expansion.contains[=].code = #beidhändig
* ^expansion.contains[=].display = "Beidhändig/Unentschieden"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/RechtsLinksHaenderCS"
* ^expansion.contains[=].code = #nicht_feststellbar
* ^expansion.contains[=].display = "Nicht feststellbar"

ValueSet: AuffaelligkeitVerhaltenVS
Id: AuffaelligkeitVerhaltenVS
Title: "AuffaelligkeitVerhaltenVS"
Description: "AuffaelligkeitVerhaltenVS"
* include codes from system AuffaelligkeitVerhaltenCS
* ^expansion.timestamp = "2024-04-04T10:40:04+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #konzentrationsstörung
* ^expansion.contains[=].display = "Konzentrationsstörung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #bettnässen
* ^expansion.contains[=].display = "Bettnässen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #einkoten
* ^expansion.contains[=].display = "Einkoten"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #ängstlichkeit
* ^expansion.contains[=].display = "Ängstlichkeit"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #aggressivität
* ^expansion.contains[=].display = "Aggressivität"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #schlafstörung
* ^expansion.contains[=].display = "Schlafstörung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #hyperaktivität
* ^expansion.contains[=].display = "Motorische Unruhe/Hyperaktivität"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #riskantes_handeln
* ^expansion.contains[=].display = "Riskantes Handeln"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #schlechter_appetit
* ^expansion.contains[=].display = "Schlechter Appetit"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #wenig_ausdauer_beim_spielen
* ^expansion.contains[=].display = "Wenig Ausdauer beim Spielen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #spät_gesprochen
* ^expansion.contains[=].display = "Spät gesprochen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #neigung_zum_erbrechen
* ^expansion.contains[=].display = "Neigung zum Erbrechen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #kann_nicht_zuhören
* ^expansion.contains[=].display = "Kann nicht zuhören"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #noch_sprachschwierigkeiten
* ^expansion.contains[=].display = "Noch Sprachschwierigkeiten"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #häufig_bauchschmerzen
* ^expansion.contains[=].display = "Häufig Bauchschmerzen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #regt_sich_schnell_auf
* ^expansion.contains[=].display = "Regt sich schnell auf"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #ungeschicklichkeit_beim_malen
* ^expansion.contains[=].display = "Ungeschicklichkeit beim Malen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #zerstört_viel_spielzeug
* ^expansion.contains[=].display = "Zerstört viel Spielzeug"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #benutzen_der_linken_hand
* ^expansion.contains[=].display = "Benutzen der linken Hand"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #nägel_knabbern
* ^expansion.contains[=].display = "Nägel knabbern"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #ist_schnell_entmutigt
* ^expansion.contains[=].display = "Ist schnell entmutigt"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #häufiges_hinfallen
* ^expansion.contains[=].display = "Häufiges Hinfallen"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #großer_bewegungsdrang
* ^expansion.contains[=].display = "Großer Bewegungsdrang"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #kann_sich_schlecht_an_regeln_halten
* ^expansion.contains[=].display = "Kann sich schlecht an Regeln halten"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/AuffaelligkeitVerhaltenCS"
* ^expansion.contains[=].code = #riskante_handlungen
* ^expansion.contains[=].display = "unüberlegte/riskante Handlungen"

ValueSet: LinksRechtsBeidseitsKeineAngabeVS
Id: LinksRechtsBeidseitsKeineAngabeVS
Title: "LinksRechtsBeidseitsKeineAngabeVS"
Description: "LinksRechtsBeidseitsKeineAngabeCS"
* include codes from system LinksRechtsBeidseitsKeineAngabeCS
* ^expansion.timestamp = "2024-04-04T10:44:31+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/LinksRechtsBeidseitsKeineAngabeCS"
* ^expansion.contains[=].code = #links
* ^expansion.contains[=].display = "Links"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LinksRechtsBeidseitsKeineAngabeCS"
* ^expansion.contains[=].code = #rechts
* ^expansion.contains[=].display = "Rechts"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LinksRechtsBeidseitsKeineAngabeCS"
* ^expansion.contains[=].code = #beidseits
* ^expansion.contains[=].display = "Beidseits"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LinksRechtsBeidseitsKeineAngabeCS"
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

ValueSet: StoffwechselstoerungVS
Id: StoffwechselstoerungVS
Title: "StoffwechselstoerungVS"
Description: "StoffwechselstoerungVS"
* include codes from system StoffwechselstoerungCS
* ^expansion.timestamp = "2024-04-04T10:51:23+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #mcad_mangel
* ^expansion.contains[=].display = "MCAD-Mangel"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #hypothyreose
* ^expansion.contains[=].display = "Hypothyreose"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #pku
* ^expansion.contains[=].display = "PKU"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #ags
* ^expansion.contains[=].display = "AGS"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #mukoviszidose
* ^expansion.contains[=].display = "Mukoviszidose"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #diab_mell_typ_i
* ^expansion.contains[=].display = "Diab. mell. Typ I"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/StoffwechselstoerungCS"
* ^expansion.contains[=].code = #diab_mell_typ_ii
* ^expansion.contains[=].display = "Diab. mell. Typ II"

ValueSet: PflegegradVS
Id: PflegegradVS
Title: "PflegegradVS"
Description: "PflegegradVS"
* include codes from system PflegegradCS
* ^expansion.timestamp = "2024-04-04T11:16:49+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/PflegegradCS"
* ^expansion.contains[=].code = #pflegegrad_1
* ^expansion.contains[=].display = "Pflegegrad 1"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/PflegegradCS"
* ^expansion.contains[=].code = #pflegegrad_2
* ^expansion.contains[=].display = "Pflegegrad 2"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/PflegegradCS"
* ^expansion.contains[=].code = #pflegegrad_3
* ^expansion.contains[=].display = "Pflegegrad 3"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/PflegegradCS"
* ^expansion.contains[=].code = #pflegegrad_4
* ^expansion.contains[=].display = "Pflegegrad 4"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/PflegegradCS"
* ^expansion.contains[=].code = #pflegegrad_5
* ^expansion.contains[=].display = "Pflegegrad 5"

ValueSet: UnfallOrtVS
Id: UnfallOrtVS
Title: "UnfallOrtVS"
Description: "UnfallOrtVS"
* include codes from system UnfallOrtCS
* ^expansion.timestamp = "2024-04-04T11:34:46+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallOrtCS"
* ^expansion.contains[=].code = #zu_hause
* ^expansion.contains[=].display = "Zu Hause"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallOrtCS"
* ^expansion.contains[=].code = #kita
* ^expansion.contains[=].display = "Kita"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallOrtCS"
* ^expansion.contains[=].code = #freizeit
* ^expansion.contains[=].display = "Freizeit"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallOrtCS"
* ^expansion.contains[=].code = #straßenverkehr
* ^expansion.contains[=].display = "Straßenverkehr"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallOrtCS"
* ^expansion.contains[=].code = #anderer_ort
* ^expansion.contains[=].display = "Anderer Ort"

ValueSet: UnfallArtVS
Id: UnfallArtVS
Title: "UnfallArtVS"
Description: "UnfallArtVS"
* include codes from system UnfallArtCS
* ^expansion.timestamp = "2024-04-04T11:38:03+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #gehirnerschütterung
* ^expansion.contains[=].display = "Gehirnerschütterung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #schwere_schnittverletzung
* ^expansion.contains[=].display = "Schwere Schnittverletzung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #vergiftung
* ^expansion.contains[=].display = "Vergiftung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #knochenbruch
* ^expansion.contains[=].display = "Knochenbruch"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #prellung
* ^expansion.contains[=].display = "Prellung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #verstauchung
* ^expansion.contains[=].display = "Verstauchung/Verrenkung/Ausrenkung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #offene_wunde
* ^expansion.contains[=].display = "Offene Wunde"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #verbrennung
* ^expansion.contains[=].display = "Verbrühung/Verbrennung/Verätzung"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/UnfallArtCS"
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"

ValueSet: SEU_EF_BildungsabschlussVS
Id: seu-ef-bildungsabschluss-vs
Title: "SEU_EF_Bildungsabschluss ValueSet"
Description: "ValueSet, das verschiedene Bildungsabschlüsse enthält."
* include codes from system SEU_EF_BildungsabschlussCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #kein_schulabschluss
* ^expansion.contains[=].display = "Kein Schulabschluss"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #hauptschulabschluss
* ^expansion.contains[=].display = "Hauptschulabschluss"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #mittlere_reife
* ^expansion.contains[=].display = "Mittlere Reife oder vergleichbar"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #abitur_fachhochschulreife
* ^expansion.contains[=].display = "Abitur/Fachhochschulreife oder vergleichbar"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #sonder_foerderschule
* ^expansion.contains[=].display = "Sonder-/Förderschule"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussCS)
* ^expansion.contains[=].code = #in_schulischer_ausbildung
* ^expansion.contains[=].display = "Derzeit noch in schulischer Ausbildung (Schüler*in)"

ValueSet: SEU_EF_BerufsbildungVS
Id: seu-ef-berufsbildung-vs
Title: "SEU_EF_Berufsbildung ValueSet"
Description: "ValueSet, das verschiedene Berufsbildungsabschlüsse enthält."
* include codes from system SEU_EF_BerufsbildungCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_BerufsbildungCS)
* ^expansion.contains[=].code = #kein_berufsabschluss
* ^expansion.contains[=].display = "Kein Berufsabschluss"
* ^expansion.contains[+].system = Canonical(SEU_EF_BerufsbildungCS)
* ^expansion.contains[=].code = #in_ausbildung_studium
* ^expansion.contains[=].display = "Derzeit noch in beruflicher Ausbildung"
* ^expansion.contains[+].system = Canonical(SEU_EF_BerufsbildungCS)
* ^expansion.contains[=].code = #berufliche_ausbildung_lehre
* ^expansion.contains[=].display = "Berufliche Ausbildung/Lehre oder vergleichbar"
* ^expansion.contains[+].system = Canonical(SEU_EF_BerufsbildungCS)
* ^expansion.contains[=].code = #fachhochschulabschluss
* ^expansion.contains[=].display = "Fach-/Hochschulabschluss oder vergleichbar"

ValueSet: SchulabschlussBerlinVS
Id: SchulabschlussBerlinVS
Title: "SEU_EF_Berufsbildung Berlin ValueSet"
Description: "ValueSet, das verschiedene Schulabschlüsse enthält."
* include codes from system SchulabschlussBerlinCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SchulabschlussBerlinCS)
* ^expansion.contains[=].code = #kein_hauptschulabschluss
* ^expansion.contains[=].display = "Kein Hauptschulabschluss"
* ^expansion.contains[+].system = Canonical(SchulabschlussBerlinCS)
* ^expansion.contains[=].code = #hauptschulabschluss_oder_weniger_als_10_klasse
* ^expansion.contains[=].display = "Hauptschluss oder weniger 10. Klasse"
* ^expansion.contains[+].system = Canonical(SchulabschlussBerlinCS)
* ^expansion.contains[=].code = #mittlere_reife_mittlerer_berufsabschluss_MSA_10_Klasse
* ^expansion.contains[=].display = "mittlere Reife/mittlere Berufsabschluss (MSA/10. Klasse)"
* ^expansion.contains[+].system = Canonical(SchulabschlussBerlinCS)
* ^expansion.contains[=].code = #abitur_fachabitur
* ^expansion.contains[=].display = "Abitur/Fachabitur"

ValueSet: FamilienrolleVS
Id: familienrolle-vs
Title: "Familienrolle ValueSet"
Description: "FamilienrolleVS"
* include codes from system FamilienrolleCS
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"
* ^expansion.contains[+].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #pflegemutter
* ^expansion.contains[=].display = "Pflegemutter"
* ^expansion.contains[+].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #pflegevater
* ^expansion.contains[=].display = "Pflegevater"
* ^expansion.contains[+].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #geschwister
* ^expansion.contains[=].display = "Geschwister"
* ^expansion.contains[+].system = Canonical(FamilienrolleCS)
* ^expansion.contains[=].code = #andere_person
* ^expansion.contains[=].display = "Andere Person"

ValueSet: UeberwiegendGesprocheneSpracheVS
Id: ueberwiegend-gesprochene-sprache-vs
Title: "ValueSet für überwiegend gesprochene Sprachen"
Description: "Dieses ValueSet beinhaltet eine Auswahl von Codes für die Klassifikation von Sprachkenntnissen, definiert im zugehörigen CodeSystem."
* include codes from system UeberwiegendGesprocheneSpracheCS
* ^expansion.timestamp = "2024-04-12T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(UeberwiegendGesprocheneSpracheCS)
* ^expansion.contains[0].code = #deutsch
* ^expansion.contains[0].display = "Deutsch"
* ^expansion.contains[1].system = Canonical(UeberwiegendGesprocheneSpracheCS)
* ^expansion.contains[1].code = #andere
* ^expansion.contains[1].display = "andere Sprache"
* ^expansion.contains[2].system = Canonical(UeberwiegendGesprocheneSpracheCS)
* ^expansion.contains[2].code = #deutsch_andere
* ^expansion.contains[2].display = "Deutsch + andere Sprache"

ValueSet: AllgemeineBeschwerdenVS
Id: allgemeine-beschwerden-vs
Title: "ValueSet für allgemeine Beschwerden"
Description: "Dieses ValueSet beinhaltet eine Auswahl von Codes für die Klassifikation von allgemeinen Beschwerden, definiert im zugehörigen CodeSystem."
* include codes from system AllgemeineBeschwerdenCS
* ^expansion.timestamp = "2024-04-12T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(AllgemeineBeschwerdenCS)
* ^expansion.contains[0].code = #kopfschmerzen
* ^expansion.contains[0].display = "Kopfschmerzen"
* ^expansion.contains[1].system = Canonical(AllgemeineBeschwerdenCS)
* ^expansion.contains[1].code = #bauchschmerzen
* ^expansion.contains[1].display = "Bauchschmerzen"
* ^expansion.contains[2].system = Canonical(AllgemeineBeschwerdenCS)
* ^expansion.contains[2].code = #muskel_gelenk_ruecken
* ^expansion.contains[2].display = "Muskel-, Gelenk- oder Rückenschmerzen"
* ^expansion.contains[3].system = Canonical(AllgemeineBeschwerdenCS)
* ^expansion.contains[3].code = #schlafstoerungen
* ^expansion.contains[3].display = "Schlafstörungen"
* ^expansion.contains[4].system = Canonical(AllgemeineBeschwerdenCS)
* ^expansion.contains[4].code = #sonstige
* ^expansion.contains[4].display = "Sonstige Beschwerden"

ValueSet: DeuevAnlage8LaenderkennzeichenVS
Id: DeuevAnlage8LaenderkennzeichenVS
Title: "DeuevAnlage8LaenderkennzeichenVS"
Description: "DeuevAnlage8LaenderkennzeichenVS"
* ^expansion.timestamp = "2024-04-04T09:11:28+00:00"
* ^expansion.contains[0].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AFG
* ^expansion.contains[=].display = "Afghanistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ET
* ^expansion.contains[=].display = "Ägypten"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AX
* ^expansion.contains[=].display = "Åland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AL
* ^expansion.contains[=].display = "Albanien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #DZ
* ^expansion.contains[=].display = "Algerien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AJ
* ^expansion.contains[=].display = "Amerik.-Jungferninseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AS
* ^expansion.contains[=].display = "Amerikanisch-Samoa"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AND
* ^expansion.contains[=].display = "Andorra"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AGO
* ^expansion.contains[=].display = "Angola"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ANG
* ^expansion.contains[=].display = "Anguilla"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ANT
* ^expansion.contains[=].display = "Antigua und Barbuda"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AQU
* ^expansion.contains[=].display = "Äquatorialguinea"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RA
* ^expansion.contains[=].display = "Argentinien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AQ
* ^expansion.contains[=].display = "Argentinische Antarktis"
* ^expansion.contains[=].designation[0].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Australisches Antarktis-Territorium"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Britisches Antarktis-Territorium"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Chilenische Antarktis"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Norwegisches Antarktis-Territorium"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ARM
* ^expansion.contains[=].display = "Armenien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AW
* ^expansion.contains[=].display = "Aruba"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HEL
* ^expansion.contains[=].display = "Ascension"
* ^expansion.contains[=].designation[0].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "St. Helena, Ascension und Tristan da Cunha"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "St. Helena"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Tristan da Cunha"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ASE
* ^expansion.contains[=].display = "Aserbaidschan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AU
* ^expansion.contains[=].display = "Ashmore- und Cartierinseln"
* ^expansion.contains[=].designation.use = $sct#900000000000013009
* ^expansion.contains[=].designation.value = "Korallenmeerinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ETH
* ^expansion.contains[=].display = "Äthiopien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #AUS
* ^expansion.contains[=].display = "Australien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BS
* ^expansion.contains[=].display = "Bahamas"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BRN
* ^expansion.contains[=].display = "Bahrain"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BD
* ^expansion.contains[=].display = "Bangladesch"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BDS
* ^expansion.contains[=].display = "Barbados"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BY
* ^expansion.contains[=].display = "Belarus"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #B
* ^expansion.contains[=].display = "Belgien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BH
* ^expansion.contains[=].display = "Belize"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #DY
* ^expansion.contains[=].display = "Benin"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BER
* ^expansion.contains[=].display = "Bermuda"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BHT
* ^expansion.contains[=].display = "Bhutan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BOL
* ^expansion.contains[=].display = "Bolivien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BQ
* ^expansion.contains[=].display = "Bonaire, Saba, St. Eustatius"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BIH
* ^expansion.contains[=].display = "Bosnien und Herzegowina"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RB
* ^expansion.contains[=].display = "Botsuana"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BV
* ^expansion.contains[=].display = "Bouvetinsel"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BR
* ^expansion.contains[=].display = "Brasilien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BJ
* ^expansion.contains[=].display = "Britische Jungferninseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IO
* ^expansion.contains[=].display = "Britisches Territorium im Indischen Ozean"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BRU
* ^expansion.contains[=].display = "Brunei Darussalam"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BG
* ^expansion.contains[=].display = "Bulgarien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HV
* ^expansion.contains[=].display = "Burkina Faso"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RU
* ^expansion.contains[=].display = "Burundi"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RCH
* ^expansion.contains[=].display = "Chile"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CP
* ^expansion.contains[=].display = "Clipperton"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #COI
* ^expansion.contains[=].display = "Cookinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CR
* ^expansion.contains[=].display = "Costa Rica"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CI
* ^expansion.contains[=].display = "Cote d`Ivoire"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CW
* ^expansion.contains[=].display = "Curaçao"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #DK
* ^expansion.contains[=].display = "Dänemark"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "Deutschland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WD
* ^expansion.contains[=].display = "Dominica"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #DOM
* ^expansion.contains[=].display = "Dominikanische Republik"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #DSC
* ^expansion.contains[=].display = "Dschibuti"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EC
* ^expansion.contains[=].display = "Ecuador"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ES
* ^expansion.contains[=].display = "El Salvador"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ERI
* ^expansion.contains[=].display = "Eritrea"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EST
* ^expansion.contains[=].display = "Estland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SWZ
* ^expansion.contains[=].display = "Eswatini"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FAL
* ^expansion.contains[=].display = "Falklandinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FR
* ^expansion.contains[=].display = "Färöer"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FJI
* ^expansion.contains[=].display = "Fidschi"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FIN
* ^expansion.contains[=].display = "Finnland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #F
* ^expansion.contains[=].display = "Frankreich"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TF
* ^expansion.contains[=].display = "Französische Süd- und Antarktisgebiete"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FG
* ^expansion.contains[=].display = "Franz.-Guayana"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FP
* ^expansion.contains[=].display = "Franz.-Polynesien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GAB
* ^expansion.contains[=].display = "Gabun"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WAG
* ^expansion.contains[=].display = "Gambia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GEO
* ^expansion.contains[=].display = "Georgien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GH
* ^expansion.contains[=].display = "Ghana"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GIB
* ^expansion.contains[=].display = "Gibraltar"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WG
* ^expansion.contains[=].display = "Grenada"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GR
* ^expansion.contains[=].display = "Griechenland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GRO
* ^expansion.contains[=].display = "Grönland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GUA
* ^expansion.contains[=].display = "Guadeloupe"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GUM
* ^expansion.contains[=].display = "Guam"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GCA
* ^expansion.contains[=].display = "Guatemala"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GG
* ^expansion.contains[=].display = "Guernsey"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RG
* ^expansion.contains[=].display = "Guinea"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GUB
* ^expansion.contains[=].display = "Guinea-Bissau"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GUY
* ^expansion.contains[=].display = "Guyana"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RH
* ^expansion.contains[=].display = "Haiti"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HM
* ^expansion.contains[=].display = "Heard und McDonaldinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HCA
* ^expansion.contains[=].display = "Honduras"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HKG
* ^expansion.contains[=].display = "Hongkong"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IND
* ^expansion.contains[=].display = "Indien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RI
* ^expansion.contains[=].display = "Indonesien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAN
* ^expansion.contains[=].display = "Insel Man"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IRQ
* ^expansion.contains[=].display = "Irak"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IR
* ^expansion.contains[=].display = "Iran"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IRL
* ^expansion.contains[=].display = "Irland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IS
* ^expansion.contains[=].display = "Island"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #IL
* ^expansion.contains[=].display = "Israel"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #I
* ^expansion.contains[=].display = "Italien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #JA
* ^expansion.contains[=].display = "Jamaika"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #J
* ^expansion.contains[=].display = "Japan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #YEM
* ^expansion.contains[=].display = "Jemen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #JE
* ^expansion.contains[=].display = "Jersey"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #JOR
* ^expansion.contains[=].display = "Jordanien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #YU
* ^expansion.contains[=].display = "Jugoslawien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KAI
* ^expansion.contains[=].display = "Kaimaninseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Kambodscha"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CAM
* ^expansion.contains[=].display = "Kamerun"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CDN
* ^expansion.contains[=].display = "Kanada"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KAN
* ^expansion.contains[=].display = "Kanalinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CV
* ^expansion.contains[=].display = "Cabo Verde"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KAS
* ^expansion.contains[=].display = "Kasachstan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #QAT
* ^expansion.contains[=].display = "Katar"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EAK
* ^expansion.contains[=].display = "Kenia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KIS
* ^expansion.contains[=].display = "Kirgisistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KIB
* ^expansion.contains[=].display = "Kiribati"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CC
* ^expansion.contains[=].display = "Kokosinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CO
* ^expansion.contains[=].display = "Kolumbien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KOM
* ^expansion.contains[=].display = "Komoren"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RCB
* ^expansion.contains[=].display = "Kongo(-Brazzaville), Republik"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ZRE
* ^expansion.contains[=].display = "Kongo, Demokratische Republik (ehem. Zaire)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KOR
* ^expansion.contains[=].display = "Korea, Demokratische Volksrepublik (Nordkorea)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ROK
* ^expansion.contains[=].display = "Korea, Republik (Südkorea)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KOS
* ^expansion.contains[=].display = "Kosovo"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #HR
* ^expansion.contains[=].display = "Kroatien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #C
* ^expansion.contains[=].display = "Kuba"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #KWT
* ^expansion.contains[=].display = "Kuwait"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LAO
* ^expansion.contains[=].display = "Laos"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LS
* ^expansion.contains[=].display = "Lesotho"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LV
* ^expansion.contains[=].display = "Lettland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RL
* ^expansion.contains[=].display = "Libanon"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LB
* ^expansion.contains[=].display = "Liberia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LAR
* ^expansion.contains[=].display = "Libyen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #FL
* ^expansion.contains[=].display = "Liechtenstein"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #LT
* ^expansion.contains[=].display = "Litauen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #L
* ^expansion.contains[=].display = "Luxemburg"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAC
* ^expansion.contains[=].display = "Macau"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RM
* ^expansion.contains[=].display = "Madagaskar"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MW
* ^expansion.contains[=].display = "Malawi"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAL
* ^expansion.contains[=].display = "Malaysia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BIO
* ^expansion.contains[=].display = "Malediven"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RMM
* ^expansion.contains[=].display = "Mali"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "Malta"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MA
* ^expansion.contains[=].display = "Marokko"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAR
* ^expansion.contains[=].display = "Marshallinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAT
* ^expansion.contains[=].display = "Martinique"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RIM
* ^expansion.contains[=].display = "Mauretanien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MS
* ^expansion.contains[=].display = "Mauritius"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAY
* ^expansion.contains[=].display = "Mayotte"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MEX
* ^expansion.contains[=].display = "Mexiko"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MIK
* ^expansion.contains[=].display = "Mikronesien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MD
* ^expansion.contains[=].display = "Moldau"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MC
* ^expansion.contains[=].display = "Monaco"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MON
* ^expansion.contains[=].display = "Mongolei"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MNE
* ^expansion.contains[=].display = "Montenegro"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MOT
* ^expansion.contains[=].display = "Montserrat"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MOZ
* ^expansion.contains[=].display = "Mosambik"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MYA
* ^expansion.contains[=].display = "Myanmar"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SWA
* ^expansion.contains[=].display = "Namibia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NAU
* ^expansion.contains[=].display = "Nauru"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #UM
* ^expansion.contains[=].display = "Navassa"
* ^expansion.contains[=].designation.use = $sct#900000000000013009
* ^expansion.contains[=].designation.value = "Kleinere Amerikanische Überseeinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NEP
* ^expansion.contains[=].display = "Nepal"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NKA
* ^expansion.contains[=].display = "Neukaledonien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NZ
* ^expansion.contains[=].display = "Neuseeland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NIC
* ^expansion.contains[=].display = "Nicaragua"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NL
* ^expansion.contains[=].display = "Niederlande"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NLA
* ^expansion.contains[=].display = "Niederländische Antillen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RN
* ^expansion.contains[=].display = "Niger"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WAN
* ^expansion.contains[=].display = "Nigeria"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NIU
* ^expansion.contains[=].display = "Niue"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MK
* ^expansion.contains[=].display = "Nordmazedonien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NMA
* ^expansion.contains[=].display = "Nördliche Marianen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #NF
* ^expansion.contains[=].display = "Norfolkinsel"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #N
* ^expansion.contains[=].display = "Norwegen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MAO
* ^expansion.contains[=].display = "Oman"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "Österreich"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PK
* ^expansion.contains[=].display = "Pakistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PSE
* ^expansion.contains[=].display = "Palästinensische Gebiete"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PAL
* ^expansion.contains[=].display = "Palau"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PA
* ^expansion.contains[=].display = "Panama"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PNG
* ^expansion.contains[=].display = "Papua-Neugiunea"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PY
* ^expansion.contains[=].display = "Paraguay"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PIN
* ^expansion.contains[=].display = "Pazifische Inseln (Marianen- und Karolineninseln)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PE
* ^expansion.contains[=].display = "Peru"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RP
* ^expansion.contains[=].display = "Philippinen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PIT
* ^expansion.contains[=].display = "Pitcairninseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PL
* ^expansion.contains[=].display = "Polen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #P
* ^expansion.contains[=].display = "Portugal"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PRI
* ^expansion.contains[=].display = "Puerto Rico"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #REU
* ^expansion.contains[=].display = "Réunion"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RWA
* ^expansion.contains[=].display = "Ruanda"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RO
* ^expansion.contains[=].display = "Rumänien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RUS
* ^expansion.contains[=].display = "Russische Föderation"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #PIE
* ^expansion.contains[=].display = "Saint Pierre und Miquelon"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SOL
* ^expansion.contains[=].display = "Salomonen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #Z
* ^expansion.contains[=].display = "Sambia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WS
* ^expansion.contains[=].display = "Samoa"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RSM
* ^expansion.contains[=].display = "San Marino"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #STP
* ^expansion.contains[=].display = "Sao Tomé und Principe"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SAU
* ^expansion.contains[=].display = "Saudi-Arabien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #S
* ^expansion.contains[=].display = "Schweden"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CH
* ^expansion.contains[=].display = "Schweiz"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SN
* ^expansion.contains[=].display = "Senegal"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SRB
* ^expansion.contains[=].display = "Serbien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SCG
* ^expansion.contains[=].display = "Serbien und Montenegro"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SY
* ^expansion.contains[=].display = "Seychellen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WAL
* ^expansion.contains[=].display = "Sierra Leone"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ZW
* ^expansion.contains[=].display = "Simbabwe"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SGP
* ^expansion.contains[=].display = "Singapur"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SK
* ^expansion.contains[=].display = "Slowakei"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SLO
* ^expansion.contains[=].display = "Slowenien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SP
* ^expansion.contains[=].display = "Somalia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #E
* ^expansion.contains[=].display = "Spanien"
* ^expansion.contains[=].designation[0].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Ceuta"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Melilla"
* ^expansion.contains[=].designation[+].use = $sct#900000000000013009
* ^expansion.contains[=].designation[=].value = "Spanische Hoheitsplätze in Nordafrika"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CL
* ^expansion.contains[=].display = "Sri Lanka"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #BL
* ^expansion.contains[=].display = "St. Barthélemy"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SCN
* ^expansion.contains[=].display = "St. Kitts und Nevis"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WL
* ^expansion.contains[=].display = "St. Lucia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #MF
* ^expansion.contains[=].display = "St. Martin (französischer Teil)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SX
* ^expansion.contains[=].display = "St. Martin (niederländischer Teil)"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WV
* ^expansion.contains[=].display = "St. Vincent und die Grenadinen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ZA
* ^expansion.contains[=].display = "Südafrika"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SUD
* ^expansion.contains[=].display = "Sudan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SDN
* ^expansion.contains[=].display = "Sudan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GS
* ^expansion.contains[=].display = "Südgeorgien und die südlichen Sandwichinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SSD
* ^expansion.contains[=].display = "Südsudan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SME
* ^expansion.contains[=].display = "Suriname"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SD
* ^expansion.contains[=].display = "Swasiland"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SJ
* ^expansion.contains[=].display = "Svalbard und Jan Mayen"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #SYR
* ^expansion.contains[=].display = "Syrien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TAD
* ^expansion.contains[=].display = "Tadschikistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TWN
* ^expansion.contains[=].display = "Taiwan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EAT
* ^expansion.contains[=].display = "Tansania"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #T
* ^expansion.contains[=].display = "Thailand"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TJ
* ^expansion.contains[=].display = "China"
* ^expansion.contains[=].designation.use = $sct#900000000000013009
* ^expansion.contains[=].designation.value = "Tibet"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #OTI
* ^expansion.contains[=].display = "Timor-Leste"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TG
* ^expansion.contains[=].display = "Togo"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TOK
* ^expansion.contains[=].display = "Tokelau"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TON
* ^expansion.contains[=].display = "Tonga"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TT
* ^expansion.contains[=].display = "Trinidad und Tobago"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CHD
* ^expansion.contains[=].display = "Tschad"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CZ
* ^expansion.contains[=].display = "Tschechien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TN
* ^expansion.contains[=].display = "Tunesien"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TR
* ^expansion.contains[=].display = "Türkei"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TUR
* ^expansion.contains[=].display = "Turkmenistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TUC
* ^expansion.contains[=].display = "Turks- und Caicosinseln"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #TUV
* ^expansion.contains[=].display = "Tuvalu"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EAU
* ^expansion.contains[=].display = "Uganda"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #UA
* ^expansion.contains[=].display = "Ukraine"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #H
* ^expansion.contains[=].display = "Ungarn"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #ROU
* ^expansion.contains[=].display = "Uruguay"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #USB
* ^expansion.contains[=].display = "Usbekistan"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #VAN
* ^expansion.contains[=].display = "Vanuatu"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #V
* ^expansion.contains[=].display = "Vatikanstadt"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #YV
* ^expansion.contains[=].display = "Venezuela"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #UAE
* ^expansion.contains[=].display = "Vereinigte Arabische Emirate"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #USA
* ^expansion.contains[=].display = "Vereinigte Staaten"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #GB
* ^expansion.contains[=].display = "Vereinigtes Königreich"
* ^expansion.contains[=].designation.use = $sct#900000000000013009
* ^expansion.contains[=].designation.value = "Akrotiri und Dhekelia"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #VN
* ^expansion.contains[=].display = "Vietnam"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #WF
* ^expansion.contains[=].display = "Wallis und Futuna"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CX
* ^expansion.contains[=].display = "Weihnachtsinsel"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #EH
* ^expansion.contains[=].display = "Westsahara"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #RCA
* ^expansion.contains[=].display = "Zentralafrikanische Republik"
* ^expansion.contains[+].system = "http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen"
* ^expansion.contains[=].version = "8.00"
* ^expansion.contains[=].code = #CY
* ^expansion.contains[=].display = "Zypern"
* include codes from system DeuevAnlage8Laenderkennzeichen

ValueSet: JaNeinWartelisteVS
Id: ja-nein-warteliste
Title: "JaNeinWartelisteVS"
Description: "JaNeinWartelisteVS"
* $sct#270459005 "Warteliste"
* ExpandedYesNoIndicator#Y "Ja"
* ExpandedYesNoIndicator#N "Nein"
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = $sct
* ^expansion.contains[=].code = #270459005
* ^expansion.contains[=].display = "Warteliste"
* ^expansion.contains[+].system = Canonical(ExpandedYesNoIndicator)
* ^expansion.contains[=].code = #Y
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(ExpandedYesNoIndicator)
* ^expansion.contains[=].code = #N
* ^expansion.contains[=].display = "Nein"

ValueSet: SEU_EF_MedienkonsumVS
Id: seu-ef-medienkonsum-vs
Title: "SEU_EF_Medienkonsum ValueSet"
Description: "ValueSet, das die Kategorien des Medienkonsums in Stunden enthält."
* include codes from system SEU_EF_MedienkonsumCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #gar_nicht
* ^expansion.contains[=].display = "Gar nicht"
* ^expansion.contains[+].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #bis_0_5
* ^expansion.contains[=].display = "Bis 0,5 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #von_0_5_bis_1
* ^expansion.contains[=].display = "0,5 bis 1 Stunde"
* ^expansion.contains[+].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #von_1_bis_2
* ^expansion.contains[=].display = "1 bis 2 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #von_2_bis_4
* ^expansion.contains[=].display = "2 bis 4 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_EF_MedienkonsumCS)
* ^expansion.contains[=].code = #mehr_als_4
* ^expansion.contains[=].display = "Mehr als 4 Stunden"

ValueSet: SEUEFMedienkonsumBerlinVS
Id: SEUEFMedienkonsumBerlinVS
Title: "SEU_EF_Medienkonsum Berlin ValueSet"
Description: "ValueSet, das die Kategorien des Medienkonsums in Stunden enthält."
* include codes from system SEUEFMedienkonsumBerlinCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #gar_nicht
* ^expansion.contains[=].display = "Gar nicht"
* ^expansion.contains[+].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #max_bis_halbe_stunde
* ^expansion.contains[=].display = "max. 1/2 Stunde"
* ^expansion.contains[+].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #max_bis_1
* ^expansion.contains[=].display = "max. 1 Stunde"
* ^expansion.contains[+].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #max_bis_2
* ^expansion.contains[=].display = "max. 2 Stunden"
* ^expansion.contains[+].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #max_bis_3
* ^expansion.contains[=].display = "max. 3 Stunden"
* ^expansion.contains[+].system = Canonical(SEUEFMedienkonsumBerlinCS)
* ^expansion.contains[=].code = #ueber_3
* ^expansion.contains[=].display = "über 3 Stunden"

CodeSystem: SEU_UB_FamilienstandCS
Id: seu-ub-familienstand-cs
Title: "SEU_UB_Familienstand CodeSystem"
Description: "CodeSystem für die Angabe der Familiensituation."
* #bei_beiden_leiblichen_Eltern "Bei beiden leiblichen Eltern"
* #bei_alleinerziehendem_Elternteil "Bei alleinerziehendem Elternteil"
* #bei_Elternteil_mit_Partner "Bei Elternteil mit Partner"
* #bei_Grosseltern_oder_anderen "Bei Großeltern, Pflegeeltern, Adoptiveltern oder anderen"
* #keine_Angaben "Keine Angaben"

CodeSystem: SEU_EF_OperationenCS
Id: seu-ef-operationen-cs
Title: "SEU_EF_Operationen CodeSystem"
Description: "CodeSystem für die Angabe von durchgeführten Operationen."
* #entfernung_der_rachenpolypen "Entfernung der Rachenpolypen"
* #paukendrainage "Paukendrainage"
* #mandeloperation "Mandeloperation"
* #blinddarmoperation "Blinddarmoperation"
* #leisten_nabelbruchoperation "Leisten-/Nabelbruchoperation"
* #augenoperation "Augenoperation"
* #sonstige_operation "Sonstige Operation"

ValueSet: SEU_EF_OperationenVS
Id: seu-ef-operationen-vs
Title: "SEU_EF_Operationen ValueSet"
Description: "ValueSet, das verschiedene durchgeführte Operationen enthält."
* include codes from system SEU_EF_OperationenCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #entfernung_der_rachenpolypen
* ^expansion.contains[=].display = "Entfernung der Rachenpolypen"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #paukendrainage
* ^expansion.contains[=].display = "Paukendrainage"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #mandeloperation
* ^expansion.contains[=].display = "Mandeloperation"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #blinddarmoperation
* ^expansion.contains[=].display = "Blinddarmoperation"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #leisten_nabelbruchoperation
* ^expansion.contains[=].display = "Leisten-/Nabelbruchoperation"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #augenoperation
* ^expansion.contains[=].display = "Augenoperation"
* ^expansion.contains[+].system = Canonical(SEU_EF_OperationenCS)
* ^expansion.contains[=].code = #sonstige_operation
* ^expansion.contains[=].display = "Sonstige Operation"

CodeSystem: SEU_EF_UnfallCS
Id: seu-ef-unfall-cs
Title: "SEU_EF_Unfall CodeSystem"
Description: "CodeSystem für die Angabe der Unfallumstände."
* #bei_freizeitaktivitaeten "Bei Freizeitaktivitäten"
* #beim_kindergartenbesuch "Beim Kindergartenbesuch"

ValueSet: SEU_EF_UnfallVS
Id: seu-ef-unfall-vs
Title: "SEU_EF_Unfall ValueSet"
Description: "ValueSet, das verschiedene Unfallumstände enthält."
* include codes from system SEU_EF_UnfallCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_UnfallCS)
* ^expansion.contains[=].code = #bei_freizeitaktivitaeten
* ^expansion.contains[=].display = "Bei Freizeitaktivitäten"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallCS)
* ^expansion.contains[=].code = #beim_kindergartenbesuch
* ^expansion.contains[=].display = "Beim Kindergartenbesuch"

CodeSystem: SEU_EF_AlterKindCS
Id: seu-ef-alter-kind-cs
Title: "SEU_EF_Alter Kind CodeSystem"
Description: "CodeSystem für die Angabe des Alters eines Kindes."
* #hier_geboren "Hier geboren"
* #unter_1_jahr "Unter 1 Jahr"
* #1_bis_1_5_jahre ">= 1 Jahr bis 1 ½ Jahre"
* #1_5_bis_2_jahre ">= 1 ½ Jahre bis 2 Jahre"
* #2_bis_2_5_jahre ">= 2 Jahre bis 2 ½ Jahre"
* #2_5_bis_3_jahre ">= 2 ½ Jahre bis 3 Jahre"
* #3_bis_3_5_jahre ">= 3 Jahre bis 3 ½ Jahre"
* #3_5_bis_4_jahre ">= 3 ½ Jahre bis 4 Jahre"
* #4_bis_4_5_jahre ">= 4 Jahre bis 4 ½ Jahre"
* #5_bis_5_5_jahre ">= 5 Jahre bis 5 ½ Jahre"
* #5_5_bis_6_jahre ">= 5 ½ Jahre bis 6 Jahre"
* #6_bis_6_5_jahre ">= 6 Jahre bis 6 ½ Jahre"
* #keine_angaben "Keine Angaben"

CodeSystem: BerufstaetigkeitElternBerlinCS
Id: BerufstaetigkeitElternBerlincs
Title: "Berufstätigkeit_Eltern_Berlin"
Description: "Berufstätigkeit__Eltern_Berlin"
* #nicht_erwerbstaetig_weil_finde_keine_Arbeit "nicht erwerbstätig, weil finde keine Arbeit"
* #nicht_erwerbstaetig_alle_anderen_Gruende "nicht erwerbstätig, weil alle anderen Gründe"
* #teilzeitbeschaeftigt "teilzeitbeschäftigt"
* #vollzeitbeschaeftigt "vollzeitbeschäftigt"

ValueSet: SEU_EF_AlterKindEinreiseVS
Id: seu-ef-alter-kind-einreise-vs
Title: "SEU_EF_Alter Kind Einreise ValueSet"
Description: "ValueSet, das das Alter eines Kindes bei Einreise enthält."
* include codes from system SEU_EF_AlterKindCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #hier_geboren
* ^expansion.contains[=].display = "Hier geboren"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #unter_1_jahr
* ^expansion.contains[=].display = "Unter 1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #1_bis_1_5_jahre
* ^expansion.contains[=].display = ">= 1 Jahr bis 1 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #1_5_bis_2_jahre
* ^expansion.contains[=].display = ">= 1 ½ Jahre bis 2 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #2_bis_2_5_jahre
* ^expansion.contains[=].display = ">= 2 Jahre bis 2 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #2_5_bis_3_jahre
* ^expansion.contains[=].display = ">= 2 ½ Jahre bis 3 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #3_bis_3_5_jahre
* ^expansion.contains[=].display = ">= 3 Jahre bis 3 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #3_5_bis_4_jahre
* ^expansion.contains[=].display = ">= 3 ½ Jahre bis 4 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #4_bis_4_5_jahre
* ^expansion.contains[=].display = ">= 4 Jahre bis 4 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #5_bis_5_5_jahre
* ^expansion.contains[=].display = ">= 5 Jahre bis 5 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #5_5_bis_6_jahre
* ^expansion.contains[=].display = ">= 5 ½ Jahre bis 6 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #6_bis_6_5_jahre
* ^expansion.contains[=].display = ">= 6 Jahre bis 6 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #keine_angaben
* ^expansion.contains[=].display = "Keine Angaben"

ValueSet: SEU_EF_AlterKindVS
Id: seu-ef-alter-kind-vs
Title: "SEU_EF_Alter Kind ValueSet"
Description: "ValueSet, das das Alter eines Kindes enthält."
* include codes from system SEU_EF_AlterKindCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #unter_1_jahr
* ^expansion.contains[=].display = "Unter 1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #1_bis_1_5_jahre
* ^expansion.contains[=].display = ">= 1 Jahr bis 1 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #1_5_bis_2_jahre
* ^expansion.contains[=].display = ">= 1 ½ Jahre bis 2 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #2_bis_2_5_jahre
* ^expansion.contains[=].display = ">= 2 Jahre bis 2 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #2_5_bis_3_jahre
* ^expansion.contains[=].display = ">= 2 ½ Jahre bis 3 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #3_bis_3_5_jahre
* ^expansion.contains[=].display = ">= 3 Jahre bis 3 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #3_5_bis_4_jahre
* ^expansion.contains[=].display = ">= 3 ½ Jahre bis 4 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #4_bis_4_5_jahre
* ^expansion.contains[=].display = ">= 4 Jahre bis 4 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #5_bis_5_5_jahre
* ^expansion.contains[=].display = ">= 5 Jahre bis 5 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #5_5_bis_6_jahre
* ^expansion.contains[=].display = ">= 5 ½ Jahre bis 6 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #6_bis_6_5_jahre
* ^expansion.contains[=].display = ">= 6 Jahre bis 6 ½ Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_AlterKindCS)
* ^expansion.contains[=].code = #keine_angaben
* ^expansion.contains[=].display = "Keine Angaben"

CodeSystem: SEU_EF_SchwangerschaftCS
Id: seu-ef-schwangerschaft-cs
Title: "SEU_EF_Schwangerschaft CodeSystem"
Description: "CodeSystem für die Angabe des Schwangerschaftsstatus."
* #normal "Normal"
* #komplikationen_risikoschwangerschaft "Komplikationen/Risikoschwangerschaft"
* #keine_angabe "Keine Angabe"

ValueSet: SEU_EF_SchwangerschaftVS
Id: seu-ef-schwangerschaft-vs
Title: "SEU_EF_Schwangerschaft ValueSet"
Description: "ValueSet, das den Schwangerschaftsstatus enthält."
* include codes from system SEU_EF_SchwangerschaftCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_SchwangerschaftCS)
* ^expansion.contains[=].code = #normal
* ^expansion.contains[=].display = "Normal"
* ^expansion.contains[+].system = Canonical(SEU_EF_SchwangerschaftCS)
* ^expansion.contains[=].code = #komplikationen_risikoschwangerschaft
* ^expansion.contains[=].display = "Komplikationen/Risikoschwangerschaft"
* ^expansion.contains[+].system = Canonical(SEU_EF_SchwangerschaftCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: SEU_EF_SpracheCS
Id: seu-ef-sprache-cs
Title: "SEU_EF_Sprache CodeSystem"
Description: "CodeSystem für die Angabe von Sprachproblemen."
* #aussprache "Aussprache"
* #stottern "Stottern"
* #aussprache_und_stottern "Aussprache und Stottern"

ValueSet: SEU_EF_SpracheVS
Id: seu-ef-sprache-vs
Title: "SEU_EF_Sprache ValueSet"
Description: "ValueSet, das verschiedene Sprachprobleme enthält."
* include codes from system SEU_EF_SpracheCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_SpracheCS)
* ^expansion.contains[=].code = #aussprache
* ^expansion.contains[=].display = "Aussprache"
* ^expansion.contains[+].system = Canonical(SEU_EF_SpracheCS)
* ^expansion.contains[=].code = #stottern
* ^expansion.contains[=].display = "Stottern"
* ^expansion.contains[+].system = Canonical(SEU_EF_SpracheCS)
* ^expansion.contains[=].code = #aussprache_und_stottern
* ^expansion.contains[=].display = "Aussprache und Stottern"

CodeSystem: SEU_EF_UnfallortCS
Id: seu-ef-unfallort-cs
Title: "SEU_EF_Unfallort CodeSystem"
Description: "CodeSystem für die Angabe des Unfallortes."
* #nein "Nein"
* #ja_zu_hause "Ja; zu Hause"
* #freizeit_ausser_haus "Freizeit außer Haus"
* #gemeinschaftseinrichtung "Gemeinschaftseinrichtung"
* #wegeunfall "Wegeunfall"
* #keine_angabe "Keine Angabe"

ValueSet: SEU_EF_UnfallortVS
Id: seu-ef-unfallort-vs
Title: "SEU_EF_Unfallort ValueSet"
Description: "ValueSet, das die verschiedenen Unfallorte enthält."
* include codes from system SEU_EF_UnfallortCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #ja_zu_hause
* ^expansion.contains[=].display = "Ja; zu Hause"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #freizeit_ausser_haus
* ^expansion.contains[=].display = "Freizeit außer Haus"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #gemeinschaftseinrichtung
* ^expansion.contains[=].display = "Gemeinschaftseinrichtung"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #wegeunfall
* ^expansion.contains[=].display = "Wegeunfall"
* ^expansion.contains[+].system = Canonical(SEU_EF_UnfallortCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: SEU_EF_BehandlungstypCS
Id: seu-ef-behandlungstyp-cs
Title: "SEU_EF_Behandlungstyp CodeSystem"
Description: "CodeSystem für die Angabe des Behandlungstyps."
* #aerztlich "Ärztlich"
* #zahnaerztlich "Zahnärztlich"
* #psychologisch_kinder_jugendpsychiatrisch "Psychologisch/Kinder- und Jugendpsychiatrisch"
* #sonstige_behandlung "Sonstige Behandlung"
* #keine_angabe "Keine Angabe"

ValueSet: SEU_EF_BehandlungstypVS
Id: seu-ef-behandlungstyp-vs
Title: "SEU_EF_Behandlungstyp ValueSet"
Description: "ValueSet, das verschiedene Behandlungstypen enthält."
* include codes from system SEU_EF_BehandlungstypCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_BehandlungstypCS)
* ^expansion.contains[=].code = #aerztlich
* ^expansion.contains[=].display = "Ärztlich"
* ^expansion.contains[+].system = Canonical(SEU_EF_BehandlungstypCS)
* ^expansion.contains[=].code = #zahnaerztlich
* ^expansion.contains[=].display = "Zahnärztlich"
* ^expansion.contains[+].system = Canonical(SEU_EF_BehandlungstypCS)
* ^expansion.contains[=].code = #psychologisch_kinder_jugendpsychiatrisch
* ^expansion.contains[=].display = "Psychologisch/Kinder- und Jugendpsychiatrisch"
* ^expansion.contains[+].system = Canonical(SEU_EF_BehandlungstypCS)
* ^expansion.contains[=].code = #sonstige_behandlung
* ^expansion.contains[=].display = "Sonstige Behandlung"
* ^expansion.contains[+].system = Canonical(SEU_EF_BehandlungstypCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: SEU_EF_ZeitraumCS
Id: seu-ef-zeitraum-cs
Title: "SEU_EF_Zeitraum CodeSystem"
Description: "CodeSystem für die Angabe eines Zeitraums."
* #nie "Nie"
* #2_3_jahre "2-3 Jahre"
* #bis_zu_1_jahr "Bis zu 1 Jahr"
* #3_jahre_und_laenger "3 Jahre und länger"
* #1_2_jahre "1-2 Jahre"

ValueSet: SEU_EF_DauerBWVS
Id: seu-ef-zeitraum-vs
Title: "SEU_EF_Zeitraum ValueSet"
Description: "ValueSet, das verschiedene Zeiträume enthält."
* include codes from system SEU_EF_ZeitraumCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_ZeitraumCS)
* ^expansion.contains[=].code = #nie
* ^expansion.contains[=].display = "Nie"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitraumCS)
* ^expansion.contains[=].code = #bis_zu_1_jahr
* ^expansion.contains[=].display = "Bis zu 1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitraumCS)
* ^expansion.contains[=].code = #1_2_jahre
* ^expansion.contains[=].display = "1-2 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitraumCS)
* ^expansion.contains[=].code = #2_3_jahre
* ^expansion.contains[=].display = "2-3 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitraumCS)
* ^expansion.contains[=].code = #3_jahre_und_laenger
* ^expansion.contains[=].display = "3 Jahre und länger"

CodeSystem: SEU_EF_DauerCS
Id: seu-ef-dauer-cs
Title: "SEU_EF_Dauer CodeSystem"
Description: "CodeSystem für die Angabe der Dauer."
* #gar_nicht "Gar nicht"
* #unter_1_jahr "Unter 1 Jahr"
* #ueber_1_jahr "Über 1 Jahr"
* #ueber_2_jahre "Über 2 Jahre"
* #ueber_3_jahre "Über 3 Jahre"
* #ueber_4_jahre "Über 4 Jahre"
* #keine_angabe "Keine Angabe"

ValueSet: SEU_EF_DauerBBVS
Id: seu-ef-dauer-vs
Title: "SEU_EF_Dauer ValueSet"
Description: "ValueSet, das verschiedene Dauern enthält."
* include codes from system SEU_EF_DauerCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #gar_nicht
* ^expansion.contains[=].display = "Gar nicht"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #unter_1_jahr
* ^expansion.contains[=].display = "Unter 1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #ueber_1_jahr
* ^expansion.contains[=].display = "Über 1 Jahr"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #ueber_2_jahre
* ^expansion.contains[=].display = "Über 2 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #ueber_3_jahre
* ^expansion.contains[=].display = "Über 3 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #ueber_4_jahre
* ^expansion.contains[=].display = "Über 4 Jahre"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: SEU_EF_HilfsmittelCS
Id: seu-ef-hilfsmittel-cs
Title: "SEU_EF_Hilfsmittel CodeSystem"
Description: "CodeSystem für die Angabe von Hilfsmitteln."
* #sehhilfe "Sehhilfe (z. B. Brille)"
* #hoerhilfe "Hörhilfe"
* #orthese "Orthese"
* #zahnersatz "Zahnersatz (Prothese, Platzhalter)"
* #anderes "Anderes"

ValueSet: SEU_EF_HilfsmittelVS
Id: seu-ef-hilfsmittel-vs
Title: "SEU_EF_Hilfsmittel ValueSet"
Description: "ValueSet, das verschiedene Hilfsmittel enthält."
* include codes from system SEU_EF_HilfsmittelCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_HilfsmittelCS)
* ^expansion.contains[=].code = #sehhilfe
* ^expansion.contains[=].display = "Sehhilfe (z. B. Brille)"
* ^expansion.contains[+].system = Canonical(SEU_EF_HilfsmittelCS)
* ^expansion.contains[=].code = #hoerhilfe
* ^expansion.contains[=].display = "Hörhilfe"
* ^expansion.contains[+].system = Canonical(SEU_EF_HilfsmittelCS)
* ^expansion.contains[=].code = #orthese
* ^expansion.contains[=].display = "Orthese"
* ^expansion.contains[+].system = Canonical(SEU_EF_HilfsmittelCS)
* ^expansion.contains[=].code = #zahnersatz
* ^expansion.contains[=].display = "Zahnersatz (Prothese, Platzhalter)"
* ^expansion.contains[+].system = Canonical(SEU_EF_HilfsmittelCS)
* ^expansion.contains[=].code = #anderes
* ^expansion.contains[=].display = "Anderes"

CodeSystem: SEU_EF_FachaerzteCS
Id: seu-ef-fachaerzte-cs
Title: "SEU_EF_Fachärzte CodeSystem"
Description: "CodeSystem für die Angabe von Fachärzten."
* #kinderarzt_hausarzt "Kinderarzt / Hausarzt"
* #zahnarzt "Zahnarzt"
* #kieferorthopaede "Kieferorthopäde"
* #augenarzt "Augenarzt"
* #hals_nasen_ohren_arzt "Hals-Nasen-Ohren-Arzt"
* #hautarzt "Hautarzt"
* #urologe "Urologe"
* #chirurg_orthopaede "Chirurg/Orthopäde"
* #kinder_jugendpsychiater "Kinder- und Jugendpsychiater"
* #andere "Andere"

ValueSet: SEU_EF_FachaerzteVS
Id: seu-ef-fachaerzte-vs
Title: "SEU_EF_Fachärzte ValueSet"
Description: "ValueSet, das verschiedene Fachärzte enthält."
* include codes from system SEU_EF_FachaerzteCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #kinderarzt_hausarzt
* ^expansion.contains[=].display = "Kinderarzt / Hausarzt"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #zahnarzt
* ^expansion.contains[=].display = "Zahnarzt"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #kieferorthopaede
* ^expansion.contains[=].display = "Kieferorthopäde"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #augenarzt
* ^expansion.contains[=].display = "Augenarzt"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #hals_nasen_ohren_arzt
* ^expansion.contains[=].display = "Hals-Nasen-Ohren-Arzt"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #hautarzt
* ^expansion.contains[=].display = "Hautarzt"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #urologe
* ^expansion.contains[=].display = "Urologe"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #chirurg_orthopaede
* ^expansion.contains[=].display = "Chirurg/Orthopäde"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #kinder_jugendpsychiater
* ^expansion.contains[=].display = "Kinder- und Jugendpsychiater"
* ^expansion.contains[+].system = Canonical(SEU_EF_FachaerzteCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"

CodeSystem: SEU_EF_ZeitdauerCS
Id: seu-ef-zeitdauer-cs
Title: "SEU_EF_Zeitdauer CodeSystem"
Description: "CodeSystem für die Angabe von Zeitdauern."
* #gar_nicht "Gar nicht"
* #weniger_als_30_minuten "Weniger als 30 Minuten"
* #30_minuten_bis_1_stunde "30 Minuten bis 1 Stunde"
* #1_bis_2_stunden "1 bis 2 Stunden"
* #2_bis_3_stunden "2 bis 3 Stunden"
* #3_stunden_oder_mehr "3 Stunden oder mehr"

ValueSet: SEU_EF_ZeitdauerVS
Id: seu-ef-zeitdauer-vs
Title: "SEU_EF_Zeitdauer ValueSet"
Description: "ValueSet, das verschiedene Zeitdauern enthält."
* include codes from system SEU_EF_ZeitdauerCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #gar_nicht
* ^expansion.contains[=].display = "Gar nicht"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #weniger_als_30_minuten
* ^expansion.contains[=].display = "Weniger als 30 Minuten"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #30_minuten_bis_1_stunde
* ^expansion.contains[=].display = "30 Minuten bis 1 Stunde"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #1_bis_2_stunden
* ^expansion.contains[=].display = "1 bis 2 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #2_bis_3_stunden
* ^expansion.contains[=].display = "2 bis 3 Stunden"
* ^expansion.contains[+].system = Canonical(SEU_EF_ZeitdauerCS)
* ^expansion.contains[=].code = #3_stunden_oder_mehr
* ^expansion.contains[=].display = "3 Stunden oder mehr"

CodeSystem: SEU_EF_BildungsabschlussBBCS
Id: seu-ef-bildungsabschluss-bbcs
Title: "SEU_EF_BildungsabschlussBBCS CodeSystem"
Description: "CodeSystem für die Angabe des Bildungsabschlusses."
* #kein_abschluss "Kein Abschluss"
* #foerderschulabschluss "Förderschulabschluss"
* #hauptschulabschluss_berufsbildungsreife "Hauptschulabschluss, Berufsbildungsreife"
* #ebf_for "Erweiterte Berufsbildungsreife (EBR), Fachoberschulreife (FOR)"
* #realschulabschluss_msa_mittlere_reife "Realschulabschluss, MSA, 10. Klasse-Abschluss, mittlere Reife"
* #abitur_fachhochschulreife_fachabitur "Abitur, Fachhochschulreife, Fachabitur"

ValueSet: SEU_EF_BildungsabschlussBBVS
Id: seu-ef-bildungsabschluss-bbvs
Title: "SEU_EF_BildungsabschlussBBVS ValueSet"
Description: "ValueSet, das verschiedene Bildungsabschlüsse enthält."
* include codes from system SEU_EF_BildungsabschlussBBCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #kein_abschluss
* ^expansion.contains[=].display = "Kein Abschluss"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #foerderschulabschluss
* ^expansion.contains[=].display = "Förderschulabschluss"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #hauptschulabschluss_berufsbildungsreife
* ^expansion.contains[=].display = "Hauptschulabschluss, Berufsbildungsreife"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #ebf_for
* ^expansion.contains[=].display = "Erweiterte Berufsbildungsreife (EBR), Fachoberschulreife (FOR)"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #realschulabschluss_msa_mittlere_reife
* ^expansion.contains[=].display = "Realschulabschluss, MSA, 10. Klasse-Abschluss, mittlere Reife"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBBCS)
* ^expansion.contains[=].code = #abitur_fachhochschulreife_fachabitur
* ^expansion.contains[=].display = "Abitur, Fachhochschulreife, Fachabitur"

CodeSystem: SEU_EF_BildungsabschlussBWCS
Id: seu-ef-bildungsabschluss-bwcs
Title: "SEU_EF_BildungsabschlussBWCS CodeSystem"
Description: "CodeSystem für die Angabe des Bildungsabschlusses."
* #weniger10Klasse "Weniger als 10. Klasse"
* #10Klasse "10. Klasse"
* #AbiturFH "Abitur / FH-Reife"

ValueSet: SEU_EF_BildungsabschlussBWVS
Id: seu-ef-bildungsabschluss-bwvs
Title: "SEU_EF_BildungsabschlussBWVS ValueSet"
Description: "ValueSet, das verschiedene Bildungsabschlüsse enthält."
* include codes from system SEU_EF_BildungsabschlussBWCS
* ^expansion.timestamp = "2024-12-09T10:35:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_BildungsabschlussBWCS)
* ^expansion.contains[=].code = #weniger10Klasse
* ^expansion.contains[=].display = "Weniger als 10. Klasse"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBWCS)
* ^expansion.contains[=].code = #10Klasse
* ^expansion.contains[=].display = "10. Klasse"
* ^expansion.contains[+].system = Canonical(SEU_EF_BildungsabschlussBWCS)
* ^expansion.contains[=].code = #AbiturFH
* ^expansion.contains[=].display = "Abitur / FH-Reife"

CodeSystem: SEU_EF_FrequenzCS
Id: seu-ef-frequenz-cs
Title: "SEU_EF_Frequenz CodeSystem"
Description: "CodeSystem für die Angabe der Häufigkeit einer Aktivität."
* #jeden_tag "Etwa jeden Tag"
* #3_bis_5_mal_pro_woche "3 bis 5 mal pro Woche"
* #1_bis_2_mal_pro_woche "1 bis 2 mal pro Woche"
* #1_bis_2_mal_im_monat "Etwa 1 bis 2 mal im Monat"
* #nie "Nie"
* #keine_angabe "Keine Angabe"

ValueSet: SEU_EF_FrequenzVS
Id: seu-ef-frequenz-vs
Title: "SEU_EF_Frequenz ValueSet"
Description: "ValueSet, das verschiedene Häufigkeiten einer Aktivität enthält."
* include codes from system SEU_EF_FrequenzCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #jeden_tag
* ^expansion.contains[=].display = "Etwa jeden Tag"
* ^expansion.contains[+].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #3_bis_5_mal_pro_woche
* ^expansion.contains[=].display = "3 bis 5 mal pro Woche"
* ^expansion.contains[+].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #1_bis_2_mal_pro_woche
* ^expansion.contains[=].display = "1 bis 2 mal pro Woche"
* ^expansion.contains[+].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #1_bis_2_mal_im_monat
* ^expansion.contains[=].display = "Etwa 1 bis 2 mal im Monat"
* ^expansion.contains[+].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #nie
* ^expansion.contains[=].display = "Nie"
* ^expansion.contains[+].system = Canonical(SEU_EF_FrequenzCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

CodeSystem: SEU_EF_DauerHECS
Id: seu-ef-dauer-he-cs
Title: "SEU_EF_Dauer CodeSystem"
Description: "CodeSystem für die Angabe der Dauer."
* #unter_18_monate "<18 Monate"
* #18_monate_bis_3_jahre "18 Mon. - 3 J."
* #ueber_3_jahre ">3 Jahre"

ValueSet: SEU_EF_DauerHEVS
Id: seu-ef-dauer-he-vs
Title: "SEU_EF_Dauer ValueSet"
Description: "ValueSet, das verschiedene Dauern enthält."
* include codes from system SEU_EF_DauerHECS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_EF_DauerHECS)
* ^expansion.contains[=].code = #unter_18_monate
* ^expansion.contains[=].display = "<18 Monate"
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerHECS)
* ^expansion.contains[=].code = #18_monate_bis_3_jahre
* ^expansion.contains[=].display = "18 Mon. - 3 J."
* ^expansion.contains[+].system = Canonical(SEU_EF_DauerHECS)
* ^expansion.contains[=].code = #ueber_3_jahre
* ^expansion.contains[=].display = ">3 Jahre"

ValueSet: DauerStillenVS
Id: DauerStillenVS
Title: "Dauer des Stillens ValueSet"
Description: "ValueSet, das verschiedene Dauern des Stillens enthält."
* include codes from system DauerStillenCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(DauerStillenCS)
* ^expansion.contains[=].code = #nie_gestillt
* ^expansion.contains[=].display = "Nie gestillt"
* ^expansion.contains[+].system = Canonical(DauerStillenCS)
* ^expansion.contains[=].code = #weniger_als_6_monate
* ^expansion.contains[=].display = "Weniger als 6 Monate"
* ^expansion.contains[+].system = Canonical(DauerStillenCS)
* ^expansion.contains[=].code = #mehr_als_6_monate
* ^expansion.contains[=].display = "Mehr als 6 Monate"
* ^expansion.contains[+].system = Canonical(DauerStillenCS)
* ^expansion.contains[=].code = #keine_angabe
* ^expansion.contains[=].display = "Keine Angabe"

ValueSet: JaNeinWeissNichtVS
Id: JaNeinWeissNichtVS
Title: "JaNeinWeissNichtVS"
Description: "JaNeinWeissNichtVS"
* include codes from system JaNeinWeissNichtCS
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(JaNeinWeissNichtCS)
* ^expansion.contains[=].code = #ja
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(JaNeinWeissNichtCS)
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(JaNeinWeissNichtCS)
* ^expansion.contains[=].code = #weiss_nicht
* ^expansion.contains[=].display = "Weiß nicht"

ValueSet: WerErziehtDasKindVS
Id: WerErziehtDasKindVS
Title: "WerErziehtDasKindVS"
Description: "WerErziehtDasKindVS"
* WerErziehtDasKindCS#beide_eltern_zusammen "Beide Eltern (zusammen wohnend)"
* WerErziehtDasKindCS#beide_eltern_getrennt "Beide Eltern (getrennt wohnend)"
* WerErziehtDasKindCS#alleinerziehend "Alleinerziehende/er"
* WerErziehtDasKindCS#elterntail_mit_partner "Elternteil mit Partner"
* WerErziehtDasKindCS#pflegeeltern "Pflegeeltern"
* WerErziehtDasKindCS#großeltern "Großeltern"
* WerErziehtDasKindCS#andere "andere"
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #beide_eltern_zusammen
* ^expansion.contains[=].display = "Beide Eltern (zusammen wohnend)"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #beide_eltern_getrennt
* ^expansion.contains[=].display = "Beide Eltern (getrennt wohnend)"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #alleinerziehend
* ^expansion.contains[=].display = "Alleinerziehende/er"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #elterntail_mit_partner
* ^expansion.contains[=].display = "Elternteil mit Partner"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #pflegeeltern
* ^expansion.contains[=].display = "Pflegeeltern"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #großeltern
* ^expansion.contains[=].display = "Großeltern"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "andere"

ValueSet: WerErziehtDasKindAlternativVS
Id: WerErziehtDasKindAlternativVS
Title: "WerErziehtDasKindAlternativVS"
Description: "WerErziehtDasKindAlternativVS"
* WerErziehtDasKindCS#beide_eltern_zusammen "Beide Eltern"
* WerErziehtDasKindCS#alleinerziehend "Alleinerziehend"
* WerErziehtDasKindCS#pflege_verschiedene "Pflege (Großeltern, Heim, Institution)"
* WerErziehtDasKindCS#fehlende_angaben "fehlende Angabe"
* ^expansion.timestamp = "2024-04-06T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #beide_eltern_zusammen
* ^expansion.contains[=].display = "Beide Eltern"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #alleinerziehend
* ^expansion.contains[=].display = "Alleinerziehend"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #pflege_verschiedene
* ^expansion.contains[=].display = "Pflege (Großeltern, Heim, Institution)"
* ^expansion.contains[+].system = Canonical(WerErziehtDasKindCS)
* ^expansion.contains[=].code = #fehlende_angaben
* ^expansion.contains[=].display = "fehlende Angabe"

ValueSet: WieVieleStundenFreizeitVS
Id: WieVieleStundenFreizeitVS
Title: "WieVieleStundenFreizeitVS"
Description: "WieVieleStundenFreizeitVS"
* include codes from system WieVieleStundenFreizeitCS
* ^expansion.contains[+].system = Canonical(WieVieleStundenFreizeitCS)
* ^expansion.contains[=].code = #unter_1_stunde
* ^expansion.contains[=].display = "unter 1 Stunde"
* ^expansion.contains[+].system = Canonical(WieVieleStundenFreizeitCS)
* ^expansion.contains[=].code = #1_bis_2_stunden
* ^expansion.contains[=].display = "1 bis 2 Stunden"
* ^expansion.contains[+].system = Canonical(WieVieleStundenFreizeitCS)
* ^expansion.contains[=].code = #mehr_als_2_stunden
* ^expansion.contains[=].display = "mehr als 2 Stunden"

ValueSet: WieOftImSportVereinVS
Id: WieOftImSportVereinVS
Title: "WieOftImSportVereinVS"
Description: "WieOftImSportVereinVS"
* include codes from system WieOftImSportVereinCS
* ^expansion.contains[+].system = Canonical(WieOftImSportVereinCS)
* ^expansion.contains[=].code = #1x_wöchentlich
* ^expansion.contains[=].display = "1x wöchentlich"
* ^expansion.contains[+].system = Canonical(WieOftImSportVereinCS)
* ^expansion.contains[=].code = #mehr_als_1x_wöchentlich
* ^expansion.contains[=].display = "mehr als 1x wöchentlich"

ValueSet: WieOftTrainingVS
Id: WieOftTrainingVS
Title: "WieOftTrainingVS"
Description: "WieOftTrainingVS"
* include codes from system WieOftTrainingCS
* ^expansion.contains[+].system = Canonical(WieOftTrainingCS)
* ^expansion.contains[=].code = #1_mal
* ^expansion.contains[=].display = "1 mal"
* ^expansion.contains[+].system = Canonical(WieOftTrainingCS)
* ^expansion.contains[=].code = #2_mal
* ^expansion.contains[=].display = "2 mal"
* ^expansion.contains[+].system = Canonical(WieOftTrainingCS)
* ^expansion.contains[=].code = #3_mal
* ^expansion.contains[=].display = "3 mal"
* ^expansion.contains[+].system = Canonical(WieOftTrainingCS)
* ^expansion.contains[=].code = #oefter
* ^expansion.contains[=].display = "öfter"

CodeSystem: BezirkeHHCS
Id: BezirkeHHCS
Title: "BezirkeHHCS"
Description: "BezirkeHHCS"
* #altona "Altona"
* #bergedorf "Bergedorf"
* #eimsbüttel "Eimsbüttel"
* #mitte "Hamburg Mitte"
* #nord "Hamburg Nord"
* #harburg "Harburg"
* #wandsbek "Wandsbek"

ValueSet: BezirkeHHVS
Id: BezirkeHHVS 
Title: "BezirkeHHVS"
Description: "BezirkeHHVS"
* include codes from system BezirkeHHCS
* ^expansion.timestamp = "2025-02-21T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #altona
* ^expansion.contains[=].display = "Altona"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #bergedorf
* ^expansion.contains[=].display = "Bergedorf"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #eimsbüttel
* ^expansion.contains[=].display = "Eimsbüttel"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #mitte
* ^expansion.contains[=].display = "Hamburg Mitte"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #nord
* ^expansion.contains[=].display = "Hamburg Nord"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #harburg
* ^expansion.contains[=].display = "Harburg"
* ^expansion.contains[+].system = Canonical(BezirkeHHCS)
* ^expansion.contains[=].code = #wandsbek
* ^expansion.contains[=].display = "Wandsbek"

CodeSystem: PersonensorgeberechtigterBeziehungCS 
Id: PersonensorgeberechtigterBeziehungCS
Title: "PersonensorgeberechtigterBeziehungCS"
Description: "PersonensorgeberechtigterBeziehungCS"
* #mutter "Mutter"
* #vater "Vater"
* #leiblichemutter "Leibliche Mutter"
* #leiblichervater "Leiblicher Vater"
* #adoptivmutter "Adoptiv-/Pflegemutter"
* #adoptivvater "Adoptiv-/Pflegevater"
* #natperson "Natürliche Person (nicht spezifiziert)"
* #jugendamt "Jugendamt"
* #jurperson "Juristische Person"
* #betreuer "Betreuer m. Einwill.vorbeh.Aufenthaltsb."
* #pflegemutter "Pflegemutter"
* #pflegevater "Pflegevater"

ValueSet: PersonensorgeberechtigterBeziehungVS
Id: PersonensorgeberechtigterBeziehungVS 
Title: "PersonensorgeberechtigterBeziehungVS"
Description: "PersonensorgeberechtigterBeziehungVS"
* include codes from system PersonensorgeberechtigterBeziehungCS
* ^expansion.timestamp = "2025-02-21T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #leiblichemutter
* ^expansion.contains[=].display = "Leibliche Mutter"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #leiblichervater
* ^expansion.contains[=].display = "Leiblicher Vater"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #adoptivmutter
* ^expansion.contains[=].display = "Adoptiv-/Pflegemutter"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #adoptivvater
* ^expansion.contains[=].display = "Adoptiv-/Pflegevater"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #natperson
* ^expansion.contains[=].display = "Natürliche Person (nicht spezifiziert)"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #jugendamt
* ^expansion.contains[=].display = "Jugendamt"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #jurperson
* ^expansion.contains[=].display = "Juristische Person"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #betreuer
* ^expansion.contains[=].display = "Betreuer m. Einwill.vorbeh.Aufenthaltsb."
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #pflegemutter
* ^expansion.contains[=].display = "Pflegemutter"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterBeziehungCS)
* ^expansion.contains[=].code = #pflegecater
* ^expansion.contains[=].display = "Pflegevater"

CodeSystem: PersonensorgeberechtigterZusammenlebendCS 
Id: PersonensorgeberechtigterZusammenlebendCS
Title: "PersonensorgeberechtigterZusammenlebendCS"
Description: "PersonensorgeberechtigterZusammenlebendCS"
* #ja "Ja"
* #nein "Nein"
* #zeitweise "Zeitweise"

ValueSet: PersonensorgeberechtigterZusammenlebendVS
Id: PersonensorgeberechtigterZusammenlebendVS 
Title: "PersonensorgeberechtigterZusammenlebendVS"
Description: "PersonensorgeberechtigterZusammenlebendVS"
* include codes from system PersonensorgeberechtigterZusammenlebendCS
* ^expansion.timestamp = "2025-02-21T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterZusammenlebendCS)
* ^expansion.contains[=].code = #ja
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterZusammenlebendCS)
* ^expansion.contains[=].code = #nein
* ^expansion.contains[=].display = "Nein"
* ^expansion.contains[+].system = Canonical(PersonensorgeberechtigterZusammenlebendCS)
* ^expansion.contains[=].code = #zeitweise
* ^expansion.contains[=].display = "Zeitweise"

ValueSet: KrankenhausaufenthaltGrundVS
Id: KrankenhausaufenthaltGrundVS
Title: "KrankenhausaufenthaltGrundVS"
Description: "ValueSet, das den Grund des Krankenhausaufenthaltes beschreibt. Es enthält die Kategorien: akute Erkrankung, chronische Krankheit, Unfall, stationäre Operation(en), und sonstiges. Dieses CodeSystem kann verwendet werden, um den Grund eines Krankenhausaufenthaltes zu kategorisieren."
* include codes from system KrankenhausaufenthaltGrundCS
* ^expansion.contains[+].system = Canonical(KrankenhausaufenthaltGrundCS)
* ^expansion.contains[=].code = #akute_erkrankung
* ^expansion.contains[=].display = "akute Erkrankung"
* ^expansion.contains[+].system = Canonical(KrankenhausaufenthaltGrundCS)
* ^expansion.contains[=].code = #chronische_krankheit
* ^expansion.contains[=].display = "chronische Krankheit"
* ^expansion.contains[+].system = Canonical(KrankenhausaufenthaltGrundCS)
* ^expansion.contains[=].code = #unfall
* ^expansion.contains[=].display = "Unfall"
* ^expansion.contains[+].system = Canonical(KrankenhausaufenthaltGrundCS)
* ^expansion.contains[=].code = #stationaere_operation
* ^expansion.contains[=].display = "stationäre Operation(en)"
* ^expansion.contains[+].system = Canonical(KrankenhausaufenthaltGrundCS)
* ^expansion.contains[=].code = #sonstiges
* ^expansion.contains[=].display = "sonstiges"

CodeSystem: RauchortCS
Id: RauchortCS
Title: "RauchortCS"
Description: "CodeSystem, das den Ort des Rauchens beschreibt."
* #nur_ausserhalb "nur außerhalb der Wohnung"
* #innen_und_aussen "innerhalb und außerhalb der Wohnung"

ValueSet: RauchortVS
Id: RauchortVS
Title: "Ort des Rauchens Value Set"
Description: "ValueSet, das den Ort des Rauchens beschreibt."
* RauchortCS#nur_ausserhalb "nur außerhalb der Wohnung"
* RauchortCS#innen_und_aussen "innerhalb und außerhalb der Wohnung"
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(RauchortCS)
* ^expansion.contains[=].code = #nur_ausserhalb
* ^expansion.contains[=].display = "nur außerhalb der Wohnung"
* ^expansion.contains[+].system = Canonical(RauchortCS)
* ^expansion.contains[=].code = #innen_und_aussen
* ^expansion.contains[=].display = "innerhalb und außerhalb der Wohnung"

CodeSystem: SorgenKindCS
Id: SorgenKindCS
Title: "SorgenKindCS"
Description: "SorgenKindCS"
* #seines_Verhaltens "seines Verhaltens?"
* #seiner_Sprachentwicklung "seiner Sprachentwicklung"
* #seine_Konzentrationsfähigkeit "seine Konzentrationsfähigkeit"
* #seines_Seh-oder_Hoervermoegens "seines Seh- oder Hörvermögens"

ValueSet: SorgenKindVS
Id: SorgenKindVS
Title: "SorgenKindVS"
Description: "SorgenKindVS"
* include codes from system SorgenKindCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(SorgenKindCS)
* ^expansion.contains[=].code = #seines_Verhaltens
* ^expansion.contains[=].display = "seines Verhaltens?"
* ^expansion.contains[+].system = Canonical(SorgenKindCS)
* ^expansion.contains[=].code = #seiner_Sprachentwicklung
* ^expansion.contains[=].display = "seiner Sprachentwicklung"
* ^expansion.contains[+].system = Canonical(SorgenKindCS)
* ^expansion.contains[=].code = #seine_Konzentrationsfähigkeit
* ^expansion.contains[=].display = "seine Konzentrationsfähigkeit"
* ^expansion.contains[+].system = Canonical(SorgenKindCS)
* ^expansion.contains[=].code = #seines_Seh-oder_Hoervermoegens
* ^expansion.contains[=].display = "seines Seh- oder Hörvermögens"

ValueSet: LebtBeiVS
Id: LebtBeiVS
Title: "LebtBeiVS"
Description: "LebtBeiVS"
* include codes from system LebtBeiCS
* ^expansion.timestamp = "2024-04-04T09:24:55+00:00"
* ^expansion.contains[0].system = "https://www.oegd.de/fhir/seu/CodeSystem/LebtBeiCS"
* ^expansion.contains[=].code = #vater
* ^expansion.contains[=].display = "Vater"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LebtBeiCS"
* ^expansion.contains[=].code = #eltern
* ^expansion.contains[=].display = "Eltern"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LebtBeiCS"
* ^expansion.contains[=].code = #andere
* ^expansion.contains[=].display = "Andere"
* ^expansion.contains[+].system = "https://www.oegd.de/fhir/seu/CodeSystem/LebtBeiCS"
* ^expansion.contains[=].code = #mutter
* ^expansion.contains[=].display = "Mutter"

ValueSet: BerufstaetigkeitElternBerlinVS
Id: BerufstaetigkeitElternBerlinVS
Title: "BerufstaetigkeitElternBerlinVS"
Description: "BerufstaetigkeitElternBerlinVS"
* include codes from system BerufstaetigkeitElternBerlinCS
* ^expansion.timestamp = "2024-06-26T15:47:43+00:00"
* ^expansion.contains[0].system = Canonical(BerufstaetigkeitElternBerlinCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig_weil_finde_keine_Arbeit
* ^expansion.contains[=].display = "nicht erwerbstätig, weil finde keine Arbeit"
* ^expansion.contains[+].system = Canonical(BerufstaetigkeitElternBerlinCS)
* ^expansion.contains[=].code = #nicht_erwerbstaetig_alle_anderen_Gruende
* ^expansion.contains[=].display = "nicht erwerbstätig, weil alle anderen Gründe"
* ^expansion.contains[+].system = Canonical(BerufstaetigkeitElternBerlinCS)
* ^expansion.contains[=].code = #teilzeitbeschaeftigt
* ^expansion.contains[=].display = "teilzeitbeschäftigt"
* ^expansion.contains[+].system = Canonical(BerufstaetigkeitElternBerlinCS)
* ^expansion.contains[=].code = #vollzeitbeschaeftigt
* ^expansion.contains[=].display = "vollzeitbeschäftigt"
