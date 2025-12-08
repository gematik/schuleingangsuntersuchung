## {{page-title}}

### Elternfragebogen Schuleingangsuntersuchung Thüringen

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-TH.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 0 | (0) Schule & Vorgangsnummer | group |  |  |  |  |
| 0.1 | (0.1) Name der Schule | string |  |  |  |  |
| 0.10 | (0.10) Datum der Untersuchung | date |  |  | DE-HB |  |
| 0.13 | (0.13) Ort der Untersuchung | string |  |  | DE-TH |  |
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.4 | (2.4) PLZ | string |  |  |  |  |
| 2.5 | (2.5) Wohnort | string |  |  |  |  |
| 2.6 | (2.6) Straße | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 2.7a | (2.7a) Handynummer | string |  |  | DE-HH |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.11 | (4.11) Das Kind wurde bis zum Alter von Jahren und Monaten ausschließlich innerhalb der Familie betreut. | group |  |  | DE-RP |  |
| 4.11.1 | (4.11.1) Jahre | integer |  |  | DE-RP |  |
| 4.11.2 | (4.11.2) Monate | integer |  |  | DE-RP |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.4 | (5.4) Waren Geburtsgewicht und Geburtslänge normal? | boolean |  |  |  |  |
| 5.5 | (5.5) Auffälligkeit bei der Geburt | boolean |  |  |  |  |
| 5.11 | (5.11) APGAR | string |  |  | DE-HB |  |
| 5.12 | (5.12) pH- Wert | string |  |  | DE-HB |  |
| 7 | (7) Entwicklung | group |  |  |  |  |
| 7.10 | (7.10) Angabe zu Entwicklungsverzögerungen, bspw. beim Erlernen des Sitzens/Laufens | text |  |  |  |  |
| 7.11a | (7.11a) Auffälligkeit des Verhaltens | boolean |  |  | DE-HE |  |
| 8 | (8) Erkrankungen und gesundheitliche Einschränkungen | group |  |  |  |  |
| 8.6 | (8.6) Brillenträger? | boolean |  |  |  |  |
| 8.6a | (8.6a) Hilfsmittel? | choice |  | Sehhilfe (z. B. Brille) :: Hörhilfe :: Orthese :: Zahnersatz (Prothese, Platzhalter) :: Anderes  | DE-BB |  |
| 8.9.G | (8.9.G) Details: Angeborene schwere Hörstörung | group | 8.9 = true |  |  |  |
| 8.9.G.hoergeraete.G | (8.9.G.hoergeraete.G) Hörgeräte | group |  |  |  |  |
| 8.9.G.hoergeraete.G.1 | (8.9.G.hoergeraete.G.1) Höregerätseite | choice |  | Links :: Rechts :: Beidseits :: Keine Angabe  |  |  |
| 8.11.g | (8.11.g) Erkrankungen | group |  |  |  |  |
| 8.11.g.1 | (8.11.g.1) Erkrankung | open-choice |  | Epilepsie :: ADS/ADHS :: Sprachauffälligkeit :: Sehstörung :: Hörstörung :: Herzfehler :: Nieren/Harnwegerkrankung :: Allergischer Schnupfen :: Asthma :: ... |  |  |
| 8.12.g | (8.12.g) Infektionskrankheiten | group |  |  |  |  |
| 8.12.g.1 | (8.12.g.1) Infektionskrankheit | open-choice |  | COVID-19 :: Hand-Fuß-Mund-Krankheit :: Borreliose :: Hepatitis B :: Hirnhautentzündung :: Keuchhusten :: Masern :: Mumps :: Ringelröten :: ... |  |  |
| 8.14b | (8.14b) Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt | text |  |  | DE-BW |  |
| 8.15 | (8.15) Krankenhausaufenthalt | boolean |  |  |  |  |
| 8.15.1 | (8.15.1) Detaillierte Angaben zum Krankenhausaufenthalt? | string | 8.15 = true |  |  |  |
| 8.16a | (8.16a) Besitzt Ihr Kind Allergien? | choice |  | Atopische/Allergische Erkrankungen :: Nahrungsmittelallergien :: Pollenallergien :: Hausstaubmilbenallergien :: Schimmelpilzallergien :: Tierhaarallergien :: Medikamentenallergien :: Sonstige atopische/allergische Erkrankungen  |  |  |
| 8.16b | (8.16b) Gesundheitsstörungen in der Familie des Kindes  (z.B. Allergien, Asthma b.,Epilepsie) | string |  | Atopische/Allergische Erkrankungen :: Nahrungsmittelallergien :: Pollenallergien :: Hausstaubmilbenallergien :: Schimmelpilzallergien :: Tierhaarallergien :: Medikamentenallergien :: Sonstige atopische/allergische Erkrankungen  | DE-TH |  |
| 8.20 | (8.20) Pflegegrad | choice |  | Pflegegrad 1 :: Pflegegrad 2 :: Pflegegrad 3 :: Pflegegrad 4 :: Pflegegrad 5  |  |  |
| 8.26a | (8.26a) Gesundheitsstörungen und Besonderheiten beim Kind, die nach Meinung der Eltern zu berücksichtigen sind | text |  |  | DE-TH |  |
| 8.51 | (8.51) Operationen Sonstige OP | boolean |  |  | DE-SL |  |
| 8.56 | (8.56) Unfälle Sonstige | choice |  | Nein :: Ja; zu Hause :: Freizeit außer Haus :: Gemeinschaftseinrichtung :: Wegeunfall :: Keine Angabe  | DE-SL |  |
| 8.82 | (8.82) Kur mit welchem Behandlungsschwerpunkt? | string |  |  | DE-TH |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.1a.g | (9.1a.g) Therapien | group | 9.1a = true |  | DE-SN |  |
| 9.3a | (9.3a) Frühförderung | boolean |  |  | DE-BB |  |
| 9.11.g | (9.11.g) Kuren | group |  |  |  |  |
| 9.11.g.1 | (9.11.g.1) Wann | date |  |  |  |  |
| 9.11.g.2 | (9.11.g.2) Behandlungsschwerpunkt | string |  |  |  |  |
| 11 | (11) Arzt | group |  |  |  |  |
| 11.2 | (11.2) Name Kinderarzt | string |  |  |  |  |
| 12 | (12) Sonstiges | group |  |  |  |  |
| 12.23 | (12.23) Fährt ihr Kind frei Fahrrad | boolean |  |  | DE-HB |  |
| 13 | (13) Informationen Eltern | group |  |  |  |  |
| 13.13a | (13.13a) Datenschutzrechtliche Einwilligungerklärung im Rahmen der SEU über Betreuung des Kindes, Angaben zu Gesundheitsstörungen in d. Fam. des Kindes sowie Angaben zur Schwangerschaft und Geburtsverlauf sowie Angaben des betreuenden Kinderarztes. | boolean |  |  | DE-TH |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-TH}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-TH}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-TH}}
    </tab>
