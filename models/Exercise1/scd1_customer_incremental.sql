{{
    config(
        materialized='incremental',
        unique_key='c_custkey',
        incremental_statergy = 'delete from {{ this }}'
    )
}}

select * from {{ source('snowflake_sample_data', 'customer') }}