---
subject: https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand
expand: 1
---

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand'
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
```


### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

### Terminology-Bindings
<!-- TODO: FQL funktioniert noch nicht wie vorgesehen-->
@```
from 
    StructureDefinition
where 
    url = 'https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'https://www.oegd.de/fhir/seu/StructureDefinition/Mehraufwand' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```

### RestFul API

<tabs>
    <tab title="Interaktionen"> 
@```
from
	CapabilityStatement
where rest.resource.type = 'Observation' 
for  rest.resource.interaction
 select Interaktion: code, Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
```
    </tab>
    <tab title="Suchparameter">
@```
from
	CapabilityStatement
where rest.resource.type = 'Observation' 
for rest.resource.searchParam  
select Parameter: name, Typ: type, Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
```
    </tab>
    <tab title="Operationen">
@```
from
	CapabilityStatement
where rest.resource.type = 'Observation' 
for rest.resource.operation  
select Name: name, Spezifikation: definition, Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
```  
    </tab>
    <tab title="Link">
        {{link:http://example.org/CapabilityStatement/BeispielCapabilityStatement}}
    </tab>
</tabs>

### Beispiele
<!-- Funktion der Beispiele beschreiben!-->
#### Beispieldatensatz
<tabs>
    <tab title="Übersicht">      
        {{render:MehraufwandBeispiel}}
    </tab>
    <tab title="XML">      
        {{xml:MehraufwandBeispiel}}
    </tab>
    <tab title="JSON">
        {{json:MehraufwandBeispiel}}
    </tab>
    <tab title="Link">
        {{link:MehraufwandBeispiel}}
    </tab>
</tabs>