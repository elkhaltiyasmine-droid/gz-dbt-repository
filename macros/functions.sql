{% macro MARGIN_PER (revenue, purchase_cost) %}
     ROUND(SAFE_DIVIDE(revenue, purchase_cost),2)
 {% endmacro %}