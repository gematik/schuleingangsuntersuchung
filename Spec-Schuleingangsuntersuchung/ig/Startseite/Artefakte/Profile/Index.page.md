## {{page-title}}

Die folgenden beiden Profile bilden die Stammdaten aus dem XMeld Modul in FHIR ab. XMeld ist das XInneres-Fachmodul der Innenverwaltung für den elektronischen Datenaustausch im Meldewesen und mit dem Meldewesen. Es ist Kern eines elektronischen Informationsverbundes zwischen den Meldebehörden und den Kommunikationspartnern der Meldebehörden.

### Profil „Person"

Das Profil **Person** (basierend auf FHIR Patient) stellt die untersuchte Person (das Schulkind) dar und enthält deren Basisdaten:
- **Identifikatoren und personenbezogene Daten**: Name, Geburtsdatum, Geschlecht (inklusive amtlich-administratives Geschlecht)
- **Adressen**: Unterscheidung zwischen Straßenanschrift und Postfach mit erweiterten Adressfeldkomponenten (Straße, Hausnummer, Adresszusatz)
- **XMeld-spezifische Extensions**: Geburtsort, Staatsangehörigkeit(en), Übermiittlungssperren (Religion, Politik, Jubiläen, Adressbuch, Bundeswehr) sowie Migrationshindergrund und Deutschkenntnisse
- **Kindbezogene Informationen**: Kitaname und Kitaid zur Verknüpfung mit Betreuungseinrichtungen

### Profil „VerwandtePerson"

Das Profil **VerwandtePerson** (basierend auf FHIR RelatedPerson) stellt Sorgeberechtigte, Erziehungsberechtigte und andere relevante Bezugspersonen der untersuchten Person dar:
- **Beziehungsdefinition**: Beziehungsart zur untersuchten Person (z. B. Eltern, Erziehungsberechtigte)
- **Kontaktinformationen**: Namen und Kontaktdaten der Verwandten Person
- **XMeld-Kerninformationen**: Auskünftssperren (Grund und Frist) sowie Datenendeinformation
- **Verknüpfung**: Referenz zur Patientenressource (Person) zur eindeutigen Zuordnung

### Integration mit Questionnaires

Die Profile werden dazu verwendet, die im IG definierten Questionnaires einen "Patientenbezug" geben zu können. Dies ermöglicht es, Fragebogendaten kontextbezogen an die richtige Person zu binden. Mittels Extensions sind proprietäre Informationen aus dem XMeld abgebildet. Diese Informationen wurden teilweise nicht semantisch standardisiert, sondern folgen den originalen XMeld-Strukturen, um eine nahtlose Integration mit bestehenden Meldewesen-Systemen zu gewährleisten.

### Quelle und Hintergrund

Detaillierte Informationen zur XMeld-Spezifikation finden Sie unter: https://www.xrepository.de/details/urn:xoev-de:kosit:standard:xinneres.xmeld_1.6.1

{{index:current}}