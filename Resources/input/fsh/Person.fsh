Profile: Person
Parent: Patient
Id: Person
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    SteuerId 0..1 MS
* identifier[SteuerId]
  * ^patternIdentifier.type = https://www.oegd.de/fhir/seu/#tax-id
  * type 1.. MS
  * system MS
  * value MS
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
* birthDate 1.. MS
* address 1..* MS
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
    * extension contains http://fhir.de/StructureDefinition/destatis/ags named gemeindeschluessel 0..1 MS and FruehererGemeindeNameEX named frueherergemeindename 0..1 MS
  * postalCode 1.. MS
  * country 1.. MS
    * obeys address-cnt-2or3-char
  * extension contains WohnungsInhaberEX named wohnungsinhaber 0..1 MS
* extension contains 
    http://hl7.org/fhir/StructureDefinition/patient-birthPlace named Geburtsort 0..1 MS and 
    http://hl7.org/fhir/StructureDefinition/patient-nationality named Staatsangehoerigkeit 0.. MS and 
    PersonUebermittlungsssperreReligionEX named SperreReligion 0..1 MS and 
    PersonUebermittlungsssperrePolitikEX named SperrePolitik 0..1 MS and
    PersonUebermittlungsssperreJubilaenEX named SperreJubilaen 0..1 MS and
    PersonUebermittlungsssperreAdressbuchEX named SperreAddressbuch 0..1 MS and
    PersonUebermittlungsssperreBundeswehrEX named SperreBundeswehr 0..1 MS and
    PersonMigrationshintergrundEX named Migrationshintergrund 0..1 MS
* gender 1.. MS
  * extension contains GenderOtherDE named Geschlecht-Administrativ 0..1 MS
* deceased[x] only dateTime
* deceasedDateTime MS
* communication MS
  * language MS
  * preferred MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* communication contains deutsch 1..1 MS and erstsprache 1..1 MS
* communication[deutsch].language = urn:ietf:bcp:47#de "German"
* communication[deutsch].extension 1..* MS
* communication[deutsch].extension contains PersonDeutschkenntnisEX named deutschkenntnis 1..1 MS
* communication[erstsprache].preferred = true

Extension: PersonUebermittlungsssperreReligionEX
Id: PersonUebermittlungsssperreReligionEX
Title:  "Übermittlungssperre Religion"
Description: "Diese Extension enthält Angaben zur Übermittlungssperre bezüglich Datenübermittlungen an öffentlich-rechtliche Religionsgemeinschaften"
* value[x] only boolean

Extension: PersonUebermittlungsssperrePolitikEX
Id: PersonUebermittlungsssperrePolitikEX
Title:  "Übermittlungssperre Politik"
Description: "Diese Extension enthält Angaben zur Übermittlungssperre bezüglich Auskünften an Parteien, Wählergruppen und andere Träger von Wahlvorschlägen"
* value[x] only boolean

Extension: PersonUebermittlungsssperreJubilaenEX
Id: PersonUebermittlungsssperreJubilaenEX
Title:  "Übermittlungssperre Jubilaen"
Description: "Diese Extension enthält Angaben zur Übermittlungssperre bezüglich Auskünften über Alters- und Ehejubiläen"
* value[x] only boolean

Extension: PersonUebermittlungsssperreAdressbuchEX
Id: PersonUebermittlungsssperreAdressbuchEX
Title:  "Übermittlungssperre Adressbuch"
Description: "Diese Extension enthält Angaben zur Übermittlungssperre bezüglich Auskünften an Adressbuchverläge"
* value[x] only boolean

Extension: PersonUebermittlungsssperreBundeswehrEX
Id: PersonUebermittlungsssperreBundeswehrEX
Title:  "Übermittlungssperre Bundeswehr"
Description: "Diese Extension enthält Angaben zur Übermittlungssperre bezüglich Datenübermittlungen an das Bundesamt für Personalmanagement der Bundeswehr"
* value[x] only boolean

Extension: PersonMigrationshintergrundEX
Id: PersonMigrationshintergrundEX
Title:  "Migrationshintergrund"
Description: "Diese Extension enthält Angaben zum Migrationshintergrund der betreffenden Person in codierter Form"
* value[x] only CodeableConcept
* valueCodeableConcept from PersonEthnieVS

Extension: PersonDeutschkenntnisEX
Id: PersonDeutschkenntnisEX
Title:  "Deutschkenntnisse"
Description: "Diese Extension enthält Angaben zu den Deutschkenntnissen der betreffenden Person in codierter Form"
* value[x] only CodeableConcept
* valueCodeableConcept from PersonDeutschkenntnisVS

Instance: PersonBeispiel
InstanceOf: Person
Usage: #example
* extension[SperreBundeswehr].valueBoolean = true
* extension[Migrationshintergrund].valueCodeableConcept = PersonEthnieCS#2 "GUS/Osteuropa"
* identifier[SteuerId].type = https://www.oegd.de/fhir/seu/#tax-id
* identifier[SteuerId].system = "https://www.oegd.de/fhir/seu/"
* identifier[SteuerId].value = "2398423874"
* name[Name].use = #official
* name[Name].family = "Fürstin von Musterfrau"
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
* birthDate = "1964-08-12"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line[0] = "Musterweg 2"
* address[Strassenanschrift].line[+] = "3. Etage"
* address[Strassenanschrift].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[Strassenanschrift].line[=].extension[=].valueString = "Musterweg"
* address[Strassenanschrift].line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line[=].extension[=].valueString = "2"
* address[Strassenanschrift].line[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[Strassenanschrift].line[=].extension.valueString = "3. Etage"
* address[Strassenanschrift].city = "Musterhausen"
* address[Strassenanschrift].city.extension[+].url = "https://www.oegd.de/fhir/seu//StructureDefinition/FruehererGemeindeNameEX"
* address[Strassenanschrift].city.extension[=].valueString = "Altes Musterhausen"
* address[Strassenanschrift].city.extension[+].url = $ags
* address[Strassenanschrift].city.extension[=].valueString = "03 2 54 021"
* address[Strassenanschrift].postalCode = "98764"
* address[Strassenanschrift].country = "DE"
* address[Strassenanschrift].extension[wohnungsinhaber].valueString = "Erika Gabler"
* address[Postfach].type = #postal
* address[Postfach].line = "Postfach 8 15"
  * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
  * extension.valueString = "Postfach 8 15"
* address[Postfach].city = "Musterhausen"
* address[Postfach].postalCode = "98764"
* address[Postfach].country = "DE"
* communication[erstsprache].language = urn:ietf:bcp:47#nl "Dutch"
* communication[deutsch].extension[deutschkenntnis].valueCodeableConcept = PersonDeutschkenntnisCS#4 "flüssig mit leichten Fehlern"

// TODO: Postfach weglassen?