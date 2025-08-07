CodeSystem: PflegegradCS
Id: PflegegradCS
Title: "PflegegradCS"
Description: "PflegegradCS"
* #pflegegrad_1 "Pflegegrad 1"
* #pflegegrad_2 "Pflegegrad 2"
* #pflegegrad_3 "Pflegegrad 3"
* #pflegegrad_4 "Pflegegrad 4"
* #pflegegrad_5 "Pflegegrad 5"

ValueSet: PflegegradVS
Id: PflegegradVS
Title: "PflegegradVS"
Description: "PflegegradVS"
* include codes from system PflegegradCS
* ^expansion.timestamp = "2024-04-04T11:16:49+00:00"
* ^expansion.contains[0].system = Canonical(PflegegradCS)
* ^expansion.contains[=].code = #pflegegrad_1
* ^expansion.contains[=].display = "Pflegegrad 1"
* ^expansion.contains[+].system = Canonical(PflegegradCS)
* ^expansion.contains[=].code = #pflegegrad_2
* ^expansion.contains[=].display = "Pflegegrad 2"
* ^expansion.contains[+].system = Canonical(PflegegradCS)
* ^expansion.contains[=].code = #pflegegrad_3
* ^expansion.contains[=].display = "Pflegegrad 3"
* ^expansion.contains[+].system = Canonical(PflegegradCS)
* ^expansion.contains[=].code = #pflegegrad_4
* ^expansion.contains[=].display = "Pflegegrad 4"
* ^expansion.contains[+].system = Canonical(PflegegradCS)
* ^expansion.contains[=].code = #pflegegrad_5
* ^expansion.contains[=].display = "Pflegegrad 5"

CodeSystem: GradDerBehinderungCS
Id: GradDerBehinderungCS
Title: "GradDerBehinderungCS"
Description: "GradDerBehinderungCS"
* #grad_20 "20%"
* #grad_30 "30%"
* #grad_40 "40%"
* #grad_50 "50%"
* #grad_60 "60%"
* #grad_70 "70%"
* #grad_80 "80%"
* #grad_90 "90%"
* #grad_100 "100%"

ValueSet: GradDerBehinderungVS
Id: GradDerBehinderungVS
Title: "GradDerBehinderungVS"
Description: "GradDerBehinderungVS"
* include codes from system GradDerBehinderungCS
* ^expansion.timestamp = "2024-04-04T11:16:49+00:00"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_20
* ^expansion.contains[=].display = "20%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_30
* ^expansion.contains[=].display = "30%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_40
* ^expansion.contains[=].display = "40%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_50
* ^expansion.contains[=].display = "50%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_60
* ^expansion.contains[=].display = "60%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_70
* ^expansion.contains[=].display = "70%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_80
* ^expansion.contains[=].display = "80%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_90
* ^expansion.contains[=].display = "90%"
* ^expansion.contains[+].system = Canonical(GradDerBehinderungCS)
* ^expansion.contains[=].code = #grad_100
* ^expansion.contains[=].display = "100%"