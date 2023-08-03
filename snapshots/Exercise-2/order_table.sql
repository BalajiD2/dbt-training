 {% snapshot order_table %}
    {{
        config(
            target_schema='snapshot',
            unique_key='order_id',
            strategy='timestamp',
            updated_at='orderdate'
        )
    }}
 
    select * from {{ source('snapshot_source', 'order_t') }}
  {% endsnapshot %}