with 

source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status as order_status,
        _etl_loaded_at

    from source

)

, test as (
    select distinct order_status from renamed
)

, test2 as (
    select * from renamed where order_status not in ('completed', 'return_pending', 'placed', 'shipped', 'returned')
)

select * from renamed


