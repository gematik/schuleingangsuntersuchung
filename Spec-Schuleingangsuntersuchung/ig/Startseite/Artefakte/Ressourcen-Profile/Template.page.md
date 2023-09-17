---
subject: http://example.org/StructureDefinition/MeinPatientProfil
expand: 1
---

|Hinweis|Diese Box bitte entfernen!|
|-
|![Information](https://wiki.hl7.de/images/thumb/Under_construction_icon-blue.svg/100px-Under_construction_icon-blue.svg.png)|Diese Seite ist ein Template, das bei Verwendung für ein konkretes Profil angepasst werden muss!|

## {{link}}

### Metadaten

@```
from
	StructureDefinition
where
	url = 'http://example.org/StructureDefinition/MeinPatientProfil'
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
	        url = 'http://example.org/StructureDefinition/MeinPatientProfil'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'http://example.org/StructureDefinition/MeinPatientProfil' 
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
    url = 'http://example.org/StructureDefinition/MeinPatientProfil' 
for 
    snapshot.element
    where 
        mustSupport = true and binding.exists()
    select
        Element: binding.path, Staerke: binding.strength, ValueSet: binding.valueSet
```

### Constraints/Invarianten
@``` 
from StructureDefinition where url = 'http://example.org/StructureDefinition/MeinPatientProfil' for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
```

### RestFul API

<tabs>
    <tab title="Interaktionen"> 
@```
from
	CapabilityStatement
where rest.resource.type = 'Patient' 
for  rest.resource.interaction
 select Interaktion: code, Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
```
    </tab>
    <tab title="Suchparameter">
@```
from
	CapabilityStatement
where rest.resource.type = 'Patient' 
for rest.resource.searchParam  
select Parameter: name, Typ: type, Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
```
    </tab>
    <tab title="Operationen">
@```
from
	CapabilityStatement
where rest.resource.type = 'Patient' 
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
#### valider Minimaldatensatz eines Patienten
<tabs>
    <tab title="Übersicht">      
        {{render:BeispielPatient.xml}}
    </tab>
    <tab title="XML">      
        {{xml:BeispielPatient.xml}}
    </tab>
    <tab title="JSON">
        {{json:BeispielPatient.xml}}
    </tab>
    <tab title="Link">
        {{link:BeispielPatient.xml}}
    </tab>
</tabs>

#### valider Minimaldatensatz mit überlangem Nachnamen (erzeugt beim Validieren eine Warnung)
<tabs>
    <tab title="Übersicht">      
        {{render:BeispielPatientNachnameZuLang.xml}}
    </tab>
    <tab title="XML">      
        {{xml:BeispielPatientNachnameZuLang.xml}}
    </tab>
    <tab title="JSON">
        {{json:BeispielPatientNachnameZuLang.xml}}
    </tab>
    <tab title="Link">
        {{link:BeispielPatientNachnameZuLang.xml}}
    </tab>
</tabs>

### Mappings


