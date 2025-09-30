
SELECT *
,ROUND(quantity*purchase_price,2) as purchase_cost
,ROUND((revenue-(quantity*purchase_price)),2) as margin 
FROM
{{ref('stg_Greenweez_raw_data__raw_gz_sales1')}}
JOIN
{{ref('stg_Greenweez_raw_data__raw_gz_product')}}
USING (products_id) 

