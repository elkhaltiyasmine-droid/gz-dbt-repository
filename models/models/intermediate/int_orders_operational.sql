 SELECT
     o.orders_id
     ,o.date_date
     ,ROUND((o.margin + s.shipping_fee - (s.log_cost + s.ship_cost)),2) AS operational_margin
     ,o.quantity
     ,o.revenue
     ,o.purchase_cost
     ,o.margin
     ,s.shipping_fee
     ,s.log_cost
     ,s.ship_cost
FROM {{ref('int_orders_margin')}} AS o
JOIN 
{{ref('stg_Greenweez_raw_data__raw_gz_ship')}} AS s
    USING(orders_id)

