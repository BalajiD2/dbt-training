{{
    config(
        materialized='incremental',
        unique_key='c_custkey',
        pre_hook=before_begin("truncate table{{this}}"),
        post_hook=after_commit("update{{this}} set c_mktsegment='building' where c_custkey=60005")

    )

}}

select * from {{ source('snowflake_sample_data', 'customer') }}