{% macro parse_location(location_column) %}
  SPLIT({{ location_column }}, ' ')[SAFE_OFFSET(0)] AS latitude,
  SPLIT({{ location_column }}, ' ')[SAFE_OFFSET(1)] AS longitude
{% endmacro %}
