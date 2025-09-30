 SELECT *
 FROM {{ref('stg_Greenweez_raw_data__raw_gz_bing')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_Greenweez_raw_data__raw_gz_adwords')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_Greenweez_raw_data__raw_gz_criteo')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_Greenweez_raw_data__raw_gz_facebook')}}
 