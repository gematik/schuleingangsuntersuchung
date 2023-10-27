Profile: Verhalten
Parent: Observation
Id: Verhalten
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code.coding MS
* code = $sct#25786006 "Abnormal behavior (finding)"
* subject MS
* value[x] only CodeableConcept or string
* valueCodeableConcept MS
* valueCodeableConcept from VerhaltensTypVS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS
* valueString MS

ValueSet: VerhaltensTypVS
Id: VerhaltensTypVS
Title: "Elternfragebogen Verhaltensauffälligkeit"
Description: "Dieses ValueSet enthält alle validen Verhaltenauffälligkeiten des Elternfragebogens"
* include codes from system VerhaltensTypCS

CodeSystem:  VerhaltensTypCS
Id: VerhaltensTypCS
Title: "SEU Verhaltensauffälligkeit"
* #1 "Konzentrationsstörung"
* #2 "Bettnässen"
* #3 "Einkoten"
* #4 "Ängstlichkeit"
* #5 "Aggressivität"
* #6 "Schlafstörung"
* #7 "Hyperaktivität"
* #8 "Riskantes Handeln"
* #9 "Schlechter Appetit"
* #10 "Wenig Ausdauer beim Spielen"
* #11 "Spät gesprochen"
* #12 "Neigung zum Erbrechen"
* #13 "Kann nicht zuhören"
* #14 "Noch Sprachschwierigkeiten"
* #15 "Häufig Bauchschmerzen"
* #16 "Regt sich schnell auf"
* #17 "Ungeschicklichkeit beim Malen"
* #18 "Schlafstörungen"
* #19 "Zerstört viel Spielzeug"
* #20 "Benutzen der linken Hand"
* #21 "Nägel knabbern"
* #22 "Ist schnell entmutigt"
* #23 "Häufiges Hinfallen"
* #24 "Großer Bewegungsdrang"
* #25 "Kann sich schlecht an Regeln halten"

Instance: VerhaltenBeispiel
InstanceOf: Verhalten
Usage: #example
* valueCodeableConcept = VerhaltensTypCS#1 "Konzentrationsstörung"
* subject = Reference(PersonBeispiel)