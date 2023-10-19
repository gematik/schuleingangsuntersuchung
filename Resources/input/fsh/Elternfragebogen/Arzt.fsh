Profile: Arzt
Parent: Practitioner
Id: Arzt
* name MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* name contains
    Name 1..1 MS
* name[Name] only HumannameDeBasis
  * ^patternHumanName.use = #official
  * use 1.. MS
  * family 1.. MS
    * extension[namenszusatz] 0..1 MS
    * extension[nachname] 0..1 MS
    * extension[vorsatzwort] 0..1 MS
  * given 1.. MS
  * prefix MS
    * extension[prefix-qualifier] 0..1 MS
    * extension[prefix-qualifier].value[x] = #AC (exactly)
* qualification MS
* qualification.code MS 
* qualification.code from ArztTypVS

ValueSet: ArztTypVS
Id: ArztTypVS
Title: "Elternfragebogen Arzt Typ"
Description: "Dieses ValueSet enthält alle validen Arzttypen des Elternfragebogens"
* include $sct#82296001 "Pediatrician (occupation)"
* include $sct#309395003 "Hospital specialist (occupation)"

Instance: ArztBeispiel
InstanceOf: Arzt
Usage: #example
* name[Name].use = #official
* name[Name].family = "Musterarzt"
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
  * extension[=].valueString = "Musterarzt"
* name[Name].given = "Erika"
* name[Name].prefix = "Dr."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
  * extension.valueCode = #AC
* qualification.code = $sct#82296001 "Pediatrician (occupation)"