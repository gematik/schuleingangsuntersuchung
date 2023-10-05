---
subject: https://www.oegd.de/fhir/seu/CodeSystem/TestTypesCS
---

## {{link}}

### Metadaten

@```
from
	CodeSystem
where
	url = 'https://www.oegd.de/fhir/seu/CodeSystem/TestTypesCS'
select
	Beschreibung: description, CanonicalURL: url, Status: status, Version: version
```

### Inhalt

<tabs>
    <tab title="Darstellung">  
        {{render}}
    </tab>
    <tab title="Darstellung (FQL)">
            @```
from
	CodeSystem
where
	url = 'https://www.oegd.de/fhir/seu/CodeSystem/TestTypesCS'
for concept
select
	Code: code, Anzeigetext: display, Definition: definition
```
    </tab>
    <tab title="Beschreibung">
    @```
from
	CodeSystem
where
	url = 'http://example.org/CodeSystem/MeinCodeSystem'
select
	Beschreibung: description
```
    </tab>
    <tab title="XML">      
        {{xml}}
    </tab>
    <tab title="JSON">
        {{json}}
    </tab>
    <tab title="Link">
        {{link}}
    </tab>
</tabs>