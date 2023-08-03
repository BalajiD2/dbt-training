{{
    config(
       materialized='table'
           )
}}

with discount as (
select *,{{discount('o_totalprice')}} as Discounted_price from {{ source('snowflake_sample_data', 'orders') }}
)

select * from discount