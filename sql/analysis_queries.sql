/*
=========================================================
FILE: analysis_queries.sql
PURPOSE:
Business-focused SQL analysis for Shopify/e-commerce data.
=========================================================
*/

-- =========================================
-- CORE BUSINESS METRICS
-- =========================================

SELECT 
    SUM(net_sales) AS total_net_revenue
FROM dbo.fact_order_items;
GO

SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM dbo.fact_order_items;
GO

SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM dbo.fact_order_items
WHERE customer_id IS NOT NULL;
GO

SELECT
    CAST(SUM(net_sales) AS DECIMAL(18,2)) / NULLIF(COUNT(DISTINCT order_id), 0) AS average_order_value
FROM dbo.fact_order_items;
GO


-- =========================================
-- TIME-BASED ANALYSIS
-- =========================================

SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(net_sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM dbo.fact_order_items
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;
GO


-- =========================================
-- PRODUCT PERFORMANCE ANALYSIS
-- =========================================

SELECT TOP 10
    product_name,
    SUM(net_sales) AS total_product_revenue
FROM dbo.fact_order_items
GROUP BY product_name
ORDER BY total_product_revenue DESC;
GO

SELECT TOP 10
    product_name,
    SUM(quantity) AS total_units_sold
FROM dbo.fact_order_items
GROUP BY product_name
ORDER BY total_units_sold DESC;
GO

SELECT
    product_category,
    SUM(net_sales) AS category_revenue
FROM dbo.fact_order_items
GROUP BY product_category
ORDER BY category_revenue DESC;
GO


-- =========================================
-- CUSTOMER ANALYSIS
-- =========================================

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS order_count
    FROM dbo.fact_order_items
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id
)
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY
    CASE
        WHEN order_count = 1 THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END;
GO

SELECT TOP 10
    customer_id,
    customer_name,
    total_orders,
    total_revenue
FROM dbo.dim_customers
ORDER BY total_revenue DESC;
GO


-- =========================================
-- GEOGRAPHIC ANALYSIS
-- =========================================

SELECT
    shipping_country,
    SUM(net_sales) AS country_revenue
FROM dbo.fact_order_items
GROUP BY shipping_country
ORDER BY country_revenue DESC;
GO

SELECT
    shipping_city,
    SUM(net_sales) AS city_revenue
FROM dbo.fact_order_items
GROUP BY shipping_city
ORDER BY city_revenue DESC;
GO


-- =========================================
-- DISCOUNT ANALYSIS
-- =========================================

SELECT
    product_name,
    SUM(discount_amount) AS total_discount_given,
    SUM(gross_sales) AS total_gross_sales,
    CASE
        WHEN SUM(gross_sales) = 0 THEN 0
        ELSE CAST((SUM(discount_amount) * 100.0 / SUM(gross_sales)) AS DECIMAL(10,2))
    END AS discount_pct_of_gross_sales
FROM dbo.fact_order_items
GROUP BY product_name
ORDER BY discount_pct_of_gross_sales DESC;
GO
