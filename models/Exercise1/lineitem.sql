{{
    config(
        materialized='table'
    )
}}

select * from {{ source('snowflake_sample_data', 'lineitem') }}