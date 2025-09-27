with customers as (
    select distinct
        customer_id,
        gender,
        device_type,
        customer_login_type
    from {{ ref('stg_orders') }}
)

select
    customer_id,
    gender,
    device_type,
    customer_login_type
from customers