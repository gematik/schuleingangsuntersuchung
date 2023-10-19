Alias: $sdc-questionnaire-launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $sdc-questionnaire-initialExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: $sdc-questionnaire-observationLinkPeriod = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod
Alias: $sdc-questionnaire-observationExtract = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract

RuleSet: launchContext(name, type, description)
* extension
  * url = $sdc-questionnaire-launchContext
  * extension[+]
    * url = "name"
    * valueId = {name}
  * extension[+]
    * url = "type"
    * valueCode = {type}
  * extension[+]
    * url = "descripton"
    * valueString = {description}

RuleSet: initialExpression(expression)
* extension
  * url = $sdc-questionnaire-initialExpression
  * valueExpression
    //* description = {description}
    * language = #text/fhirpath
    * expression = {expression}

RuleSet: observationLinkPeriod(duration)
* extension[+]
  * url = $sdc-questionnaire-observationLinkPeriod
  * valueDuration = {duration}

RuleSet: observationExtract
* extension[+]
  * url = $sdc-questionnaire-observationExtract
  * valueBoolean = true

RuleSet: questionnaireUnit(system, code)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = {system}#{code}