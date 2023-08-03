{% set start_date = config.start_date %}

with variable as (
    select * from {{ source('snowflake_sample_data', 'orders') }}
    where o_orderdate = '{{ start_date }}'
)

select * from variable