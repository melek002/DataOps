# 📊 DataOps Internship Project: Student Session Analytics

## 🔍 Project Overview

This project demonstrates a complete DataOps workflow for managing and analyzing educational session attendance data. It integrates data engineering (ETL), relational and graph modeling, SQL & Cypher querying, and dashboarding with Looker Studio.

---

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
| country     | TEXT | Optional    |

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

📌 **Why Relational?** Useful for tabular reporting, aggregates, and Looker Studio dashboarding.

---

## 🕸️ Graph Schema (Neo4j)

### **Nodes:**

- 🟣 `Student`
- 🟡 `Session`

### **Relationships:**

- 🔁 `(:Student)-[:ATTENDED]->(:Session)`

📸 Screenshot provided in `/images/graph_model.png`

📌 **Why Graph?** Helps reveal attendance patterns, frequent session attendees, and clusters using centrality or traversal algorithms.

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
- [🔗 Dashboard Preview Link Here](#) *(replace with your link)*

---

## 📎 Assumptions & Notes

- One student can attend many sessions (many-to-many).
- Some countries or emails may be missing.
- Used force-based layout in Neo4j Bloom for clarity.

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

