# 🧱 Relational Schema (PostgreSQL)

The PostgreSQL schema for this project 
---

## 📘 Table: `students`

| Column     | Type | Constraints      |
|------------|------|------------------|
| student_id | TEXT | PRIMARY KEY      |
| name       | TEXT | NOT NULL         |
| email      | TEXT | NOT NULL         |

---

## 📘 Table: `sessions`

| Column     | Type    | Constraints      | 
|------------|---------|------------------|
| session_id | TEXT    | PRIMARY KEY      |
| date       | DATE    | NOT NULL         |
| instructor | TEXT    | NOT NULL         |
| module     | TEXT    | NOT NULL         |
---

## 📘 Table: `attendance`

| Column      | Type | Constraints                 |
|-------------|------|-----------------------------|
| student_id  | TEXT | FOREIGN KEY → `students`    |
| session_id  | TEXT | FOREIGN KEY → `sessions`    |
| PRIMARY KEY | composite (student_id, session_id) |


