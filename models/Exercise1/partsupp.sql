{{
    config(
        materialized='table'
    )
}}

with partsupp as (
select * from {{ source('snowflake_sample_data', 'partsupp') }}
)

select * from partsupp