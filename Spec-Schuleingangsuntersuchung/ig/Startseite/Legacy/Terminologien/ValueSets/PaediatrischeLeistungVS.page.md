---
subject: https://www.oegd.de/fhir/seu/ValueSet/BehinderungsTypVS
---

## {{link}}

### Metadaten

@```
from
	ValueSet
where
	url = 'https://www.oegd.de/fhir/seu/ValueSet/BehinderungsTypVS'
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
	url = 'https://www.oegd.de/fhir/seu/ValueSet/BehinderungsTypVS'
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
