/*
=========================================================
FILE: clean_tables.sql
PURPOSE:
Create clean analysis-ready tables for the project.
=========================================================
*/

IF OBJECT_ID('dbo.fact_order_items', 'U') IS NOT NULL
    DROP TABLE dbo.fact_order_items;

IF OBJECT_ID('dbo.dim_customers', 'U') IS NOT NULL
    DROP TABLE dbo.dim_customers;

IF OBJECT_ID('dbo.dim_products', 'U') IS NOT NULL
    DROP TABLE dbo.dim_products;
GO

CREATE TABLE dbo.fact_order_items (
    order_item_key       INT IDENTITY(1,1) PRIMARY KEY,
    order_id             NVARCHAR(50) NOT NULL,
    order_date           DATE NULL,
    customer_id          NVARCHAR(50) NULL,
    customer_name        NVARCHAR(255) NULL,
    customer_email       NVARCHAR(255) NULL,
    product_id           NVARCHAR(50) NULL,
    product_name         NVARCHAR(255) NULL,
    product_category     NVARCHAR(100) NULL,
    sku                  NVARCHAR(100) NULL,
    quantity             INT NULL,
    unit_price           DECIMAL(18,2) NULL,
    gross_sales          DECIMAL(18,2) NULL,
    discount_amount      DECIMAL(18,2) NULL,
    net_sales            DECIMAL(18,2) NULL,
    shipping_country     NVARCHAR(100) NULL,
    shipping_city        NVARCHAR(100) NULL,
    financial_status     NVARCHAR(50) NULL,
    fulfillment_status   NVARCHAR(50) NULL
);
GO

CREATE TABLE dbo.dim_customers (
    customer_key               INT IDENTITY(1,1) PRIMARY KEY,
    customer_id                NVARCHAR(50) NOT NULL,
    customer_name              NVARCHAR(255) NULL,
    email                      NVARCHAR(255) NULL,
    first_order_date           DATE NULL,
    most_recent_order_date     DATE NULL,
    total_orders               INT NULL,
    total_quantity_purchased   INT NULL,
    total_revenue              DECIMAL(18,2) NULL,
    customer_country           NVARCHAR(100) NULL,
    customer_city              NVARCHAR(100) NULL
);
GO

CREATE TABLE dbo.dim_products (
    product_key           INT IDENTITY(1,1) PRIMARY KEY,
    product_id            NVARCHAR(50) NOT NULL,
    product_name          NVARCHAR(255) NULL,
    sku                   NVARCHAR(100) NULL,
    product_category      NVARCHAR(100) NULL,
    listed_price          DECIMAL(18,2) NULL,
    product_status        NVARCHAR(50) NULL,
    created_date          DATE NULL
);
GO
