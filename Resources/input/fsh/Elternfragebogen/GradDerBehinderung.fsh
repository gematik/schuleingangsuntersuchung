Profile: GradDerBehinderung
Parent: http://fhir.de/StructureDefinition/GradDerBehinderung
Id: GradDerBehinderung
* code MS
* subject MS
* valueInteger MS
* component MS
* component[merkzeichen] MS
* component[merkzeichen].code MS
* component[merkzeichen].valueBoolean MS

Instance: GradDerBehinderungBeispiel
InstanceOf: GradDerBehinderung
Usage: #example
* code = $sct#116149007
* status = #final
* subject = Reference(Patient/example)
* valueInteger = 100
* component[0].code = $merkzeichen-de#G
* component[=].valueBoolean = true
* component[+].code = $merkzeichen-de#H
* component[=].valueBoolean = true