Profile: Erstsprache
Parent: Observation
Id: Erstsprache
* status MS
* status = #final
* category MS
* category = $observation-category#social-history "Social History"
* code MS
* code = $sct#224076006 "First language (observable entity)"
* subject MS
* encounter MS
* effective[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/all-languages
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding.code MS
* valueCodeableConcept.coding.system MS

Instance: ErstspracheBeispiel
InstanceOf: Erstsprache
Usage: #example
* valueCodeableConcept = urn:ietf:bcp:47#nl "Dutch"
* subject = Reference(PersonBeispiel)