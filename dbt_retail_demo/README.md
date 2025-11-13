# 🏪 Retail Data Transformation using dbt (Star Schema Demo)

## 📖 Overview
This project demonstrates how to use **dbt (Data Build Tool)** to transform raw retail data (CSV) into a clean **star schema** suitable for analytics. It includes staging, dimension, and fact models.

## 🧱 Architecture
```
Raw CSVs → Staging (cleaning) → Marts (star schema: Fact + Dimensions)
```

## ⚙️ Tech Stack
- dbt (Core or Cloud)
- PostgreSQL / Snowflake / BigQuery
- SQL
- CSV (as seed data)

## 📂 Folder Structure
```
dbt_retail_demo/
├── models/
│   ├── staging/
│   └── marts/
├── seeds/
└── dbt_project.yml
```

## 🧮 Example Models
**fact_sales.sql**
```sql
SELECT
    s.order_id,
    s.order_date,
    c.customer_name,
    p.product_name,
    p.category,
    s.sales_amount
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_customers') }} c ON s.customer_id = c.customer_id
JOIN {{ ref('stg_products') }} p ON s.product_id = p.product_id;
```

## 🧩 How to Run
```bash
dbt seed
dbt run
dbt docs generate
dbt docs serve
```

## 📊 Output Example
| order_id | order_date | customer_name | product_name | category | sales_amount |
|-----------|-------------|---------------|---------------|-----------|---------------|
| 1001 | 2025-01-15 | Alice | Mobile | Electronics | 25000 |
| 1002 | 2025-01-20 | Bob | Shirt | Apparel | 1500 |
| 1003 | 2025-01-22 | Charlie | Laptop | Electronics | 60000 |

## 🌟 Key Learnings
- dbt ref() and modular SQL
- Staging + marts layer design
- Star schema creation
- Data modeling best practices

## 📜 License
MIT License
