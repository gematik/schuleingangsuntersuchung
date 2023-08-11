Profile: OegdSeuVerwandtePerson
Parent: RelatedPerson
Id: OegdSeuVerwandtePerson
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
    * extension contains $ags named gemeindeschluessel 0..1 MS
  * postalCode 1.. MS
  * country 1.. MS
    * obeys address-cnt-2or3-char
  * extension contains OegdSeuWohnungsInhaberExtension named wohnungsinhaber 0..1 MS
* extension 0..* MS
* extension contains 
  OegdSeuVerwandtePersonDatEndeExtension named DatEnde 0..1 and 
  OegdSeuVerwandtePersonAuskunftssperreGrundExtension named AuskunftssperreGrund 0..1 and
  OegdSeuVerwandtePersonAuskunftssperreFristExtension named AuskunftssperreFrist 0..1
* communication MS
  * language MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* communication contains deutsch 1..1 MS
* communication[deutsch].language = urn:ietf:bcp:47#de "German"
* communication[deutsch].extension 1..* MS
* communication[deutsch].extension contains OegdSeuVerwandtePersonDeutschkenntnisExtension named deutschkenntnis 1..1 MS

Extension: OegdSeuVerwandtePersonDatEndeExtension
Id: OegdSeuVerwandtePersonDatEndeExtension
Title:  "Verwandte Person DatEnde Extension"
* value[x] only dateTime

Extension: OegdSeuVerwandtePersonAuskunftssperreGrundExtension
Id: OegdSeuVerwandtePersonAuskunftssperreGrundExtension
Title:  "Verwandte Person Auskunftssperre Grund Extension"
* value[x] only string

Extension: OegdSeuVerwandtePersonAuskunftssperreFristExtension
Id: OegdSeuVerwandtePersonAuskunftssperreFristExtension
Title:  "Verwandte Person Auskunftssperre Frist Extension"
* value[x] only dateTime

Extension: OegdSeuVerwandtePersonDeutschkenntnisExtension
Id: OegdSeuVerwandtePersonDeutschkenntnisExtension
Title:  "Deutschkenntnisse"
* value[x] only CodeableConcept
* valueCodeableConcept from SeuPersonDeutschkenntnisVs

// Instance: OegdSeuVerwandtePerson-Example
// InstanceOf: OegdSeuVerwandtePerson
// Usage: #example
// TODO Create example