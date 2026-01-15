## {{page-title}}

### Alle CodeSystems innerhalb des Projektes

@```
from CodeSystem
where name != 'ISO6392_LanguageCS' 
    and name != 'DeuevAnlage8Laenderkennzeichen'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status,
	Expansion: for concept select {
		code,
		display
	}
```

### ISO6392_LanguageCS und DeuevAnlage8Laenderkennzeichen

Die zwei CodeSystems werden ohne concept dargestellt, weil es zu groß ist. Bitte auf den Link klicken und den Inhalt im CodeSystem selber anschauen.

@```
from CodeSystem
where name = 'ISO6392_LanguageCS'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status
```

@```
from CodeSystem
where name = 'DeuevAnlage8Laenderkennzeichen'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status
```
