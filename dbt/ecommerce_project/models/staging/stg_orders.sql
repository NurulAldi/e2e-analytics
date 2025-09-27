with source as (
    select *
    from {{ source('raw', 'orders') }}
),

renamed as (
    select
        order_date::date as order_date,
        time::time as order_time,
        aging::int as aging_days,
        customer_id,
        gender,
        device_type,
        customer_login_type,
        product_category,
        product,
        sales::numeric as sales_amount,
        quantity::int as quantity,
        discount::numeric as discount_rate,
        profit::numeric as profit_amount,
        shipping_cost::numeric as shipping_cost,
        order_priority,
        payment_method
    from source
)

select * from renamed