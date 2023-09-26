Profile: Blutdruck
Parent: VitalSignDE_Blutdruck
Id: Blutdruck
* status MS
* category MS
* category[vs-cat] MS
* code MS
* code.coding MS
* subject MS
* encounter MS
* effective[x] MS
* component MS
* component[SystolicBP] MS
* component[SystolicBP].code MS
* component[SystolicBP].code.coding MS
* component[SystolicBP].value[x] MS
* component[SystolicBP].valueQuantity MS
* component[DiastolicBP] MS
* component[DiastolicBP].code MS
* component[DiastolicBP].code.coding MS
* component[DiastolicBP].value[x] MS
* component[DiastolicBP].valueQuantity MS

Instance: BlutdruckBeispiel
InstanceOf: Blutdruck
Usage: #example
* meta.profile[0] = "http://fhir.de/StructureDefinition/observation-de-vitalsign-blutdruck"
* status = #final
* category[vs-cat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Systolischer und Diastolischer Blutdruck"
* subject = Reference(PersonBeispiel)
* effectiveDateTime = "2012-09-17"
* bodySite = $sct#368209003 "Right arm"
* component[SystolicBP].valueQuantity = 102 'mm[Hg]' "mmHg"
* component[DiastolicBP].valueQuantity = 63 'mm[Hg]' "mmHg"