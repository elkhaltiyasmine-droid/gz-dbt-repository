 -- stg_raw__sales.sql

with 

source as (

    select * from {{ source('Greenweez_raw_data', 'raw_gz_sales1') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id AS products_id,
        revenue,
        quantity

    from source

)

select * from renamed
