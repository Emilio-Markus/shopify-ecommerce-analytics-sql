SELECT SUM(net_sales) AS total_net_revenue
FROM dbo.fact_order_items;
GO

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM dbo.fact_order_items;
GO

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM dbo.fact_order_items
WHERE customer_id IS NOT NULL;
GO

SELECT
    CAST(SUM(net_sales) AS DECIMAL(18,2)) / NULLIF(COUNT(DISTINCT order_id), 0) AS average_order_value
FROM dbo.fact_order_items;
GO

SELECT TOP 10
    product_name,
    SUM(net_sales) AS total_product_revenue
FROM dbo.fact_order_items
GROUP BY product_name
ORDER BY total_product_revenue DESC;
GO

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
