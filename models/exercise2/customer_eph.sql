{{
    config(
        materialized='ephemeral'
    )
}}


    select * from {{ source('snowflake_sample_data', 'customer') }}

