### Use Cases 

#### Vaccination triggers - orders
The vaccination may be based on several triggers, and it may be required that the immunization indicates these:

* In several countries, the polio vaccine is mandatory and is administered based on a vaccination schedule
* In some countries the vaccination for whooping cough is a matter of public health but is ordered by a physician as part of primary care for pregnant women.
* The vaccination for flu is often offered and administered in the work place
* Some vaccines like yellow fever are triggered by a specific event (a travel, or a consultation) and may or not have an explicit order
* The vaccination for flu can be given so some population groups (e.g. above 60 years old) based on national policies, triggered by a physician


#### Vaccination Event
* The foremost use case is the record of a vaccination event
* Besides the disease(s) for which the vaccination is being applied, it is important to capture the product information : brand name, any other codes (e.g. national codes, GS1 codes..)
* For traceability and falsification detection purposes, it is important to capture attributes like expiry date, lot, serial number,..
* A vaccination event may have an adverse event, which should be reported along with the vaccination record
* It is also important to capture the vaccination ordinality - the position of the vaccine in a series - for example if it is the first tetanus immunization, or a reinforcement; or if it is a first COVID-19 vaccination, or the second, when that is adequate
** The ordinality is usually known, but the regimen may be related to several factors - the brand name of the product, the vaccination schedule, etc: for some diseases, the number of vaccinations to take depends on the medication schema. For other diseases, 
the number of vaccines to take depends on the particular brand of the product.
** The same with the interval between vaccines - some vaccines require an interval of 21 days between doses, others 28 days, others 10 years...  
*** Since this may vary, it is less important to capture information like "next expected vaccination" and better to capture a reference to the program or expectations that are applicable at the moment thes vaccine is given

#### Get data 
* The key use case for obtaining vaccination information is to assess a patient's immunization status (not immunity status), according to the expectations at a given moment. 
* Other related use case: find all people that are half-vaccinated against a specific disease


