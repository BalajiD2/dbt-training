select * from {{ source('jaffle_shop', 'orders') }} a

left join  {{ source('stripe', 'payment') }} b on a.status = b.status