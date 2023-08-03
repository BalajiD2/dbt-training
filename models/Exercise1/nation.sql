{{
    config(
        materialized='table'
    )
}}
-- materialized='view'
select * from {{ source('snowflake_sample_data', 'nation') }}