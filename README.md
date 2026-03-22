# Shopify E-commerce Data Analysis (SQL Project)

## 📌 Project Overview

This project demonstrates how raw Shopify/e-commerce data can be transformed into meaningful business insights using SQL.

The goal is to move beyond basic queries and answer real business questions related to:

* Revenue performance
* Product profitability
* Customer behavior
* Growth opportunities

This project simulates how a data analyst would support decision-making in a real e-commerce business.

---

## 🎯 Business Problem

E-commerce businesses generate large amounts of data but often lack clear visibility into:

* Which products drive the most revenue
* Which customers generate the most value
* How sales trends change over time
* Where revenue opportunities are being missed

This project addresses these challenges by transforming raw transactional data into actionable insights.

---

## 🧱 Data Structure

The analysis is based on a simplified e-commerce data model with the following key tables:

### 1. `fact_order_items`

Contains transactional data at the order-item level.

### 2. `dim_customers`

Contains customer-level information and aggregated metrics.

### 3. `dim_products`

Contains product-level details.

---

## ⚙️ Key Analysis Performed

### Revenue Analysis

* Total revenue calculation
* Monthly sales trends
* Revenue by country

### Product Performance

* Top-selling products (by revenue and quantity)
* Underperforming products
* Discount dependency analysis

### Customer Analysis

* Top customers by revenue
* Repeat vs one-time customers
* Average order value (AOV)

---

## 📊 Key Insights (Example)

* A small number of products contribute to a large portion of total revenue (revenue concentration)
* A high percentage of customers make only one purchase (low retention opportunity)
* Certain products rely heavily on discounts, reducing profitability

---

## 💡 Business Recommendations

* Focus marketing efforts on high-performing products
* Introduce retention strategies (email marketing, bundles, loyalty programs)
* Reduce over-reliance on discounts for specific product categories

---

## 🛠️ Tools Used

* SQL Server (T-SQL)
* GitHub (project documentation)

---

## 📂 Project Structure

```
shopify-ecommerce-data-analysis/
│
├── data/
├── sql/
│   ├── staging_tables.sql
│   ├── clean_tables.sql
│   ├── transformations.sql
│   ├── analysis_queries.sql
│
├── reports/
│   ├── case_study.md
│
└── README.md
```

---

## 🚀 How to Use This Project

1. Create tables using the scripts in `/sql`
2. Load sample e-commerce data into staging tables
3. Run transformation scripts to clean and structure data
4. Execute analysis queries to generate insights

---

## 📈 Future Improvements

* Build a Power BI dashboard for visualization
* Automate data ingestion process
* Expand analysis to include cohort retention and customer segmentation

---

## 👤 Author

Emilio Markus
Aspiring Data Analyst | SQL | Business Insights
