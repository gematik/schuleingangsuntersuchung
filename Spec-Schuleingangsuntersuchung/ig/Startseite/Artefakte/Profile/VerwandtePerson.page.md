---
canonical: https://www.oegd.de/fhir/seu/StructureDefinition/VerwandtePerson
expand: 1
---

## {{link}}

### Metadaten

<fql>
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url,
    Status: status,
    Version: version,
    Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Constraints/Invarianten
<fql>
from StructureDefinition where url = %canonical for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
</fql>

### Beispiele
<!-- Funktion der Beispiele beschreiben!-->
#### Beispieldatensatz
<tabs>
    <tab title="Übersicht">      
        {{render:PersonBeispiel}}
    </tab>
    <tab title="XML">      
        {{xml:PersonBeispiel}}
    </tab>
    <tab title="JSON">
        {{json:PersonBeispiel}}
    </tab>
    <tab title="Link">
        {{link:PersonBeispiel}}
    </tab>
</tabs>