 {% snapshot customer_snapshot %}
    {{
        config(
            target_schema='snapshot',
            unique_key='c_custkey',
            strategy='check',
            check_cols=['c_phone']
        )

    }}
    select * from {{ source('snowflake_sample_data', 'customer') }}
  {% endsnapshot %}