{{
    config(
        materialized='incremental',
        unique_key='order_id',
        cluster_by= ['FLAG'],
        incremental_strategy = 'merge',
        incremental_predicates =[
            "DBT_INTERNAL_DEST.flag='Y' "
            ]
    )

}}

select * from {{ source('exercise2_source', 'order_flag') }}