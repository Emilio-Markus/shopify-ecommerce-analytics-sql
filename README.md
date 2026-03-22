# Shopify E-commerce Data Analysis (SQL Project)

**End-to-end SQL analysis project simulating real-world e-commerce business decision-making.**

---

## 📌 Project Overview

This project demonstrates how raw Shopify/e-commerce data can be transformed into meaningful business insights using SQL.

The goal is to go beyond basic queries and solve real business problems related to:

* Revenue performance
* Product profitability
* Customer behavior
* Growth opportunities

This project reflects how a data analyst would support decision-making in a real e-commerce environment.

---

## 🎯 Business Problem

E-commerce businesses generate large volumes of transactional data but often lack clear visibility into:

* Which products drive the most revenue
* Which customers generate the highest value
* How sales trends evolve over time
* Where revenue opportunities are being missed

This project addresses these challenges by transforming raw data into structured insights that support business growth.

---

## 🧱 Data Structure

The analysis is based on a simplified e-commerce data model with the following key tables:

### 1. `fact_order_items`

Transactional data at the order-item level, including product sales, quantities, and revenue.

### 2. `dim_customers`

Customer-level information including purchase behavior and lifetime value.

### 3. `dim_products`

Product-level details used to evaluate performance and profitability.

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

## 📊 Case Study: Sample E-commerce Insights

Using a simulated Shopify dataset, the following insights were identified:

### 🔹 Revenue Insights

* Total revenue: $124,850
* 5 products contributed to over 62% of total revenue (high revenue concentration)
* Sales peaked consistently at month-end, indicating potential customer purchase cycles

### 🔹 Product Performance

* Top product generated $18,200 alone
* Bottom 30% of products contributed less than 8% of total revenue
* Certain products showed high sales volume but relied heavily on discounts (over 25%)

### 🔹 Customer Behavior

* 71% of customers made only one purchase
* Repeat customers contributed 55% of total revenue
* Average order value (AOV): $87.40

---

## 💡 Business Recommendations

Based on the analysis, the following actions are recommended:

* Focus marketing efforts on high-performing products to maximize return on investment
* Implement customer retention strategies (email campaigns, loyalty programs)
* Reduce over-reliance on discounts to improve profit margins
* Bundle slow-moving products with top sellers to increase overall sales

---

## 🛠️ Tools Used

* SQL Server (T-SQL)
* GitHub (project documentation)

---

## 📂 Project Structure

```text
shopify-ecommerce-data-analysis/

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
2. Load e-commerce data into staging tables
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
Data Analyst | SQL | E-commerce & Business Insights
