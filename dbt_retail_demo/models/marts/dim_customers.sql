SELECT DISTINCT
    customer_id,
    customer_name,
    region
FROM {{ ref('stg_customers') }};
