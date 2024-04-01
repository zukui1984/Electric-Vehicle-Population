SELECT
  int64_field_0 AS id,
  VIN__1_10_ AS vin,
  County as county,
  City AS city,
  State AS state,
  CAST(Postal_Code AS INT64) AS postal_code,
  Model_Year AS model_year,
  Make AS brand,
  Model AS model,
  Electric_Vehicle_Type AS ev_type,
  Clean_Alternative_Fuel_Vehicle__CAFV__Eligibility AS cafv_eligibility,
  Electric_Range AS electric_range,
  Base_MSRP AS base_msrp,
  CAST(Legislative_District AS INT64) AS legislative_district,
  DOL_Vehicle_ID AS dol_vehicle_id,
  Vehicle_Location AS vehicle_location,
  Electric_Utility AS electric_utility,
  CAST(_2020_Census_Tract AS INT64) AS census_tract
  
FROM {{ source('electric_vehicle', 'vehicle_data_population') }}
