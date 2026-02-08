# 📊 Sales Analytics & Profit Growth Analysis

## 📌 Project Overview

This project demonstrates an **end-to-end sales analytics pipeline** designed to convert raw sales data into meaningful business insights. The workflow includes data cleaning, database integration, and advanced SQL analysis to evaluate sales performance, profitability, and growth trends.

The project closely mirrors real-world **Data Analyst** tasks, focusing on data quality, structured querying, and insight generation rather than pure model building.

---

## 🛠️ Tools & Technologies

* **Python:** pandas
* **Database:** MySQL
* **SQL Concepts:** CTEs, Window Functions, Aggregations
* **Data Source:** Excel
* **Environment:** Jupyter Notebook / VS Code

---

## 🔄 Project Workflow

### 1️⃣ Data Preprocessing

* Cleaned raw sales data using **Python (pandas)**
* Handled missing values, removed duplicates, and corrected data types
* Prepared analysis-ready datasets and exported cleaned data to Excel

### 2️⃣ Data Loading

* Designed a structured schema in **MySQL** for transactional sales data
* Loaded cleaned Excel data into MySQL using **SQLAlchemy**

### 3️⃣ Data Analysis

Performed advanced SQL analysis using **CTEs and window functions** to:

* Identify **top revenue-generating products**
* Analyze **region-wise sales performance**
* Detect **seasonal sales trends** by month and category
* Measure **year-over-year (YoY) profit growth** across sub-categories

---

## 📈 Key Business Questions Answered

* Which products generate the highest revenue?
* What are the top-performing products in each region?
* Which month records the highest sales for each category?
* Which sub-category shows the highest profit growth from 2022 to 2023?

---

## 📊 Key Insights

* Identified high-performing products and regions contributing most to overall sales
* Highlighted seasonal trends useful for planning and forecasting
* Revealed sub-categories with strong YoY profit growth to support strategic decisions

---

## 📁 Project Structure

```
project/
│
├── data/
│   ├── raw_sales_data.xlsx
│   └── cleaned_sales_data.xlsx
│
├── sql/
│   └── analysis_queries.sql
│
├── notebooks/
│   └── data_preprocessing.ipynb
│
└── README.md
```

---

## 🎯 Learning Outcomes

* Strengthened skills in **data cleaning and preprocessing**
* Gained hands-on experience with **MySQL and advanced SQL analytics**
* Applied analytical thinking to solve real-world business problems

---

## 🚀 Future Enhancements

* Add visualizations using Tableau or Power BI
* Automate the pipeline using scheduled ETL jobs
* Extend analysis to quarterly and rolling-period trends

---

## 👤 Author

**Pranit Kamble**
Aspiring Data Analyst | Python • SQL • Excel • MySQL
