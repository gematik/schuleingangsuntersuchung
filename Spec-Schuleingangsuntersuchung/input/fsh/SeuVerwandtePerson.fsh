Profile: SeuVerwandtePerson
Parent: RelatedPerson
Id: SeuVerwandtePerson
* patient 1..1 MS
  * reference 1..
* name MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* name contains
    Name 1..1 MS and
    Geburtsname 0..1 MS
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
* name[Geburtsname] only HumannameDeBasis
  * ^patternHumanName.use = #maiden
  * use 1.. MS
  * family 1.. MS
    * extension[namenszusatz] 0..1 MS
    * extension[nachname] 0..1 MS
    * extension[vorsatzwort] 0..1 MS
  * given ..0
  * prefix ..0
* address MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Postfach] only AddressDeBasis
  * ^patternAddress.type = #postal
  * type 1.. MS
  * line 1.. MS
    * extension[Strasse] 0..0 
    * extension[Hausnummer] 0..0 
    * extension[Adresszusatz] 0..0 
    * extension[Postfach] 0..1 MS
  * city 1.. MS
  * postalCode 1.. MS
  * country 1.. MS
    * obeys address-cnt-2or3-char
* address[Strassenanschrift] only AddressDeBasis
  * ^patternAddress.type = #both
  * type 1.. MS
  * line 1.. MS
    * extension[Strasse] 0..1 MS
    * extension[Hausnummer] 0..1 MS
    * extension[Adresszusatz] 0..1 MS
    * extension[Postfach] 0..0
  * city 1.. MS
    * extension contains $ags named gemeindeschluessel 0..1 MS and 
      SeuFruehererGemeindeNameExtension named frueherergemeindename 0..1 MS
  * postalCode 1.. MS
  * country 1.. MS
    * obeys address-cnt-2or3-char
  * extension contains OegdSeuWohnungsInhaberExtension named wohnungsinhaber 0..1 MS
* extension 0..* MS
* extension contains 
  SeuVerwandtePersonDatEndeExtension named DatEnde 0..1 and 
  SeuVerwandtePersonAuskunftssperreGrundExtension named AuskunftssperreGrund 0..1 and
  SeuVerwandtePersonAuskunftssperreFristExtension named AuskunftssperreFrist 0..1
* communication MS
  * language MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* communication contains deutsch 1..1 MS
* communication[deutsch].language = urn:ietf:bcp:47#de "German"
* communication[deutsch].extension 1..* MS
* communication[deutsch].extension contains SeuVerwandtePersonDeutschkenntnisExtension named deutschkenntnis 1..1 MS

Extension: SeuVerwandtePersonDatEndeExtension
Id: SeuVerwandtePersonDatEndeExtension
Title:  "Verwandte Person DatEnde Extension"
* value[x] only dateTime

Extension: SeuVerwandtePersonAuskunftssperreGrundExtension
Id: SeuVerwandtePersonAuskunftssperreGrundExtension
Title:  "Verwandte Person Auskunftssperre Grund Extension"
* value[x] only string

Extension: SeuVerwandtePersonAuskunftssperreFristExtension
Id: SeuVerwandtePersonAuskunftssperreFristExtension
Title:  "Verwandte Person Auskunftssperre Frist Extension"
* value[x] only dateTime

Extension: SeuVerwandtePersonDeutschkenntnisExtension
Id: SeuVerwandtePersonDeutschkenntnisExtension
Title:  "Deutschkenntnisse"
* value[x] only CodeableConcept
* valueCodeableConcept from SeuPersonDeutschkenntnisVs

Instance: SeuVerwandtePersonBeispiel
InstanceOf: SeuVerwandtePerson
Usage: #example
* extension[SeuVerwandtePersonAuskunftssperreGrundExtension].valueString = "Schwerwiegender Grund"
* extension[SeuVerwandtePersonAuskunftssperreFristExtension].valueDateTime = "2024-01-01"
* name[Name].use = #official
* name[Name].family = "Gräfin von Musterfrau"
  * extension[0].url = "http://fhir.de/StructureDefinition/humanname-namenszusatz"
  * extension[=].valueString = "Graf"
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
  * extension[=].valueString = "Musterfrau"
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
  * extension[=].valueString = "von"
* name[Name].given = "Erika"
* name[Name].prefix = "Dr."
  * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
  * extension.valueCode = #AC
* name[Geburtsname].use = #maiden
* name[Geburtsname].family = "Gabler"
  * extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
  * extension.valueString = "Gabler"
* gender = #female
* patient = Reference(SeuPersonBeispiel)
* birthDate = "1952-01-17"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line[0] = "Musterstrasse 18"
* address[Strassenanschrift].line[+] = "1. Etage"
* address[Strassenanschrift].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line[=].extension[=].valueString = "Musterstrasse"
* address[Strassenanschrift].line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line[=].extension[=].valueString = "18"
* address[Strassenanschrift].line[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[Strassenanschrift].line[=].extension.valueString = "1. Etage"
* address[Strassenanschrift].city = "Musterhausen"
* address[Strassenanschrift].city.extension[+].url = $ags
* address[Strassenanschrift].city.extension[=].valueString = "03 2 54 021"
* address[Strassenanschrift].postalCode = "98764"
* address[Strassenanschrift].country = "DE"
* address[Strassenanschrift].extension[wohnungsinhaber].valueString = "Erika Gabler"
* communication[deutsch].extension[deutschkenntnis].valueCodeableConcept = SeuPersonDeutschkenntnisCs#4 "flüssig mit leichten Fehlern"