Profile: Schulempfehlung
Parent: Observation
Id: Schulempfehlung
* status MS
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code.coding MS
* code = $sct#420227002 "Recommendation to (procedure)" // TODO Find better code
* subject MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SchulempfehlungVs
* valueCodeableConcept MS
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

CodeSystem:  SchulempfehlungCs
Id: SchulempfehlungCs
Title: "SEU Schulempfehlungen"
* #nein "keine regelabweichende Schulempfehlung"
* #zurk "Zurückstellung Regelkind"
* #zuek "Zurückstellung Eingangsstufenkind"
* #bekk "Bedenken Kannkind"
* #bfz "Vorstellung Beratungs- und Förderzentrum"
* #zukk "Zurückstellung Kannkind"
* #sopf "Sonderpädagogische Förderung"

ValueSet: SchulempfehlungVs
Id: SchulempfehlungVs
Title: "SEU Schulempfehlungen"
* include codes from system SchulempfehlungCs

Instance: SchulempfehlungBeispiel
InstanceOf: Schulempfehlung
Usage: #example
* status = #final
* category = $observation-category#exam "Exam"
* valueCodeableConcept = SchulempfehlungCs#nein "keine regelabweichende Schulempfehlung"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"