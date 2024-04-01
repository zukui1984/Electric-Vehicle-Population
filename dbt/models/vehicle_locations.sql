SELECT
  vin,
  county,
  city,
  state,
  {{ parse_location('vehicle_location') }}
FROM {{ ref('stg_electric_vehicles') }}
