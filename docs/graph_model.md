# 🕸️ Graph Model (Neo4j)
## 🟣 Node: `Student`

**Properties:**
- `student_id` (string): Unique student identifier
- `name` (string)
- `email` (string)

---

## 🟡 Node: `Session`

**Properties:**
- `session_id` (string): Unique session identifier
- `date` (date)
- `instructor` (string) instructor name
- `module` (string): Subject or topic

---

## 🔁 Relationship: `ATTENDED`

**Type:** `(:Student)-[:ATTENDED]->(:Session)`

**Meaning:** Indicates that a student attended a session.

