Alias: $sdc-questionnaire-launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $sdc-questionnaire-initialExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: $sdc-questionnaire-observationLinkPeriod = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod
Alias: $sdc-questionnaire-observationExtract = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $currency = urn:iso:std:iso:4217


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

RuleSet: addItem(linkId, type, text)
* linkId = "{linkId}"
* type = {type}
* text = "({linkId}) {text}"
* code = $elternfragebogenKodierungen#{linkId}

RuleSet: addItemMl(linkId, type, text, maxLen)
* insert addItem({linkId}, {type}, {text})
* maxLength = {maxLen}

RuleSet: addGroup(linkId, text)
* linkId = "{linkId}"
* type = #group
* text = "({linkId}) {text}"

RuleSet: addRItem(linkId, type, text)
* insert addItem({linkId}, {type}, {text})
* required = true

RuleSet: addRItemMl(linkId, type, text, maxLen)
* insert addItemMl({linkId}, {type}, {text}, {maxLen})
* required = true

RuleSet: uunit(code, display)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = $unitsofmeasure#{code} {display}

RuleSet: calculatedExpression(name, expression)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
  * valueExpression
    * name = {name}
    * language = #text/fhirpath
    * expression = {expression}

RuleSet: EnableWhenCode(question, operator, system, code)
* enableWhen[+]
  * question = "{question}"
  * operator = #{operator}
  * answerCoding = {system}#{code}