## {{page-title}}

### Elternfragebogen Schuleingangsuntersuchung Baden-Württemberg

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-BW.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.0c | (4.0c) Wie viele Stunden ist das Kind pro Woche in einer Kindertageseinrichtung? | integer |  |  | DE-BW |  |
| 4.1b | (4.1b) Wie lange besucht Ihr Kind bis jetzt eine Kindertageseinrichtung? | choice |  | Nie :: 2-3 Jahre :: Bis zu 1 Jahr :: 3 Jahre und länger :: 1-2 Jahre  | DE-BW |  |
| 4.10 | (4.10) Bekommt oder wartet Ihr Kind auf eine spezielle Förderung oder Therapie? | boolean |  |  | DE-SN |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.2a | (9.2a) Sprachförderung | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2a.1 | (9.2a.1) Begonnen | date | 9.2a = Y |  | DE-BW |  |
| 9.2a.2 | (9.2a.2) Beendet | date | 9.2a = Y |  | DE-BW |  |
| 9.2b | (9.2b) Logopädie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2b.1 | (9.2b.1) Begonnen | date | 9.2b = Y |  | DE-BW |  |
| 9.2b.2 | (9.2b.2) Beendet | date | 9.2b = Y |  | DE-BW |  |
| 9.2c | (9.2c) Ergotherapie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2c.1 | (9.2c.1) Begonnen | date | 9.2c = Y |  | DE-BW |  |
| 9.2c.2 | (9.2c.2) Beendet | date | 9.2c = Y |  | DE-BW |  |
| 9.2d | (9.2d) Psychotherapie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2d.1 | (9.2d.1) Begonnen | date | 9.2d = Y |  | DE-BW |  |
| 9.2d.2 | (9.2d.2) Beendet | date | 9.2d = Y |  | DE-BW |  |
| 9.2e | (9.2e) Andere Beratungs-, Förder- oder Heilmaßnahmen | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2e.1 | (9.2e.1) Begonnen | date | 9.2e = Y |  | DE-BW |  |
| 9.2e.2 | (9.2e.2) Beendet | date | 9.2e = Y |  | DE-BW |  |
| 10 | (10) Medienkonsum | group |  |  |  |  |
| 10.3a | (10.3a) Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Wochentag: | choice |  | Gar nicht :: Bis 0,5 Stunden :: 0,5 bis 1 Stunde :: 1 bis 2 Stunden :: 2 bis 4 Stunden :: Mehr als 4 Stunden  | DE-BW |  |
| 10.4a | (10.4a) Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Samstag/ Sonntag: | choice |  | Gar nicht :: Bis 0,5 Stunden :: 0,5 bis 1 Stunde :: 1 bis 2 Stunden :: 2 bis 4 Stunden :: Mehr als 4 Stunden  | DE-BW |  |
| 13 | (13) Informationen Eltern | group |  |  |  |  |
| 13.0 | (13.0) Geschlecht 1. Elternteil | choice |  | männlich :: weiblich :: unbekannt :: divers  | DE-BW |  |
| 13.0a | (13.0a) Geschlecht 2. Elternteil | choice |  | männlich :: weiblich :: unbekannt :: divers  | DE-BW |  |
| 13.1b | (13.1b) Schulabschluss 1. Elternteil | choice |  | Weniger als 10. Klasse :: 10. Klasse :: Abitur / FH-Reife  | DE-BW |  |
| 13.2b | (13.2b) Schulabschluss 2. Elternteil | choice |  | Weniger als 10. Klasse :: 10. Klasse :: Abitur / FH-Reife  | DE-BW |  |
| 13.5a | (13.5a) Berufstätigkeit 1. Elternteil | choice |  | Nicht erwerbstätig :: Teilzeit :: Vollzeit :: Sonstiges  | DE-BW |  |
| 13.6a | (13.6a) Berufstätigkeit 2. Elternteil | choice |  | Nicht erwerbstätig :: Teilzeit :: Vollzeit :: Sonstiges  | DE-BW |  |
| 13.17 | (13.17) Deutsche Staatsangehörigkeit? Elternteil 1 | boolean |  |  | DE-BW |  |
| 13.18 | (13.18) Deutsche Staatsangehörigkeit? Elternteil 2 | boolean |  |  | DE-BW |  |
| 13.19 | (13.19) in Deutschland geboren? Elternteil 1 | boolean |  |  | DE-BW |  |
| 13.20 | (13.20) in Deutschland geboren? Elternteil 2 | boolean |  |  | DE-BW |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-BW}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-BW}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-BW}}
    </tab>
</tabs>