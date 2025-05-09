select 
  unique_id, 
  record_id, 
  redcap_data_access_group, 
  mflcode, 
  screeningdate::date as screeningdate, 
  eligible, 
  pid, 
  ineligiblereason, 
  ineligibleother, 
  enrolled, 
  unenrolreason, 
  unenrolother, 
  reviewdate, 
  dob, 
  age, 
  ageyears, 
  agemonths, 
  agedays, 
  sex, 
  marital_status, 
  nationality, 
  education_level_max, 
  occupation, 
  county, 
  othercounty, 
  sub_county, 
  othersubcounty, 
  ward, 
  date_admission, 
  illness_date, 
  cough, 
  fever, 
  abnormal_breath_sounds, 
  sore_throat, 
  difficulty_in_breathing, 
  chest_pain, 
  rhinorrhea, 
  sore_muscles, 
  hemoptysis_coughing_out, 
  chills, 
  headache, 
  diarrhea, 
  vomiting, 
  skin_rash, 
  lack_of_appetite, 
  conjunctivitis, 
  convulsions, 
  nasal_flaring, 
  chest_in_drawing, 
  lethargic, 
  unconscious, 
  symtoms_other, 
  congenital_respiratory, 
  neurological, 
  newly_diagnosed_tb, 
  prior_tb, 
  hiv_aids, 
  congenital_cardiac_heart, 
  malnutrition, 
  acquired_heart_disease, 
  immune_disorder, 
  liver_disease, 
  renal_disease, 
  diabetes, 
  asthma_reactive_airway, 
  cancer_currently_or_12, 
  sickle_cell_disease, 
  rickets, 
  q_pregnant, 
  current_smoker, 
  past_smoker, 
  drug_substance_use, 
  familial_hered_disease, 
  history_of_attending_mass, 
  specify_event, 
  respiratory_rate, 
  height_measurement, 
  weight_measurement, 
  temperature, 
  oxygen_saturation, 
  mid_upper_arm_circumferenc, 
  respiratory_specimen, 
  swab_type___1, 
  swab_type___2, 
  swab_type___999, 
  swab_type____8, 
  swab_type____1000, 
  specimen_date, 
  hiv_test, 
  hiv_result, 
  malaria_test, 
  malaria_result, 
  malaria_treated, 
  tb_therapy, 
  oxygen_admission, 
  patient_admitted, 
  where_admitted, 
  days_admitted, 
  mechanical_ventilation, 
  hemoglobin_level, 
  white_blood_cell_count, 
  neutrophil_count, 
  lymphocytes_count, 
  erythrocyte_rate, 
  sars_cov_2, 
  malaria, 
  pneumonia, 
  sepsis, 
  meningitis, 
  dehydration, 
  malnutrition_diagnosis, 
  bronchitis, 
  respiratory_distress, 
  diagnosis, 
  gastroenteritis, 
  other_diagnosis, 
  other_diagnosis1, 
  date_of_death::date as date_of_death, 
  documented_cause_of_death, 
  other_death_cause, 
  antecedent_causes, 
  antecedent_death_cause, 
  otherconditiondeath, 
  otherconditiondeath1, 
  samplecollected, 
  datecollected::date as datecollected, 
  barcode, 
  calculated_age, 
  date_received::date as date_received , 
  date_tested::date as date_tested, 
  "result", 
  tat_receiving, 
  tat_testing,
  sarcov_result,
  rsv_result,
  min_dob,
  flu_ct,
  rsv_ct,
  flu_result,
  sarscov_ct
from 
  {{ source('central_raw_mortality', 'mortality_surveillance') }}