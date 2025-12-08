## {{page-title}}

### Beschreibung des Maximalansatzes für FHIR-Spezifikationen im ÖGD

**Ausgangssituation**
In den Bundesländern existieren heute unterschiedliche, fachliche Datenmodelle. Teilweise gibt es Unterschiede zwischen Gesundheitsämtern in einem Bundesland. Diese Unterscheide sind auch in der differenzierten Gesetzgebung der Länder begründet.  
Es ist nicht möglich, eine interoperable Spezifikation für einen Anwendungsfall zu erarbeiten, dennoch sollen Synergien bestmöglich genutzt werden.

**Übergreifende Ziele**
Ziel der ELFA Maßnahme IOP ist es, ein übergreifend, homogenes Datenmodell zu schaffen. Jedoch ist dies heute nicht realistisch möglich.

Daher werden folgende Ziele verfolgt:

- Identifikation der bei allen übereinstimmenden Datenelemente und einheitliche Festlegungen für diese

- Identifikation der unterschiedlichen Datenelemente mit der jedoch gleichen Bedeutung (z.B.: Geburtsdatum und Alter) und Erarbeitung eines übergreifenden Konsens

- Standardisierung der Methode zur Darstellung, Kommunikation und Erarbeitung eines fachlichen Datenmodell

-   Erarbeitung einer Vorgehensweise zur schrittweisen, kontinuierlichen Erweiterung der übergreifend, einheitlichen Datenelemente

**Folgen für die Ausarbeitung interoperable Datenspezifikationen**

Für die technische Spezifikation sind zwei Varianten denkbar:

- Variante 1: Nur die Datenelemente, welche im Konsens sind, werden als interoperabler Standard spezifiziert und die differierenden Datenelemente werden von den dezentralen Verantwortlichen festgelegt und sind inhomogen.

- Variante 2: Es werden alle Datenelemente spezifiziert und zentral koordiniert festgelegt. Die Datenelemente im Konsens sind interoperabel. Die dezentralen Datenelemente sind auch inhomogen. Jedoch wird darauf geachtet, dass die Konsensmenge sich kontinuierlich vergrößert. Die Vorgehensweise für alle transparent ist und eine schrittweise Annäherung von Release zu Release unterstützt wird.

**Maximalansatz**

Variante 2 mit allen Datenelementen aller notwendigen dezentraler spezifischer Spezifikationen werden zentral koordiniert spezifiziert und veröffentlicht.

**Vorteile**

- Hersteller haben an einer Stelle alle unterschiedlichen Datenmodelle spezifiziert gemäß einer Standardmethode vorliegen und können effizienter die Softwareanpassungen vornehmen

- Einheitliche Spezifikationsmethode und klare vereinbarte Phasen zur Konsensbildung.

- Transparente Dokumentation aller Datenmodelle und Spezifikationen, so dass ein Konsens von jedem dezentralen Spezifikateur oder Fachverantwortlichen selbstständig ohne Meeting erarbeitet werden kann.

- Sprache, Vorgehensweisen und Ziele sind einheitlich und sorgen für eine effiziente, schrittweise Annäherung.

**Nachteile**
- Abgestimmtes Release-Vorgehen führt zu Terminen, welche für alle verbindlich sind. (z.B. Änderungen für die Fragebögen der Schuleingangsuntersuchung wird nicht abhängig vom Schulbeginn festgelegt, sondern abhängig von einem für alle Bundesländer möglichen Termin)

**Ausprägungen der Spezifikationen**

- Für jeden Anwendungsfall wird eine Spezifikation „Maximalansatz" spezifiziert. Diese Spezifikation wird in der Software-Entwicklung nicht verwendet bzw. in Fachanwendungen produktiv eingesetzt.

- Für jede Umsetzung in den Fachanwendungen wird je Bundesland zum Beispiel eine spezifische Spezifikation erstellt. Diese Spezifikationen werden in der Software-Entwicklung realisiert und entsprechend produktiv gesetzt.

- In simplifier werden für jede Anwendungsfallgruppe (z.B.: SEU - Schuleingangsuntersuchung) ein Projekt geführt. In dem Projekt sind sowohl die Spezifikation „Maximalansatz" als auch die spezifischen Spezifikationen enthalten. Am Beispiel SEU:
  - Questionnaire Elternfragebogen (1 + n)
  - Questionnaire Untersuchungsbogen (1+n)
  - Profile zu Elternfragebogen und Untersuchungsbogen (1+n)
  - Stammdaten aus XMeld (1)    
- Wenn eine spezifische Spezifikation neu oder geänderte Datenelemente benötigt, ist die Änderung sowohl in der Spezifikation des Maximaldatensatzes als auch in der spezifischen Spezifikation vorzunehmen. Es entsteht ein weiteres Release für die spezifische Spezifikation als auch dem Maximaldatensatz für einen Anwendungsfall. Ein Hersteller sorgt in seiner Fachanwendung dafür, dass das im Kontext passende Release der spezifischen Spezifikation herangezogen wird.

**Release-Prozess**

- bis zu einem Zeitpunkt x werden alle Veränderungen für die Fragebögen des nächsten Jahres an eine Stelle gemeldet

- diese Stelle erstellt eine Übersicht aller gewünschten Veränderungen

- die Anforderer nehmen aufgrund der Übersicht und gewonnen Transparenz Konsensausweitung vor

- Anpassung der Spezifikationen (Maximaldatensatz als auch spezifische Spezifikationen)

- Kommentierungsphase durch die Anforderer, Festschreibung des neuen Release

- Umsetzung der Hersteller in der Software