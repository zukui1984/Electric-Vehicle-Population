SELECT
  brand,
  model_year,
  COUNT(*) AS total_vehicles,
  ROUND(AVG(electric_range), 2) AS avg_electric_range
FROM {{ ref('stg_electric_vehicles') }}
GROUP BY brand, model_year
