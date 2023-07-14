Profile: SeuPointAssessmentKoord
Parent: SeuPointAssessment
Id: SeuPointAssessmentKoord
* code = #koord "Regelstufe"
* referenceRange contains abnormal 1..1 MS and 
    borderline 1..1 MS and 
    normal 1..1 MS
* referenceRange[abnormal].low = 0 '1' "Punktwert"
* referenceRange[abnormal].high = 6 '1' "Punktwert"
* referenceRange[abnormal].type = $sct#263654008 "Abnormal (qualifier value)"
* referenceRange[borderline].low = 7 '1' "Punktwert"
* referenceRange[borderline].high = 8 '1' "Punktwert"
* referenceRange[borderline].type = $sct#17621005 "Borderline (qualifier value)"
* referenceRange[normal].low = 9 '1' "Punktwert"
* referenceRange[normal].type = $sct#263654008 "Normal (qualifier value)"

Instance: SeuPointAssessmentKoord-Example
InstanceOf: SeuPointAssessmentKoord
Usage: #example
* subject = Reference(OegdSeuPerson-Example)
* effectiveDateTime = "2023-01-01"
* valueQuantity = 12 '1' "Punktwert"