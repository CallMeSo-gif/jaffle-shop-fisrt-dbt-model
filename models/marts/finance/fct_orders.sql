with 

orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),


payments as (
    select * from {{ ref('stg_stripe__payment') }}
),
 

order_payments as (
    select
        order_id,
        sum (case when payment_status = 'success' then payment_amount end) as payment_amount
    from payments
    group by 1
)

select  
    o.customer_id,
    o.order_id,
    coalesce(p.payment_amount,0) as  payment_amount
from orders o 
left join order_payments p using (order_id)

/*
left join payments p using(order_id)
where p.payment_status = 'success'
group by 2
*/