


Profile:        IHE_PHARM_VaccineMedication
Parent:         Medication
Id:             ihe-pharm-vaccine-medication
Title:          "IHE-PHARM-Medication-Vaccine"
Description:    """ 
    A vaccine product."""

* extension contains IHE_PHARM_MedicationCategory named medication-category 0..*

Extension: IHE_PHARM_MedicationCategory
Id: ihe-pharm-ext-medication-category
Title: "Medication category or class"
Description: "A medication's classification or category / type."
* value[x] only CodeableConcept




Profile:        IHE_PHARM_Vaccination
Parent:         Immunization
Id:             ihe-pharm-vaccination
Title:          "IHE-PHARM-Vaccination"
Description:    """ 
    Defines constraints and extensions on the immunization resource to represent an immunization event i.e. the administration of a vaccine."""

* status MS
* statusReason MS
* vaccineCode MS
* occurrenceDateTime MS
* occurrenceString MS
* recorded MS
* location MS
* lotNumber MS
* expirationDate MS
* site MS
* route MS
* protocolApplied MS
* reaction MS
* performer MS
* site MS
* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* patient 1..1 MS
* performer.actor 1..1 
* location 0..0

* identifier ^short = "A unique business identifier for a vaccination entry"
* status ^short = "The status of this vaccination record entry"
* patient ^short = "The patient that this received vaccination entry refers to"
* vaccineCode ^short = "The vaccine code - a type of vaccine, typically identified by the disease(s) it covers. For example MMR, HPV, Tetanus, DTPa. This may not fully describe the actual product - for that, there is an extension."
* vaccineCode 1..1
* protocolApplied.doseNumberString ^short = "Whether this is a first vaccination or a reinforcement (in text format, when adequate)..." 
* protocolApplied.doseNumberString MS
* protocolApplied.doseNumberPositiveInt ^short = "The numeric/sequential number of the dose, when adequate" 
* protocolApplied.doseNumberPositiveInt MS
* recorded ^short = "The date/time when the vaccination event has been recorded"
* recorded 1..1
* extension contains IHE_PHARM_VaccinationOriginalOrder named vaccination-originalorder 0..1
* extension contains IHE_PHARM_AdministeredProduct named administeredProduct 0..1
* extension contains IHE_PHARM_VaccinationLocation named vaccination-location 0..1
* route from http://hl7.org/fhir/ValueSet/immunization-status-reason

* reasonCode MS
* reasonCode ^short = "Why vaccination has occurred or not (code or text)"
* reasonReference MS
* reasonReference ^short = "Why vaccination has occurred or not (reference to a finding)"



Extension: IHE_PHARM_VaccinationOriginalOrder
Id: ihe-pharm-ext-vaccination-originalorder
Title: "Immunization Order, prescription or request"
Description: "A plan, proposal or order that is fulfilled in whole or in part by an event."
* value[x] only Reference
* valueReference only Reference(ImmunizationRecommendation or MedicationRequest or CarePlan)


Extension: IHE_PHARM_AdministeredProduct
Id: ihe-pharm-ext-administeredProduct
Title: "Product administered"
Description: "The actual product administered, when one must be specified in detail"
* value[x] only Reference
* valueReference only Reference(IHE_PHARM_VaccineMedication)



Extension: IHE_PHARM_VaccinationLocation
Id: ihe-pharm-ext-vaccination-location
Title: "Location (reference, code or text) of the vaccination"
Description: "Location (reference, code or text) of the vaccination"
* value[x] only CodeableConcept or Reference
* valueReference only Reference(Location or Organization)

