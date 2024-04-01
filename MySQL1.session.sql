SELECT s.name
FROM student s
LEFT JOIN teacher t ON s.name = t.name;