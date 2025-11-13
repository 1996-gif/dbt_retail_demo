SELECT
    s.order_id,
    s.order_date,
    c.customer_name,
    p.product_name,
    p.category,
    s.sales_amount
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_customers') }} c ON s.customer_id = c.customer_id
JOIN {{ ref('stg_products') }} p ON s.product_id = p.product_id;
