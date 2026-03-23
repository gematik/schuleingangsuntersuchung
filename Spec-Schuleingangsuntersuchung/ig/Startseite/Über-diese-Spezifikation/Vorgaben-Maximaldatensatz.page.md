## {{page-title}}

### Versionierung

Der Maximaldatensatz, sowie die länderspezifischen Spezifikationen müssen eine Version führen und diese muss bei jeder Anpassung entsprechend aktualisiert werden. Die Versionierung erfolgt nach dem Schema MAJOR.MINOR.PATCH, wobei:
- **MAJOR**: Erhöht sich, wenn Änderungen an bestehenden Fragen vorgenommen werden, die die inhaltliche Bedeutung verändern, Fragen entfernt werden oder neue Fragen hinzugefügt werden, die nicht abwärtskompatibel sind.
- **MINOR**: Erhöht sich, wenn neue Elemente hinzugefügt werden, die abwärtskompatibel sind.
- **PATCH**: Erhöht sich, wenn redaktionelle Fehler behoben werden, ohne, dass inhaltliche Änderungen vorgenommen werden.

Die Version eines Fragebogen muss nicht der Version des Package entsprechen.

#### QuestionnaireResponse

In der QuestionnaireResponse muss die Version des Fragebogens angegeben werden, auf den sich die Antwort bezieht. Dies erfolgt über die Angabe der Version in der Canonical URL des Questionnaires, z.B.:
```
"questionnaire": "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenNI|1.0.0"
```

### Vorgaben zur Darstellung

Die definierten Questionniare sind im jeweiligen Realm (Bundesland) vollständig in der Benutzeroberfläche darzustellen. Ausgefüllte Fragebögen sind als QuestionnaireResponse-Ressourcen zu erstellen und zu persistieren.

### ICD-10-GM

ICD-10-GM ist nicht mehr Contained innerhalb der ValueSets. An dieser Stelle verweisen wir auf die Anbindung des [Zentraler Terminologieserver](https://terminologien.bfarm.de/fhirpackages.html) für das deutsche Gesundheitswesen. Hier können die aktuellen ValueSets abgefrufen werden und auf einem internen Terminologieserver bereitgestellt werden.