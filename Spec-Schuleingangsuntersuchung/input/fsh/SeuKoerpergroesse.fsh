Profile: SeuKoerpergroesse
Parent: VitalSignDE_Koerpergroesse
Id: SeuKoerpergroesse
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

Instance: SeuKoerpergroesseBeispiel
InstanceOf: SeuKoerpergroesse
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/bodyheight"
* meta.profile[+] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-koerpergroesse"
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#50373000 "Body height measure"
* code.text = "Körpergröße"
* subject = Reference(OegdSeuPersonBeispiel)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 192 'cm' "centimeter"