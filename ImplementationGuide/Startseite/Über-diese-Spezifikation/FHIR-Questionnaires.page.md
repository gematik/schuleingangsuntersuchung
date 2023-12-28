## {{page-title}}

In dieser Spezifikation werden im hohen Maße FHIR-Questionnaires (FHIR-Repräsentation von Formularen und Fragebögen) verwendet. Dies geht intuitiv gegen das Paradigma von FHIR: Das Zerlegen von Datensätzen in einzelne wiederverwendbare Ressourcen. Auf dieser Seite werden daher die technischen und organisatorischen Hintergründe für diese Design-Entscheidung erläutert.

### Hintergrund

Die Grundidee von FHIR besteht darin, gesundheitsrelevante Informationen "objektorientiert" abzubilden, so dass einzelne Informations-Bausteine aus einem Kommunikationskontext (z.B. einem Arztbrief) herausgelöst, und zu neuen Kontexten (z.B. einer Patientenakte, einem Rezept, einem Meldedatensatz) rekombiniert werden können. 

In der Realität, wie wir sie heute im Deutschen Gesundheitswesen vorfinden, ist diese Wiederverwendbarkeit jedoch nicht gewährleistet. Meist aufgrund von datenschutzrechtlichen Vorgaben und dem Gebot der Datensparsamkeit, verbieten einzelne FHIR-basierte Spezifikationen die Verwendung einzelner Elemente von Ressourcen.

Ein weiteres Problem zeigt sich bei der Umstellung einer bisher formularbasierten Datenerhebung auf eine objektorientierte FHIR-basierte Spezifikation. Durch Zerlegung eines initial überschaubaren Datensatzes in einzelne FHIR-Bausteine, kann die resultierende Spezifikation schnell mehrere hundert Einzelobjekte enthalten.

Das Ziel muss es sein, für den ÖGD, und somit die Schuleingangsuntersuchung, einen Weg zu finden, wie die Wiederverwendbarkeit von Daten aus den Primärsystemen gewährleistet und Meldedaten mit geringstmöglicher Komplexität erhoben werden können, ohne dabei Kompromisse beim Datenschutz und dem Gebot der Datensparsamkeit eingehen zu müssen.

### FHIR Questionnaires
Ein Questionnaire (oder auf Deutsch: ein Fragebogen) ist eine organisierte Sammlung von Fragen, die dazu dienen, Informationen von Patienten, Leistungserbringern oder anderen an der Gesundheitsversorgung beteiligten Personen zu erhalten. Sie können einfache, flache Listen von Fragen sein oder hierarchisch in Gruppen und Untergruppen organisiert sein, die jeweils Fragen enthalten. Der Fragebogen definiert die zu stellenden Fragen, wie sie geordnet und gruppiert werden, sowie alle dazwischen liegenden Anweisungstexte und die Beschränkungen für die zulässigen Antworten. Die Ergebnisse eines Fragebogens können mit der Ressource QuestionnaireResponse mitgeteilt werden.

In Kurz: Die Questionnaire-Ressource standardisiert, wie Daten erfasst werden und nimmt dabei eine wesentlich anwender- und UI-nähere Stellung ein, als das bei FHIR-Ressourcen üblicherweise der Fall ist.

#### FHIR QuestionnaireResponse
Während die Questionnaire-Ressource eine patientenunabhängige Definition eines Formulars darstellt, dient die QuestionnaireResponse-Ressource dazu, die von einer konkreten Person zu einem konkreten Zeitpunkt gegebenen Antworten zu erfassen und zu kommunizieren.

Jede QuestionnaireResponse-Ressource verweist auf einen konkreten Questionnaire und ordnet jedem dort definierten Item einen Antwortwert zu.

### Vorteile von Questionnaires in der Schuleingangsuntersuchung
Eine erhöhte Verwendung von FHIR-Questionnaires in der Schuleingangsuntersuchung bietet daher mehrere Vorteile. 

1. Questionnaires sind in der Lage, Informationen sehr effizient zu erfassen. Vereinbarungen (z.B. in Bezug auf die zu verwendende Maßeinheit) müssen nur einmal im Questionnaire definiert werden, in der QuestionnaireResponse genügt die Angabe des Messwertes und der Verweis auf die Definition. Dies erlaubt eine einfachere Erstellung von Questionnaires in Kooperationsprojekten der Bundesländer. 
2. Der elektronische Datenaustausch wird durch in sich abgeschlossene Informationseinheiten erheblich vereinfacht und standardisiert. Daten können mittels FHIR SDC wiederverwendet werden und reduzieren die Doppeleingaben. Dies fördert einen nahtlosen Austausch von Daten zwischen Gesundheitsämtern und anderen Einrichtungen.
3. Durch die Nutzung von FHIR SDC können unterschiedliche Softwarelösungen in den Gesundheitsämtern der Bundesländer auf eine gemeinsame interoperable Basis gestellt werden. Dies reduziert den Medienbruch und ermöglicht ein paralleles Arbeiten an einem Fall.