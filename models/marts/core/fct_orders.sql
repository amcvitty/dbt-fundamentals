select 
    o.order_id,
    o.customer_id,
    sum(dollar_amount) as amount
from {{ ref('stg_orders') }}  o 
left join {{ ref('stg_payments') }} p using (order_id)
group by 1,2
