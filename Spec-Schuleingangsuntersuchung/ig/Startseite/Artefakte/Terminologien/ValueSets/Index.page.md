## {{page-title}}

@```
from StructureDefinition
	where type = 'ValueSet'
	select Beschreibung: description, CanonicalURL: url, Kontext: context.expression, Status: status, Version: version
```