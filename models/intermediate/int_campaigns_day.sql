SELECT
    date_date
    ,campaign_key
    ,ROUND(SUM(impression),2) AS impression
    ,ROUND(SUM(ads_cost),2) AS ads_cost
    ,ROUND(SUM(click),2) AS click
FROM {{ref('int_campaigns')}}
GROUP BY date_date,campaign_key
ORDER BY date_date DESC