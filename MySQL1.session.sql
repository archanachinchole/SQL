SELECT name, avg(marks) AS total_marks
FROM student
GROUP BY name
ORDER BY total_marks DESC;
