# 🛍️ Shopify E-commerce Data Analytics (SQL Server Project)

## 📌 Project Overview

This project demonstrates a full end-to-end SQL Server analytics workflow, transforming raw e-commerce transaction data into business-ready insights.

---

## 🎯 Business Objective

Analyze e-commerce data to uncover:
- Revenue drivers
- Customer behavior
- Product performance
- Growth opportunities

---

## 📂 Project Structure

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
    └── analysis_queries.sql

---

## ⚙️ Technologies Used

- SQL Server
- T-SQL
- SSMS
- GitHub

---

## 🔄 Data Pipeline

- Load CSV → staging tables
- Transform → fact & dimension tables
- Run analysis queries
- Generate report

---

## 📊 Project Results

### Key Metrics

- Total Revenue: $2,090
- Total Orders: 10
- Total Customers: 7
- AOV: $209

---

### 📈 Revenue Trend

SELECT 
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(net_sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM dbo.fact_order_items
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;

2024-01 → $1,550 (7 orders)
2024-02 → $540 (3 orders)

Insight:
Revenue is stronger in January than February.

---

### 🛒 Top Products

- Office Chair — $760
- Modern Lamp — $440
- Coffee Table — $300
- Rug — $270

---

### 👥 Customer Segmentation

- Repeat Customers: 2
- One-Time Customers: 5

---

## 📈 Key Takeaways

- Revenue concentrated in few products
- Repeat customers valuable
- Furniture category strongest
- Opportunity to increase basket size

---

## 🚀 Future Improvements

- Power BI dashboard
- Larger dataset
- Cohort analysis
- Automation

---

## 👤 Author

Emilio Markus
Data Analyst | SQL | E-commerce Analytics
