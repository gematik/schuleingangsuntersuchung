---
subject: http://example.org/CodeSystem/MeinCodeSystem
---
|Hinweis|Diese Box bitte entfernen!|
|-
|![Information](https://wiki.hl7.de/images/thumb/Under_construction_icon-blue.svg/100px-Under_construction_icon-blue.svg.png)|Diese Seite ist ein Template, das bei Verwendung für ein konkretes Profil angepasst werden muss!|

## {{link}}

### Metadaten

@```
from
	CodeSystem
where
	url = 'http://example.org/CodeSystem/MeinCodeSystem'
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
	url = 'http://example.org/CodeSystem/MeinCodeSystem'
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