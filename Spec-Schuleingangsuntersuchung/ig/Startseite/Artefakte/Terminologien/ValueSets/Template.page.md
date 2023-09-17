---
subject: http://example.org/ValueSet/MeinValueSet
---
|Hinweis|Diese Box bitte entfernen!|
|-
|![Information](https://wiki.hl7.de/images/thumb/Under_construction_icon-blue.svg/100px-Under_construction_icon-blue.svg.png)|Diese Seite ist ein Template, das bei Verwendung für ein konkretes Profil angepasst werden muss!|


## {{link}}

### Metadaten

@```
from
	ValueSet
where
	url = 'http://example.org/ValueSet/MeinValueSet'
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
	url = 'http://example.org/ValueSet/MeinValueSet'
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
