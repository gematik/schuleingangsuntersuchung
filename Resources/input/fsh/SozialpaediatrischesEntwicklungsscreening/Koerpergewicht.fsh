Profile: Koerpergewicht
Parent: VitalSignDE_Koerpergewicht
Id: Koerpergewicht
* status MS
* category MS
* category[vs-cat] MS
* code MS
* subject MS
* encounter MS
* effective[x] MS
* value[x] MS
* valueQuantity MS
* valueQuantity.value MS
* valueQuantity.unit MS
* valueQuantity.system MS
* valueQuantity.code MS

Instance: KoerpergewichtBeispiel
InstanceOf: Koerpergewicht
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergewicht"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[0] = $loinc#29463-7 "Body weight"
* code.coding[+] = $sct#27113001 "Body weight"
* code.text = "Körpergewicht"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 81 'kg' "kilogram"