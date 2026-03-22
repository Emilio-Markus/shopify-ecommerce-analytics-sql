/*
=========================================================
FILE: transformations.sql
PURPOSE:
Transform raw staging data into clean analysis-ready tables.
=========================================================
*/

TRUNCATE TABLE dbo.fact_order_items;
TRUNCATE TABLE dbo.dim_customers;
TRUNCATE TABLE dbo.dim_products;
GO

INSERT INTO dbo.fact_order_items (
    order_id,
    order_date,
    customer_id,
    customer_name,
    customer_email,
    product_id,
    product_name,
    product_category,
    sku,
    quantity,
    unit_price,
    gross_sales,
    discount_amount,
    net_sales,
    shipping_country,
    shipping_city,
    financial_status,
    fulfillment_status
)
SELECT
    LTRIM(RTRIM(order_id)) AS order_id,
    TRY_CAST(order_date AS DATE) AS order_date,
    NULLIF(LTRIM(RTRIM(customer_id)), '') AS customer_id,
    NULLIF(LTRIM(RTRIM(customer_name)), '') AS customer_name,
    NULLIF(LTRIM(RTRIM(customer_email)), '') AS customer_email,
    NULLIF(LTRIM(RTRIM(product_id)), '') AS product_id,
    NULLIF(LTRIM(RTRIM(product_name)), '') AS product_name,
    NULLIF(LTRIM(RTRIM(product_category)), '') AS product_category,
    NULLIF(LTRIM(RTRIM(sku)), '') AS sku,
    TRY_CAST(quantity AS INT) AS quantity,
    TRY_CAST(unit_price AS DECIMAL(18,2)) AS unit_price,
    ISNULL(TRY_CAST(quantity AS INT), 0) * ISNULL(TRY_CAST(unit_price AS DECIMAL(18,2)), 0.00) AS gross_sales,
    ISNULL(TRY_CAST(discount_amount AS DECIMAL(18,2)), 0.00) AS discount_amount,
    (ISNULL(TRY_CAST(quantity AS INT), 0) * ISNULL(TRY_CAST(unit_price AS DECIMAL(18,2)), 0.00))
      - ISNULL(TRY_CAST(discount_amount AS DECIMAL(18,2)), 0.00) AS net_sales,
    NULLIF(LTRIM(RTRIM(shipping_country)), '') AS shipping_country,
    NULLIF(LTRIM(RTRIM(shipping_city)), '') AS shipping_city,
    NULLIF(LTRIM(RTRIM(financial_status)), '') AS financial_status,
    NULLIF(LTRIM(RTRIM(fulfillment_status)), '') AS fulfillment_status
FROM dbo.stg_order_items
WHERE NULLIF(LTRIM(RTRIM(order_id)), '') IS NOT NULL;
GO

INSERT INTO dbo.dim_customers (
    customer_id,
    customer_name,
    email,
    first_order_date,
    most_recent_order_date,
    total_orders,
    total_quantity_purchased,
    total_revenue,
    customer_country,
    customer_city
)
SELECT
    customer_id,
    MAX(customer_name) AS customer_name,
    MAX(customer_email) AS email,
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS most_recent_order_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(ISNULL(quantity, 0)) AS total_quantity_purchased,
    SUM(ISNULL(net_sales, 0.00)) AS total_revenue,
    MAX(shipping_country) AS customer_country,
    MAX(shipping_city) AS customer_city
FROM dbo.fact_order_items
WHERE customer_id IS NOT NULL
GROUP BY customer_id;
GO
