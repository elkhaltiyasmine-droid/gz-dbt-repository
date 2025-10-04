{% macro margin percent (revenue, purchase_cost) %}
     ROUND(SAFE_DIVIDE(revenue, purchase_cost),2)
 {% endmacro %}