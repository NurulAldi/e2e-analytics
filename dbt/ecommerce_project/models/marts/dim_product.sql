with products as (
    select distinct
        product_category,
        product
    from {{ ref('stg_orders') }}
)

select
    row_number() over (order by product_category, product) as product_key,
    product_category,
    product
from products