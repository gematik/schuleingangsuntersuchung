## {{page-title}}

### Prolog

In der Regel sind Entwickler, welche die Spezifikation anwenden oder
andere Spezifikateure die Review-Partner von FHIR-Spezifikationen. Im
ÖGD haben wir die Situation, dass auch Fachexperten das Review
durchführen. Um eine bessere Verständlichkeit zu erzeugen, sind weitere
Informationsdarstellungen in dieser Spezifikation enthalten. Diese
Anleitung soll unterstützen, so dass ohne tiefere FHIR-Kenntnisse ein
Review gut vorgenommen werden kann.

### Inhalte der Spezifikation

-   Profile (Datenobjekte mit Datenelementen)

-   ValueSets (Wertemenge für ein Datenelement)

-   CodeSysteme (Verwendete Codesysteme -- Grundlage der ValueSets)

-   Extensions (Erweiterungen über die FHIR-Standard-Ressourcen hinaus)

-   Questionnaire (Fragebögen)

Zum **Einstieg ins Review ist der Implementierungsleitfaden** geeignet.
Ein Review wird empfohlen für folgende Inhalte:

-   Einführende Informationen zur Spezifikation ("Über diese
    Spezifikation")

-   Fragebögen

Das Profil zur Transformation von XMeld in FHIR enspricht der
XÖV-Spezifikation zum Abholen der Personendaten aus dem
Einwohnermeldeamt. Bei der Schuleingangsuntersuchung sind mit dem Review
der Fragebögen alle spezifizierten Profile inkludiert.

**Die Maximaldatensatz-Fragebögen zur Schuleingangsuntersuchung sind in
folgenden weiteren Formaten verfügbar, so dass diese einfacher zu
kommentieren sind:**

Als Tabelle aller Fragen der Schuleingangsuntersuchung auf Simplifier:

-   [Sorgeberechtigtenfragebogen](https://simplifier.net/guide/Schuleingangsuntersuchung/Startseite/Sorgeberechtigtenfragebogen.page.md?version=current)

-   [Untersuchungsbogen](https://simplifier.net/guide/Schuleingangsuntersuchung/Startseite/Untersuchungsbogen.page.md?version=current)

Gerendert in einem Demonstrator-Questionnaire-Renderer:

-   <https://echinos-eu.github.io/seu-demo/>

-   Dies ist eine beispielhafte Darstellung, bei Einbindung in ein
    Portal/GA-Fachanwendung kann das Aussehen durch den Hersteller
    angepasst werden. Alle englischen Begriffe (bspw. true/false) werden
    durch den Demonstratror erzeugt und würden in einem Produktivbetrieb
    auf Deutsch dargestellt werden

### Beim Review der Fragebögen ist zu berücksichtigen

-   Die Demonstratoren zeigen, je nach Antwortauswahl nicht alle
    bedingten Fragen auf einmal an, da Felder erst aufgehen, wenn eine
    andere Frage entsprechend beantwortet, ist.

-   Die Tabellen auf Simplifier enthalten alle Fragen und sind daher
    besser geeignet um die Fragen zu reviewen.

-   Erläuterung der Spalten:

    -   Link-ID: Eindeutige ID der Frage;\
        die ID wir auch im Demonstrator angezeigt

    -   Text: Fragetext

    -   Typ: Datentyp der Antwort

    -   Enable When: Bedingte Frage die nur dargestellt wird, wenn die
        Bedingung erfüllt ist.\
        Beispiel: "1.6 Kind in Deutschland geboren = false" 🡪 die
        Folgefrage wird dem Nutzer nur dargestellt, falls diese 1.6 mit
        "false = nicht in Deutschland geboren" beantwortet wurde. Dann
        folgt die Frage "1.6.1 seit wann wohnt das Kind in Deutschland".

    -   Wertemenge: Antwortmöglichkeiten der Frage bei Fragetypen choice
        & open-choice (Es werden maximal 10 Antwortmöglichkeiten
        angezeigt)

    -   Herkunft: Bundesland welches die Frage in den Fragebogen
        eingebracht hat.

    -   Nutzung: Bundesländer welche diese Frage nutzen;\
        aktuell noch nicht genutzt, da dies aus den zukünftigen
        spezifischen Spezifikationen abgeleitet werden kann.

-   Fehlende Felder, oder Änderungswünsche an einem bestehenden Feld
    werden mittels der strukturierten Review-Excel-Tabelle erfasst.
