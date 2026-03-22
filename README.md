# 🛍️ Shopify E-commerce Data Analytics (SQL Server Project)

## 📌 Project Overview

This project demonstrates a full end-to-end SQL Server analytics workflow, transforming raw e-commerce transaction data into business-ready insights.

The project covers:

- Data ingestion into staging tables  
- Data transformation into fact and dimension tables  
- Analysis of revenue, products, customers, and trends  
- Reporting of findings in a clean business format  

---

## 🎯 Business Objective

The goal of this project is to analyze e-commerce transaction data to uncover:

- Revenue drivers  
- Customer purchasing behavior  
- High-performing products  
- Opportunities to increase profitability and retention  

---

## 🏗️ Data Architecture

The project is structured into three layers:

### 1. Staging Layer

Raw data is loaded into flexible staging tables:

- `stg_order_items`  
- `stg_customers`  
- `stg_products`  

---

### 2. Transformation Layer

Raw data is cleaned and transformed into analysis-ready tables:

- `fact_order_items`  
- `dim_customers`  
- `dim_products`  

---

### 3. Analytics Layer

Business-focused SQL queries are used to analyze:

- Revenue performance  
- Monthly sales trends  
- Product performance  
- Customer behavior  
- Geographic performance  
- Discount usage  

---

## 📂 Project Structure

''text

shopify-ecommerce-analytics-sql/
│
├── data/
│   └── sample_ecommerce_data.csv
│
├── reports/
│   └── sample_output.md
│
└── sql/
    ├── staging_tables.sql
    ├── clean_tables.sql
    ├── transformations.sql
    └── analysis_queries.sql'

⚙️ Technologies Used
SQL Server
T-SQL
SQL Server Management Studio (SSMS)
GitHub
🔄 Data Pipeline
Load raw CSV data into staging tables
Transform raw data into fact and dimension tables
Run SQL analysis queries
Summarize results in a business-style report
📊 Project Results
Key Metrics
Total Revenue: $2,090
Total Orders: 10
Total Customers: 7
Average Order Value (AOV): $209
📈 Revenue Trend
SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(net_sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM dbo.fact_order_items
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;
Month	Revenue	Orders
2024-01	$1,550	7
2024-02	$540	3

Insight:
Revenue is stronger in January than February in the sample dataset, highlighting the importance of time-based analysis for identifying performance trends.

🛒 Top Performing Products
Product	Revenue
Office Chair	$760
Modern Lamp	$440
Coffee Table	$300
Rug	$270
Wall Art	$230
Desk Lamp	$90
👥 Customer Segmentation
Repeat Customers: 2
One-Time Customers: 5
📈 Key Takeaways
💰 Revenue is concentrated in a small number of products
🔁 Repeat customers contribute meaningful value despite being fewer in number
🪑 Furniture is the highest-performing category
📦 Opportunity exists to increase basket size through product bundling
📉 Monthly trend analysis highlights performance fluctuations
🚀 Strategic Recommendations
1. Focus on High-Revenue Products

Office Chairs and Modern Lamps should be prioritized in marketing and promotional campaigns.

2. Increase Customer Retention

Introduce email marketing, remarketing, and loyalty incentives to encourage repeat purchases.

3. Improve Product Bundling

Bundle complementary items to increase average order value.

4. Optimize Pricing Strategy

Test reduced discounting on strong-performing products to improve margins.

5. Expand Winning Categories

Furniture and Lighting categories show strong performance and should be expanded.

📎 Full Report

Detailed analysis available here:
/reports/sample_output.md

💡 What This Project Demonstrates
Ability to build a full SQL analytics pipeline
Strong SQL skills (joins, aggregations, transformations)
Understanding of fact/dimension data modeling
Ability to communicate insights clearly and professionally
🚀 Future Improvements
Add a Power BI dashboard
Load separate customer and product datasets
Expand dataset for deeper analysis
Implement cohort/retention analysis
Automate data pipeline processes
👤 Author

Emilio Markus
Data Analyst | SQL | E-commerce & Business Insights
