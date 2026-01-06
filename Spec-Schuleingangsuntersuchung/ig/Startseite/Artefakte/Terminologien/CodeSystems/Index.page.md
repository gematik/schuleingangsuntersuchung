## {{page-title}}

### Alle ValueSets innerhalb des Projektes

@```
from ValueSet
where name != 'DeuevAnlage8LaenderkennzeichenVS' 
    and name != 'ISO6392_LanguageVS'
	and name != 'SEU_UB_AuswaehlbareElternspracheVS'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status,
	Expansion: for expansion.contains select {
		code,
		display
	}
```

### ISO6392_LanguageVS, DeuevAnlage8LaenderkennzeichenVS und SEU_UB_AuswaehlbareElternspracheVS

Die drei ValueSets werden ohne concept dargestellt, weil es zu groß ist. Bitte auf den Link klicken und den Inhalt im ValueSet selber anschauen.

@```
from ValueSet
where name = 'ISO6392_LanguageVS'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status
```

@```
from ValueSet
where name = 'DeuevAnlage8LaenderkennzeichenVS'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status
```

@```
from ValueSet
where name = 'SEU_UB_AuswaehlbareElternspracheVS'
select 
	Name: name, 
	Beschreibung: description,
	CanonicalURL: url,
	Status: status
```