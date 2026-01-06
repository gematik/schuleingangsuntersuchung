# {{page-title}} 

<img src="https://raw.githubusercontent.com/gematik/spec-ISiK-Basismodul/master-isik-stufe-2/Material/Gematik_Logo_Flag.png" alt="gematik logo" width="400">

## ÖGD Schuleingangsuntersuchung

<!-- hier Projektlink einfügen-->
<a href="https://simplifier.net/schuleingangsuntersuchung" class="btn btn-primary">zum Projekt auf Simplifier</a>

<!--Bei Verwendung von GitHub Workflows: Build Status einfügen, z.B.:
[![CI (FHIR Validation)](https://github.com/meineOrganisation/meinProjekt/actions/workflows/main.yml/badge.svg)](https://github.com/meineOrganisation/meinProjekt/actions/workflows/main.yml)
-->

### Zusammenfassung
Die Schuleingangsuntersuchung dient der Überprüfung des Gesundheitszustands von Kindern und der Sicherstellung, dass diese optimal auf den Schuleintritt vorbereitet sind. Im gesamten Prozess der Schuleingangsuntersuchung sind verschiedene Organisationen und auch die Sorgeberechtigten der einzuschulenden Kinder involviert. Ziel ist es, auf Grundlage von HL7 FHIR einen Standard zu entwickeln, mit dem eine interoperable Datenübertragung von Antworten aus dem sogenannten Sorgeberechtigtenfragebogen an die Gesundheitsämter erfolgen kann. Das Novum bildet hierbei der Maximaldatensatz, aus dem sich die jeweiligen länderspezifischen Fragebögen speisen.

Die FHIR-Spezifikation bietet eine standardisierte und interoperable Methode zur Erfassung und Übermittlung von Gesundheitsdaten im Zusammenhang mit der Schuleingangsuntersuchung. Die Spezifikation wurde im Rahmen der ELFA-Maßnahme Interoperabilitätsanforderungen verschiedener Fachanwendungen und Plattformlösungen (ELFA = Ein Land für alle) in enger Zusammenarbeit mit Fachpersonen aus dem Öffentlichen Gesundheitsdienst, insbesondere dem Kinder- und Jugendärztlichen Dienst im ÖGD sowie mit IT-Expert:innen und FHIR-Spezialist:innen entwickelt und stellt sicher, dass Datenschutz und Sicherheit gewährleistet sind.

Der Implementierungsleitfaden beinhaltet den Sorgeberechtigtenfragebogen auf Basis eines FHIR-Questionnaire, sowie die Stammdaten der beteiligten Personen als Profil. Die Spezifikation dient als Leitfaden für Entwickler:innen, Gesundheitseinrichtungen und Schulen, um sie in ihre Systeme zu integrieren und den Prozess der Schuleingangsuntersuchung zu optimieren. 

Die Spezifikation befindet sich aktuell in einer Pilotierungsphase in vier Bundesländern unter Beteiligung von jeweils einem teilnehmenden Gesundheitsamt und dessen Softwarehersteller für die Fachverfahren.


### Anfangs- und (geplantes) Enddatum

Anfangsdatum: September 2023
Enddatum: Noch nicht geplant

### Status

Version: 1.0.0-ballot

Reifegrad: Draft 

Abstimmungsverfahren: Kommentierungsverfahren der Länder läuft

### Review und Kommentierung

Leitfaden für Kommentierende: 

### Beteiligte Organsisationen
* ELFA Maßnahme Interoperabilität (Förderprojekt Pakt ÖGD)
* Bundesministerium für Gesundheit (IOP ÖGD Task Force)
* gematik GmbH
* Gefyra GmbH

### Fürsorger
<!-- Namen und Kontaktdaten der verantwortlichen Personen /Ansprechpartner-->
* Patrick Werner (pw@gefyra.de)
* Patrick Werner (pw@echinos.eu)