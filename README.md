# 🛍️ Retail Analytics dbt Demo — Modern Data Transformation Project

![dbt](https://img.shields.io/badge/dbt-Data%20Build%20Tool-orange)
![SQL](https://img.shields.io/badge/SQL-Star%20Schema-green)
![Warehouse](https://img.shields.io/badge/Data%20Warehouse-Modeling-blue)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## 📖 Project Overview
This mini project demonstrates how to use **dbt (Data Build Tool)** to transform raw retail sales data into a clean, analytics-ready **star schema**.  
It simulates the exact workflow used in real data engineering teams — moving from **raw CSVs → staging → fact/dimension models**.

---

## 🧠 Objectives
✅ Practice data modeling concepts (fact/dimension)  
✅ Build a modular SQL-based transformation pipeline  
✅ Create a reproducible dbt project structure  
✅ Learn how dbt’s lineage & documentation work  

---

## 🏗️ Architecture

```text
                ┌─────────────────────────────┐
                │      Raw Data (CSV files)   │
                │ customers.csv               │
                │ products.csv                │
                │ sales.csv                   │
                └──────────────┬──────────────┘
                               │
                               ▼
                   ┌──────────────────────┐
                   │  dbt Seeds           │
                   │ Loads CSVs into DB   │
                   └─────────┬────────────┘
                             │
                             ▼
                   ┌──────────────────────┐
                   │  Staging Models      │
                   │ (stg_sales.sql)      │
                   │ Clean & standardize  │
                   └─────────┬────────────┘
                             │
                             ▼
          ┌────────────────────────────────────────┐
          │               Marts Layer              │
          │ ┌────────────┐  ┌────────────┐         │
          │ │ dim_customers │ │ dim_products │     │
          │ └──────┬──────┘  └──────┬──────┘       │
          │         │               │               │
          │         ▼               ▼               │
          │           fact_sales (joins dims)       │
          └────────────────────────────────────────┘
                             │
                             ▼
                   ┌──────────────────────┐
                   │ Analytics Layer      │
                   │ Power BI / SQL / BI  │
                   └──────────────────────┘

