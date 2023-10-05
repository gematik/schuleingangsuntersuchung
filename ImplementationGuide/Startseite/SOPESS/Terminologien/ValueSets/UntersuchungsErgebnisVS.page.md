---
subject: https://www.oegd.de/fhir/seu/ValueSet/UntersuchungsErgebnisVS
---

## {{link}}

### Metadaten

@```
from
	ValueSet
where
	url = 'https://www.oegd.de/fhir/seu/ValueSet/UntersuchungsErgebnisVS'
select
	CanonicalURL: url, Status: status, Version: version
```

### Inhalt

<tabs>
    <tab title="Darstellung">      
        {{render}}
    </tab>
    <tab title="Beschreibung">
    @```
from
	ValueSet
where
	url = 'https://www.oegd.de/fhir/seu/ValueSet/UntersuchungsErgebnisVS'
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
