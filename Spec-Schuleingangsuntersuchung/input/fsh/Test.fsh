Profile: Test
Parent: Observation
Id: Test
* status MS
* status = #final
* category MS
* category = $observation-category#exam "Exam"
* code MS
* code from TestTypesVs
* code.coding MS
* subject MS
* encounter MS
* effective[x] MS
* value[x] only Quantity
* referenceRange ^slicing.discriminator.type = #pattern
* referenceRange ^slicing.discriminator.path = "type"
* referenceRange ^slicing.rules = #open
* referenceRange MS
* referenceRange.type 1..1 MS
* referenceRange.type from ReferenceRangeTypeVs
* referenceRange contains abnormal 1..1 MS and 
    borderline 1..1 MS and 
    normal 1..1 MS
* referenceRange[abnormal].type = $sct#263654008 "Abnormal (qualifier value)"
* referenceRange[abnormal].low 1..1 MS
* referenceRange[abnormal].high 1..1 MS
* referenceRange[borderline].type = $sct#17621005 "Borderline (qualifier value)"
* referenceRange[borderline].low 1..1 MS
* referenceRange[borderline].high 1..1 MS
* referenceRange[normal].type = $sct#263654008 "Normal (qualifier value)"
* referenceRange[normal].low 1..1 MS
* referenceRange[normal].high 1..1 MS

CodeSystem:  TestTypesCs
Id: TestTypesCs
Title: "SEU Point Assessment Types"
* #koord "Regelstufe"
* #vismot "Visuomotorik"
* #pswoe "Sprachkompetenz und audit. Invormationsverarbeitung"
* #praep "SOPESS-Präpositionen"
* #plur "SOPESS-Pluralbildung"
* #zaehl "SOPESS-Zahlen und Mengenwissen"
* #meng "SOPESS- Mengenvergleich, Simultanerfassung"
* #selaufm "SOPESS- Selektive-Aufmerksamkeit"
* #dys "Anzahl auffälliger Laut/Stammfehler"

ValueSet: TestTypesVs
Id: TestTypesVs
Title: "SEU Status Kind"
Description: "Diese Codes enthalten die möglichen SEU Point Assessment Types"
* include codes from system TestTypesCs
* $sct#311886005 "Visual perception, function"

ValueSet: ReferenceRangeTypeVs
Id: ReferenceRangeTypeVs
Title: "SEU Point Assessment Reference Range"
* $sct#17621005 "Normal (qualifier value)"
* $sct#371932001 "Borderline normal (qualifier value)"
* $sct#263654008 "Abnormal (qualifier value)"