Profile: SD_Clinical_Study
Parent: ResearchStudy
Id: sd-clinical-study 
Title: "SD Clinical Study"
Description: "This profile describes a clinical study in which a patient takes part."
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    eudraCT 0..1 and
    NCT 0..1 and
    PMID 0..1 and 
    DOI 0..1 and
    URI 0..1 and
    DRKS 0..1
* identifier[eudraCT] ^short = "Eudra CT Number"
* identifier[eudraCT].system = "https://www.clinicaltrialsregister.eu"
* identifier[eudraCT].system 1.. MS
* identifier[eudraCT].value 1.. MS
* identifier[NCT] ^short = "NCT number"
* identifier[NCT].system = "http://clinicaltrials.gov"
* identifier[NCT].system 1.. MS
* identifier[NCT].value 1.. MS
* identifier[PMID] ^short = "Pubmed ID"
* identifier[PMID].system = "http://www.ncbi.nlm.nih.gov/pubmed"
* identifier[PMID].system 1.. MS
* identifier[PMID].value 1.. MS
* identifier[DOI] ^short = "Digital Object Identifier"
* identifier[DOI].system = "https://doi.org"
* identifier[DOI].system 1.. MS
* identifier[DOI].value 1.. MS
* identifier[URI] ^short = "Uniform Resource Identifier"
* identifier[URI].system = "urn:ietf:rfc:3986"
* identifier[URI].system 1.. MS
* identifier[URI].value 1.. MS
* identifier[DRKS] ^short = "Deusches Register Klinischer Studien"
* identifier[DRKS].system = "https://www.drks.de"
* identifier[DRKS].system 1.. MS
* identifier[DRKS].value 1.. MS
* title MS 
* status MS
* primaryPurposeType MS
* phase 1.. 
* phase from $ResearchStudyPhase (required)
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    studyCategory 1..1 MS and
    studyDesign 0..* MS and
    typeOfBlinding 0..1 MS and
    typeOfRandomization 0..1 MS
// Kategorie = Interv / Beob / andere
// Design = Basket / Umbrella / AMG / MPG / sonstige
* category[studyCategory] from VS_Studienkategorien_NCIT (required)
* category[studyDesign] from VS_Studiendesign_NCIT (required)
* category[typeOfBlinding] from VS_TypeOfBlinding_NCIT (required)
* category[typeOfRandomization] from VS_TypeOfRandomization_NCIT (required)
* focus MS
* focus from VS_StudyFocus_NCIT (extensible)
* arm MS
* arm.type MS
* arm.type from VS_TypeOfStudyArm_NCIT (required)


// Studienkategorien 
ValueSet: VS_Studienkategorien_NCIT
Id: studienkategorien-ncit
Title: "ValueSet Studienkategorien NCIt"
Description: "Studienkategorien aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C98388 "Interventional Study"
* $NCIT#C16084 "Observational Study"
//* $NCIT#C142615 "Non-Interventional Study"

// Studiendesign
ValueSet: VS_Studiendesign_NCIT
Id: studiendesign-ncit
Title: "ValueSet Studiendesign NCIt"
Description: "Studiendesign aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
//* $NCIT#C165842 "Umbrella Protocol"
//* $NCIT#C165823 "Basket Protocol"
//* $NCIT#C139174 "Device Feasibility Study" // MPG
//* $NCIT#C49656 "Treatment Study" // AMG
* $NCIT#C15197 "Case-Control Study"
//* $NCIT#C15362 "Case Study"
//* $NCIT#C127779 "Observational Case-Crossover Study"
//* $NCIT#C127780 "Ecologic or Community Based Study"
//* $NCIT#C15407 "Family Study"
* $NCIT#C15208 "Cohort Study"
//* $NCIT#C139456 "Trend Analysis"
//* $NCIT#C53311 "Panel Study"
* $NCIT#C15273 "Longitudinal Study" 	
* $NCIT#C53310 "Cross-Sectional Study"
//* $NCIT#C15311 "Quality Control"
// other?

// Blinding 
ValueSet: VS_TypeOfBlinding_NCIT
Id: type-of-blinding-ncit
Title: "ValueSet Type of Blinding NCIt"
Description: "Type of Blinding aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C49659 "Open Label Study" // unverblindet
* $NCIT#C28233 "Single Blind Study" // einfach-verblindet
* $NCIT#C15228 "Double Blind Study" // doppelt verblindet
* $NCIT#C66959 "Triple Blind Study" // dreifach verblindet
* $NCIT#C156592 "Open Label for Treatment And Double Blind to Dose"

// Randomization 
ValueSet: VS_TypeOfRandomization_NCIT
Id: type-of-randomization-ncit
Title: "ValueSet Type of Randomization NCIt"
Description: "Type of Randomization aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C15417 "Randomized Clinical Trial"
* $NCIT#C46079 "Randomized Controlled Clinical Trial"
* include codes from system $NCIT where concept descendent-of #C25196 "Randomization"
* $NCIT#C93043 "Nonrandomized Clinical Trial"
* $NCIT#C28279 "Controlled Study"

// Study Arm Type
ValueSet: VS_TypeOfStudyArm_NCIT
Id: type-of-study-arm-ncit
Title: "ValueSet Type of Study Arm NCIt"
Description: "Type of Study Arm aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* include codes from system $NCIT where concept descendent-of #C15538 "Protocol Treatment Arm"

// Study Focus
ValueSet: VS_StudyFocus_NCIT
Id: study-focus-ncit
Title: "ValueSet Study Focus NCIt"
Description: "Study Focus aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C1909 "Pharmacologic Substance" //AMG
* $NCIT#C16830 "Medical Device" //MPG
* $NCIT#C78523 "Cosmetic" 
* $NCIT#C1505 "Dietary Supplement"

Instance: ExampleStudyNapkonCovidom
InstanceOf: sd-clinical-study
Usage: #example
Title: "Example Study NAPKON COVIDOM"
Description: "Example Study NAPKON COVIDOM"
* identifier[NCT].system = "http://clinicaltrials.gov"
* identifier[NCT].value = #NCT04679584
* title = "COVIDOM: Longterm Morbidity of SARS-CoV-2 Infection and COVID-19 Disease - Consequences for Health Status and Quality of Life (NAPKON-POP)"
* status = #active
* primaryPurposeType = $StudyPrimPurpType#supportive-care
* phase = $StudyPhase#n-a
* category[studyCategory] = $NCIT#C16084 "Observational Study"
* category[studyDesign] = $NCIT#C15208 "Cohort Study"
* category[typeOfBlinding] = $NCIT#C49659 "Open Label Study"
* category[typeOfRandomization] = $NCIT#C28279 "Controlled Study"
* condition = $SCT#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* location = $iso3166#DEU
* description = "Assessment of SARS-CoV-2-longterm morbidity and sequels on the population level"
* period.start = "2020-11-16"
* period.end = "2021-12-31"
* sponsor = Reference(Organization/UKSH)
* site = Reference(Organization/UKSH)
* objective[+].name = "Longterm morbidities and sequels of SARS-CoV-2 infections in the general population"
* objective[=].type = $StudyObjectiveType#primary