</tabs>---
canonical: http://hl7.org/fhir/StructureDefinition/patient-birthPlace
expand: 2
---

# {{page-title}}

⚠️ This is a template for describing your Extension (`StructureDefinition`) resource. To start, update the canonical URL above to the one of your resource. Don't forget to remove this paragraph.

## Metadata

These are the details for this resource:

<fql output="table">
	from
		StructureDefinition
	where
		url = %canonical
	select
		Name: name,
		Description: description,
		Context: context.expression,
		Canonical_URL: url,
		Status: status,
		Version: version
</fql>

## Context

<fql output="inline">
	from
		StructureDefinition
	where
		url = %canonical
	for context select
		'Context': 'This extension can be used on `'+type+'`: `'+expression+'`'
</fql>

## Resource content

These are different views on this resource:

<tabs>
<tab title="Overview">
	This is the tree view:
	{{tree, snapshot}}
</tab>
<tab title="Detailed view">
	This is the detailed view:
	{{dict}}
</tab>
<tab title="XML">
	This is the resource in XML:
	{{xml}}	
</tab>
<tab title="JSON">
	This is the resource in JSON:
	{{json}}
</tab>
<tab title="Link">
	{{link}}
</tab>
</tabs>

## Terminology Bindings

These are the terminology bindings within this resource:

<fql>
	from
    	StructureDefinition
	where
    	url = %canonical
	select
    	join for differential.element
      		select {
				Path: id,
				join
				for binding
				where valueSet.exists()
				select {
					Conformance: strength,
					ValueSet: valueSet}
        	}
</fql>

## Constraints

These are the constraints (invariants) defined within this resource:

<fql>
    from
		StructureDefinition
    where
		url = %canonical
    select
		differential.element {
			Path: id,
			join constraint {
				Id: key,
				Grade: severity,
				Details: human,
				Expression: expression
				}
			}
</fql>





### Use Case Diagram

<plantuml>
  set namespaceSeparator none
  skinparam backgroundcolor transparent

  class "HealthcareProvider-Organization" <<Organization>>
    {
      hospitalid = 12393712
      name = GENERAL HOSPITAL MT. HEALTH
    }
  class Site1 <<Location>>
    {
      locationId = 1001
      name = MT. HEALTH- GENERAL HOSPITAL
    }
  class Site2 <<Location>>
    {
      locationId = 1002
      name =  MT. HEALTH - EMERGENCY DEPARTMENT
    }
  class Ward1 <<Location>>
    {
      locationId = 1001
      departmentId = 032-A
      name = Pediatrics
    }
  class Ward2 <<Location>>
    {
      locationId = 1001
      departmentId = 032-G1
      name = Geriatrics
    }
  class Ward3 <<Location>>
    {
      locationId = 1001
      departmentId = 032-IntensiveCare
      name = Intensive Care      
    }
  class Ward4 <<Location>>
    {
      locationId = 1002
      departmentId = 032-A
      name = Pediatrics
    }
  class Ward5 <<Location>>
    {
      locationId = 1002
      departmentId = 032-Hemodialysis
      name = Hemodialysis
    }

  "HealthcareProvider-Organization"  <-- Site1: Location.managingOrganization
  "HealthcareProvider-Organization"  <-- Site2: Location.managingOrganization

  Site1 <-- Ward1 : Location.partOf
  Site1 <-- Ward2 : Location.partOf
  Site1 <-- Ward3 : Location.partOf
  Site2 <-- Ward4 : Location.partOf
  Site2 <-- Ward5 : Location.partOf
</plantuml>