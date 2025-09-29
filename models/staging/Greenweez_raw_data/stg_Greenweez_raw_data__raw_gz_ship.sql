with

    source as (select * from {{ source("Greenweez_raw_data", "raw_gz_ship") }}),

    renamed as (

        select orders_id, shipping_fee, logcost, cast(ship_cost as int64) as ship_cost

        from source

    )

select *
from renamed
