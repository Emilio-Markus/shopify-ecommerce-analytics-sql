/*
=========================================================
FILE: staging_tables.sql
PURPOSE:
Create raw staging tables for imported Shopify/e-commerce data.
These tables are intentionally flexible and store many values
as NVARCHAR to make importing CSV/Excel data easier.
=========================================================
*/

IF OBJECT_ID('dbo.stg_order_items', 'U') IS NOT NULL
    DROP TABLE dbo.stg_order_items;

IF OBJECT_ID('dbo.stg_customers', 'U') IS NOT NULL
    DROP TABLE dbo.stg_customers;

IF OBJECT_ID('dbo.stg_products', 'U') IS NOT NULL
    DROP TABLE dbo.stg_products;
GO

CREATE TABLE dbo.stg_order_items (
    order_id             NVARCHAR(100),
    order_date           NVARCHAR(100),
    customer_id          NVARCHAR(100),
    customer_name        NVARCHAR(255),
    customer_email       NVARCHAR(255),
    product_id           NVARCHAR(100),
    product_name         NVARCHAR(255),
    product_category     NVARCHAR(100),
    sku                  NVARCHAR(100),
    quantity             NVARCHAR(50),
    unit_price           NVARCHAR(50),
    discount_amount      NVARCHAR(50),
    shipping_country     NVARCHAR(100),
    shipping_city        NVARCHAR(100),
    financial_status     NVARCHAR(50),
    fulfillment_status   NVARCHAR(50)
);
GO

CREATE TABLE dbo.stg_customers (
    customer_id             NVARCHAR(100),
    customer_name           NVARCHAR(255),
    email                   NVARCHAR(255),
    first_order_date        NVARCHAR(100),
    most_recent_order_date  NVARCHAR(100),
    customer_country        NVARCHAR(100),
    customer_city           NVARCHAR(100)
);
GO

CREATE TABLE dbo.stg_products (
    product_id          NVARCHAR(100),
    product_name        NVARCHAR(255),
    sku                 NVARCHAR(100),
    product_category    NVARCHAR(100),
    listed_price        NVARCHAR(50),
    product_status      NVARCHAR(50),
    created_date        NVARCHAR(100)
);
GO
