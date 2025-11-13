SELECT
    CAST(order_id AS INTEGER) AS order_id,
    CAST(customer_id AS INTEGER) AS customer_id,
    CAST(product_id AS INTEGER) AS product_id,
    CAST(order_date AS DATE) AS order_date,
    CAST(sales_amount AS DECIMAL(10,2)) AS sales_amount
FROM {{ ref('sales') }};
