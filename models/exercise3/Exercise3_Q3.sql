with orders_cte as (

    select * from {{ source('snowflake_sample_data', 'orders') }}
)
,
with customer_cte as (

    select * from {{ source('snowflake_sample_data', 'customer') }}
)

select * from orders_cte
minus
select * from customer_cte