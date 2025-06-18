🔹Q1. Sessions attended by “Alice”
SELECT s.*
FROM students AS st
JOIN attendance AS a ON st.student_id = a.student_id
JOIN sessions AS s ON a.session_id = s.session_id
WHERE st.name = 'Alice';
🔹Q2. Top 3 students with most attended sessions
SELECT st.name, COUNT(*) AS session_count
FROM students AS st
JOIN attendance AS a ON st.student_id = a.student_id
GROUP BY st.name
ORDER BY session_count DESC
LIMIT 3;
🔹Q3. Count how many students attended each session
SELECT s.session_id, COUNT(DISTINCT a.student_id) AS student_count
FROM sessions AS s
JOIN attendance AS a ON s.session_id = a.session_id
GROUP BY s.session_id;
🔹Q4. Unique students per module
SELECT s.module, COUNT(DISTINCT a.student_id) AS unique_students
FROM sessions AS s
JOIN attendance AS a ON s.session_id = a.session_id
GROUP BY s.module;
🔹Q5. Students who never attended any session
SELECT st.*
FROM students AS st
LEFT JOIN attendance AS a ON st.student_id = a.student_id
WHERE a.session_id IS NULL;




