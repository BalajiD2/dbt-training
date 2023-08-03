 {% snapshot order_schema %}
    {{
        config(
            target_schema='snapshot',
            unique_key='o_orderkey',
            strategy='timestamp',
            updated_at='O_ORDERDATE'
        )
    }}
 
    select * from {{ source('snowflake_sample_data', 'orders') }}
  {% endsnapshot %}