# 🕸️ Graph Model (Neo4j)

This graph schema captures the many-to-many relationship between students and sessions using nodes and directional relationships in Neo4j.

---

## 🟣 Node: `Student`

**Properties:**
- `student_id` (string): Unique student identifier
- `name` (string)
- `email` (string)
- `country` (string, optional)

---

## 🟡 Node: `Session`

**Properties:**
- `session_id` (string): Unique session identifier
- `date` (date)
- `duration` (int): Duration in minutes
- `module` (string): Subject or topic

---

## 🔁 Relationship: `ATTENDED`

**Type:** `(:Student)-[:ATTENDED]->(:Session)`

**Meaning:** Indicates that a student attended a session.

---

## 🧠 Why Graph?

- **Pattern detection**: Identify isolated or highly active students.
- **Network analysis**: Use centrality or traversal to study attendance connectivity.
- **Intuitive visualization**: Neo4j Bloom displays relationships clearly.

📸 *Graph Screenshot included in* `/images/graph_model.png`

---

## 💡 Modeling Notes
- Each attendance event becomes a relationship.
- No duplicated nodes thanks to `MERGE` in Cypher.
- The layout used in Bloom is force-directed for better clarity.

This graph complements the relational model by enabling exploratory queries that are difficult to express in SQL.

