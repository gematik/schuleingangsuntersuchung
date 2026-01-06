## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Bremen

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-HB.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 0 | (0) Schule & Vorgangsnummer | group |  |  |  |  |
| 0.1 | (0.1) Name der Schule | string |  |  |  |  |
| 0.2 | (0.2) Vorgangsnummer | string |  |  |  |  |
| 0.9 | (0.9) Schulnummer der Anmeldeschule | integer |  |  | DE-HB |  |
| 0.10 | (0.10) Datum der Untersuchung | date |  |  | DE-HB |  |
| 0.11 | (0.11) Aufnahmeschule (bezeichnet die Schule zu der das  Kind wirklich geht) | string |  |  | DE-HB |  |
| 0.12 | (0.12) Ortsteilnummer (bezogen auf den Wohnort des Kindes) | string |  |  | DE-HB |  |
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.4 | (1.4) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.0 | (2.0) Beziehung | choice |  | Mutter :: Vater :: Leibliche Mutter :: Leiblicher Vater :: Adoptiv-/Pflegemutter :: Adoptiv-/Pflegevater :: Natürliche Person (nicht spezifiziert) :: Jugendamt :: Juristische Person :: ... | DE-HH |  |
| 2.1 | (2.1) Geschlecht | choice |  | männlich :: weiblich :: unbekannt :: divers  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.4 | (2.4) PLZ | string |  |  |  |  |
| 2.5 | (2.5) Wohnort | string |  |  |  |  |
| 2.6 | (2.6) Straße | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 2.7a | (2.7a) Handynummer | string |  |  | DE-HH |  |
| 2.8 | (2.8) Email | string |  |  |  |  |
| 2.9 | (2.9) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 2.10 | (2.10) Herkunftsland | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 2.10a | (2.10a) Herkunftsland Deutsch? | boolean |  |  | DE-RP |  |
| 2.11 | (2.11) Muttersprache | choice |  | keine Angabe :: Andere :: Afar :: Abchasisch :: Achinesisch :: Acholi :: Dangme :: Adygeisch :: Afrikaans :: ... |  |  |
| 2.12 | (2.12) Geburtsdatum | date |  |  |  |  |
| 2.13 | (2.13) Zusammenlebend | choice |  | Ja :: Nein :: Zeitweise  | DE-HH |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.1 | (5.1) Dauer der Schwangerschaft (in Wochen) | integer |  |  |  |  |
| 5.1.b | (5.1.b) Dauer der Schwangerschaft (ergänzende Tage) | integer |  |  | DE-HB |  |
| 5.2 | (5.2) Geburtsgewicht (in Gramm) | integer |  |  |  |  |
| 5.11 | (5.11) APGAR | string |  |  | DE-HB |  |
| 5.12 | (5.12) pH- Wert | string |  |  | DE-HB |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-HB}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-HB}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-HB}}
    </tab>
</tabs>