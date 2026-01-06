## {{page-title}}

@```
from ValueSet
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