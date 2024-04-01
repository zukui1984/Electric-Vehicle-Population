SELECT
  cafv_eligibility,
  COUNT(*) AS total_vehicles
FROM {{ ref('stg_electric_vehicles') }}
GROUP BY cafv_eligibility

