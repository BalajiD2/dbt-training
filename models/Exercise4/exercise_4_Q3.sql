{% set status_type=['p','f','o'] %}
select * from {{ source('snowflake_sample_data', 'orders') }}

final_order as(

    select
        o_orderkey,
        {% for o_orderstatus in status_type %}
        case when o_orderstatus = '{{O_orderstatus}}' then o_orderstatus else 'NA' end as {{o_orderstatus}}
        {% if not loop.last %}
        {% endif %}
        {% endfor %}
    from {{ref ('orders')}}
 )
 select * from final_order