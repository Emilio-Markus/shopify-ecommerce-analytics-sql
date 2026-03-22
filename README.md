# 🛍️ Shopify E-commerce Data Analytics (SQL Server Project)

## 📌 Project Overview

This project demonstrates a full end-to-end data analytics pipeline using SQL Server, transforming raw e-commerce data into actionable business insights.

The solution follows a structured approach:
- Data ingestion (staging tables)
- Data transformation (fact & dimension tables)
- Business analysis (SQL queries)
- Insight reporting (Markdown reports)

---

## 🎯 Business Objective

The goal of this project is to analyze e-commerce transaction data to uncover:

- Revenue drivers
- Customer purchasing behavior
- High-performing products
- Opportunities to increase profitability and retention

---

## 🏗️ Data Architecture

The project is structured into three main layers:

### 1. Staging Layer
- Raw data imported into flexible staging tables
- Stored as `NVARCHAR` for easy ingestion

### 2. Transformation Layer
- Cleaned and structured into:
  - `fact_order_items`
  - `dim_customers`
  - `dim_products`

### 3. Analytics Layer
- SQL queries used to generate business insights
- Metrics and performance analysis

---

## 📂 Project Structure


📁 sql/
├── staging_tables.sql
├── clean_tables.sql
├── transformations.sql
└── analysis_queries.sql

📁 reports/
└── sample_output.md


---

## ⚙️ Technologies Used

- SQL Server (SSMS)
- T-SQL
- Data Modeling (Star Schema)
- GitHub (Version Control)

---

## 🔄 Data Pipeline

1. Load raw CSV data into staging tables
2. Clean and structure data into fact and dimension tables
3. Transform data into analysis-ready format
4. Run analytical queries to generate insights
5. Document results in reports

---

## 📊 Project Results

### Key Metrics

- **Total Revenue:** $2,090  
- **Total Orders:** 10  
- **Total Customers:** 7  
- **Average Order Value (AOV):** $209  

---

### 📈 Revenue Trend

```sql
SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(net_sales) AS revenue
FROM dbo.fact_order_items
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;

Insight:
Revenue is concentrated in early months, indicating potential to scale growth through consistent marketing and retention strategies.

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
🔁 Repeat customers contribute strong value but are limited
🪑 Furniture is the highest-performing category
📦 Opportunity exists to increase AOV through bundling
🚀 Strategic Recommendations
1. Focus on High-Revenue Products

Office Chairs and Modern Lamps should be prioritized in marketing campaigns.

2. Increase Customer Retention
Implement email marketing
Introduce loyalty programs
3. Improve Product Bundling

Bundle complementary products to increase order value.

4. Optimize Pricing Strategy

Test reduced discounting to improve profit margins.

5. Expand Winning Categories

Focus on scaling Furniture and Lighting product lines.

📎 Full Report

Detailed analysis available here:
👉 /reports/sample_output.md

💡 What This Project Demonstrates
Ability to build a data pipeline from raw data to insights
Strong SQL skills (joins, aggregations, transformations)
Business thinking and analytical reasoning
Ability to communicate insights clearly
🚀 Future Improvements
Add Power BI dashboard
Automate data pipeline (ETL scheduling)
Expand dataset for deeper analysis
Introduce cohort analysis for retention
👤 Author

Emilio Markus
Aspiring Data Analyst | SQL | Business Analytics
