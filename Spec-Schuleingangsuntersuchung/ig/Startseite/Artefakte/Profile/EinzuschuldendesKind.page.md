---
canonical: https://www.oegd.de/fhir/seu/StructureDefinition/EinzuschuldendesKind
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
        {{render:EinzuschuldendesKindBeispiel}}
    </tab>
    <tab title="XML">      
        {{xml:EinzuschuldendesKindBeispiel}}
    </tab>
    <tab title="JSON">
        {{json:EinzuschuldendesKindBeispiel}}
    </tab>
    <tab title="Link">
        {{link:EinzuschuldendesKindBeispiel}}
    </tab>
</tabs>