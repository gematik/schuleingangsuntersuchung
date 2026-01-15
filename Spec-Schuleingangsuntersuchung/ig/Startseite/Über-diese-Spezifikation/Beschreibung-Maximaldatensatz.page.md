## {{page-title}}

### Beschreibung des Maximalansatzes für FHIR-Spezifikationen im ÖGD

**Ausgangssituation**
In den Bundesländern existieren heute unterschiedliche, fachliche Datenmodelle. Teilweise gibt es Unterschiede zwischen Gesundheitsämtern in einem Bundesland. Diese Unterscheide sind auch in der differenzierten Gesetzgebung der Länder begründet.  
Es ist nicht möglich, eine interoperable Spezifikation für einen Anwendungsfall zu erarbeiten, dennoch sollen Synergien bestmöglich genutzt werden.

**Übergreifende Ziele**
Vision der ELFA Maßnahme IOP ist es, ein übergreifend, homogenes Datenmodell zu schaffen. Jedoch ist dies heute nicht realistisch möglich.

Daher werden folgende Ziele verfolgt:

- Identifikation der bei allen übereinstimmenden Datenelemente und einheitliche Festlegungen für diese

- Identifikation der unterschiedlichen Datenelemente mit der jedoch gleichen Bedeutung (z.B.: Geburtsdatum und Alter) und Weitergabe an die Fachlichkeit zur Erarbeitung eines übergreifenden Konsens

- Erarbeitung einer standardisierten Methode zur Darstellung, Kommunikation und Erarbeitung eines fachlichen Datenmodell

- Erarbeitung einer Vorgehensweise zur schrittweisen, kontinuierlichen Erweiterung der übergreifend, einheitlichen Datenelemente

**Folgen für die Ausarbeitung interoperabler Datenspezifikationen**

Für die technische Spezifikation sind zwei Varianten denkbar:

- Variante 1: Nur die Datenelemente, welche im Konsens sind, werden als interoperabler Standard spezifiziert und die differierenden Datenelemente werden von den dezentralen Verantwortlichen festgelegt und sind inhomogen.

- Variante 2: Es werden alle Datenelemente spezifiziert und zentral koordiniert festgelegt. Die Datenelemente im Konsens sind dabei interoperabel. Die dezentralen Datenelemente sind inhomogen. Jedoch wird darauf im Zuge der Netzwerkarbeit und Kommunikation mit den Verantwortlichen hingearbeitet, dass die Konsensmenge sich kontinuierlich vergrößert. Die Vorgehensweise ist für alle transparent und eine schrittweise Annäherung soll von Release zu Release unterstützt werden.

**Maximalansatz**

Anwendung der Variante 2: Alle Datenelemente aller dezentralen landesspezifischen Spezifikationen werden zentral koordiniert spezifiziert und veröffentlicht.

**Vorteile**

- Hersteller haben an einer Stelle alle unterschiedlichen Datenmodelle spezifiziert gemäß einer Standardmethode vorliegen und können effizienter die Softwareanpassungen vornehmen

- Einheitliche Spezifikationsmethode und klare vereinbarte Phasen zur Konsensbildung.

- Transparente Dokumentation aller Datenmodelle und Spezifikationen, so dass ein Konsens von jedem dezentralen Spezifikateur oder Fachverantwortlichen selbstständig ohne Meeting erarbeitet werden kann.

- Sprache, Vorgehensweisen und Ziele sind einheitlich und sorgen für eine effiziente, schrittweise Annäherung.

**Nachteile**
- Abgestimmtes Release-Vorgehen führt zu Terminen, welche für alle verbindlich sind (z.B. Änderungen für die Fragebögen der Schuleingangsuntersuchung werden nicht abhängig vom Schulbeginn festgelegt, sondern abhängig von einem für alle Bundesländer möglichen Termin).

**Ausprägungen der Spezifikationen**

- Es wird eine übergreifende Spezifikation „Maximalansatz" spezifiziert. Diese Spezifikation wird in der Software-Entwicklung nicht verwendet bzw. in Fachanwendungen produktiv eingesetzt.

- Für jede Umsetzung in den Fachanwendungen wird je Bundesland zum Beispiel eine spezifische Spezifikation erstellt. Diese Spezifikationen werden in der Software-Entwicklung realisiert und entsprechend produktiv gesetzt.

- In simplifier werden für jede Anwendungsfallgruppe (z.B.: SEU - Schuleingangsuntersuchung) ein Projekt geführt. In dem Projekt sind sowohl die Spezifikation „Maximalansatz" als auch die spezifischen Spezifikationen enthalten. Am Beispiel SEU:
  - Questionnaire Sorgeberechtigtenfragebogen
  - Stammdaten
- Wenn eine landesspezifische Spezifikation neu angelegt werden soll oder geänderte Datenelemente benötigt werden, ist die Änderung sowohl in der Spezifikation des Maximaldatensatzes als auch in der spezifischen Spezifikation vorzunehmen. Damit einhergehend entsteht ein weiteres Release für die landesspezifische Spezifikation als auch für den Maximaldatensatz für den Anwendungsfall. Ein Hersteller sorgt in seiner Fachanwendung dafür, dass das im Kontext des Einschulungsjahres passende Release der spezifischen Spezifikation herangezogen wird.

**Release-Prozess**

- bis zu einem Zeitpunkt x werden alle Veränderungen für die Fragebögen des nächsten Jahres an eine Stelle gemeldet

- diese Stelle erstellt eine Übersicht aller gewünschten Veränderungen

- die Anforderer nehmen aufgrund der Übersicht und gewonnen Transparenz eine entsprechende Konsensausweitung vor

- Anpassung der Spezifikationen (Maximaldatensatz als auch landesspezifische Spezifikationen)

- Kommentierungsphase durch die Anforderer, Festschreibung des neuen Release

- Umsetzung der Hersteller in der Software