CodeSystem: VerhaltensauffaelligkeitenCS
Id: VerhaltensauffaelligkeitenCS
Title: "VerhaltensauffälligkeitenCS"
Description: "CodeSystem zur Kodierung von Verhaltensauffälligkeiten bei Kindern im Rahmen der Schuleingangsuntersuchung."
* #konzentrationsstoerung "Konzentrationsstörung"
* #einnaessen "Einnässen"
* #einkoten "Einkoten"
* #aengstlichkeit "Ängstlichkeit"
* #aggressivitaet "Aggressivität"
* #schlafstoerungen "Schlafstörung"
* #motorische_unruhe_hyperaktivitaet "Motorische Unruhe, Hyperaktivität"
* #unueberlegte_risikante_handlungen "Unüberlegte riskante Handlungen"

ValueSet: VerhaltensauffaelligkeitenVS
Id: VerhaltensauffaelligkeitenVS
Title: "VerhaltensauffaelligkeitenVS"
Description: "ValueSet zur Auswahl von Verhaltensauffälligkeiten bei Kindern im Rahmen der Schuleingangsuntersuchung."
* include codes from system VerhaltensauffaelligkeitenCS
* ^expansion.timestamp = "2024-04-04T11:02:42+00:00"
* ^expansion.contains[0].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #konzentrationsstoerung
* ^expansion.contains[=].display = "Konzentrationsstörung"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #einnaessen
* ^expansion.contains[=].display = "Einnässen"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #einkoten
* ^expansion.contains[=].display = "Einkoten"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #aengstlichkeit
* ^expansion.contains[=].display = "Ängstlichkeit"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #aggressivitaet
* ^expansion.contains[=].display = "Aggressivität"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #schlafstoerungen
* ^expansion.contains[=].display = "Schlafstörung"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #motorische_unruhe_hyperaktivitaet
* ^expansion.contains[=].display = "Motorische Unruhe, Hyperaktivität"
* ^expansion.contains[+].system = Canonical(VerhaltensauffaelligkeitenCS)
* ^expansion.contains[=].code = #unueberlegte_risikante_handlungen
* ^expansion.contains[=].display = "Unüberlegte riskante Handlungen"