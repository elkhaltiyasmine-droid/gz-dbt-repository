with 

source as (

    select * from {{ source('Greenweez_raw_data', 'raw_gz_bing') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campgn_name AS campaign_name ,
        CAST(ads_cost AS FLOAT64) AS ads_cost ,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed
