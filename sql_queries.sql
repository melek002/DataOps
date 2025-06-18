-- 📄 SQL Queries: Relational Analysis for the DataOps Project

-- 🔍 1. List all sessions with student names who attended
SELECT s.name AS student_name, a.session_id, sess.date, sess.module
FROM attendance a
JOIN students s ON s.student_id = a.student_id
JOIN sessions sess ON sess.session_id = a.session_id;

-- 📊 2. Count number of attendees per session
SELECT a.session_id, COUNT(a.student_id) AS attendee_count
FROM attendance a
GROUP BY a.session_id;

-- 🧠 3. Top 5 students by number of sessions attended
SELECT s.name, COUNT(a.session_id) AS sessions_attended
FROM attendance a
JOIN students s ON s.student_id = a.student_id
GROUP BY s.name
ORDER BY sessions_attended DESC
LIMIT 5;

-- 🌍 4. Total attendance by country
SELECT s.country, COUNT(*) AS attendance_count
FROM attendance a
JOIN students s ON s.student_id = a.student_id
GROUP BY s.country
ORDER BY attendance_count DESC;

-- ⏱️ 5. Total session duration attended per student
SELECT s.name AS student_name, SUM(sess.duration) AS total_minutes
FROM attendance a
JOIN students s ON s.student_id = a.student_id
JOIN sessions sess ON sess.session_id = a.session_id
GROUP BY s.name
ORDER BY total_minutes DESC;
