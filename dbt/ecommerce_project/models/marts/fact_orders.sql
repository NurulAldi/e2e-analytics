with orders as (
    select * from {{ ref('stg_orders') }}
)

select 
    order_date,
    order_time,
    customer_id,
    product,
    product_category,
    sales_amount,
    quantity,
    discount_rate,
    profit_amount,
    shipping_cost,
    order_priority,
    payment_method,
    aging_days
from orders