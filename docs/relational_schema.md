# 🧱 Relational Schema (PostgreSQL)

The PostgreSQL schema for this project supports tabular reporting and structured querying of student session attendance data. It is composed of three core tables:

---

## 📘 Table: `students`

| Column     | Type | Constraints     | Description              |
|------------|------|------------------|--------------------------|
| student_id | TEXT | PRIMARY KEY      | Unique student identifier |
| name       | TEXT | NOT NULL         | Student full name        |
| email      | TEXT | NOT NULL         | Student email address    |
| country    | TEXT | OPTIONAL         | Student country of origin|

---

## 📘 Table: `sessions`

| Column     | Type    | Constraints     | Description                |
|------------|---------|------------------|----------------------------|
| session_id | TEXT    | PRIMARY KEY      | Unique session identifier  |
| date       | DATE    | NOT NULL         | Date of the session        |
| duration   | INTEGER | NOT NULL         | Duration in minutes        |
| module     | TEXT    | NOT NULL         | Subject or module covered  |

---

## 📘 Table: `attendance`

| Column      | Type | Constraints                | Description                                |
|-------------|------|-----------------------------|--------------------------------------------|
| student_id  | TEXT | FOREIGN KEY → `students`   | Refers to the attending student            |
| session_id  | TEXT | FOREIGN KEY → `sessions`   | Refers to the attended session             |
| PRIMARY KEY | composite (student_id, session_id) | Ensures unique attendance records          |

---

## 🔍 Purpose

- Optimized for Looker Studio dashboard integration (via Aiven PostgreSQL hosting).
- Enables filtering by time, country, module, and aggregation logic.
- Supports JOINs for analytical queries like attendance frequency, session popularity, etc.

