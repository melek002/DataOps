# 📊 DataOps Internship Project: Student Session Analytics

## 🔍 Project Overview

This project demonstrates a complete DataOps workflow for managing and analyzing educational session attendance data. It integrates data engineering (ETL), relational and graph modeling, SQL & Cypher querying, and dashboarding with Looker Studio.

---
# What is Your Data Pipeline Doing and Why?
This data pipeline extracts structured subscription-related records from an OLTP source, Then performs cleaning and transformation using Python, and loads the refined dataset into a PostgreSQL OLAP table hosted on Aiven. The purpose is to create a clean, query-ready dataset that can be further analyzed and visualized in Looker Studio. And to make it simple to use to non developers and business owners 
# How Did You Design Your Graph Schema?
The graph schema is modeled to reflect key entities and their relationships in simple design
# What Are Your Cypher Queries Solving?
The Cypher/Sql queries focus on uncovering attendance patterns and student engagement levels within an academic module system. 
# Assumptions, Challenges, and Design Decisions

importing my database into looker studio
Pandas + SQLAlchemy it was my first time using it kept searching didn't want to just import csv 
Data Quality: handle missing data was hard how to do it specialy ProductSchedule was hard to handle
finally neo4j am not used to working with it so had to relearn it in thoes few days and i think i got the hand of it 

Churn Inference Without Explicit Field
No explicit churn label existed in the dataset.
Solution: Defined and engineered ChurnFlag using diploma, progress, and end date logic.





## 🛠️ ETL Pipeline

The ETL notebook processes raw CSV files containing student and session data. It performs:

- Data cleaning: Handling nulls, type casting
- Transformation: Merging attendance logs with metadata
- Loading:
  - PostgreSQL for relational analytics
  - Neo4j for graph-based insights

---

## 🧱 Relational Schema (PostgreSQL)

### **students**

| Column      | Type | Notes       |
| ----------- | ---- | ----------- |
| student\_id | TEXT | Primary Key |
| name        | TEXT |             |
| email       | TEXT |             |

### **sessions**

| Column      | Type    | Notes       |
| ----------- | ------- | ----------- |
| session\_id | TEXT    | Primary Key |
| date        | DATE    |             |
| duration    | INTEGER |             |
| module      | TEXT    |             |

### **attendance**

| Column       | Type                      | Notes                  |
| ------------ | ------------------------- | ---------------------- |
| student\_id  | TEXT                      | Foreign Key → students |
| session\_id  | TEXT                      | Foreign Key → sessions |
| Composite PK | student\_id + session\_id |                        |

---

## 🕸️ Graph Schema (Neo4j)

### **Nodes:**

- 🟣 `Student`
- 🟡 `Session`

### **Relationships:**

- 🔁 `(:Student)-[:ATTENDED]->(:Session)`

📸 Screenshot provided in `/images/graph_model.png`
---

## 📌 Cypher & SQL Queries

- **Cypher**: Used to find insights like most active students, sessions with highest engagement, or isolated attendees.
- **SQL**: Used for classical aggregates, filtering by module, country, or time.

All queries are available in:

- `cypher_queries.txt`
- `sql_queries.sql`

---

## 📈 Looker Studio Dashboard

- Visualizes total attendance, per-student/session metrics, and trends over time.
- [🔗 https://lookerstudio.google.com/reporting/e8a42526-8e5c-4c75-9cf5-5d238b478604](#)

---

## 📁 Folder Structure

```
/dataops-internship-project
├── etl_pipeline.ipynb
├── cypher_queries.txt
├── sql_queries.sql
├── /images/
│   └── graph_model.png
├── /docs/
│   ├── relational_schema.md
│   └── graph_model.md
└── README.md
```

---

## ✅ Deliverables Summary

- ✔️ ETL Notebook
- ✔️ SQL & Cypher Queries
- ✔️ Schema Diagrams
- ✔️ README Documentation
- ✔️ Looker Studio Preview

