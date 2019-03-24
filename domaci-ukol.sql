#Task 1
#—————
SELECT t.name FROM teacher t LEFT JOIN class_subject cs ON t.id = cs.teacher_id
WHERE cs.class_id IS NULL;

#Task 2
#—————
SELECT p.name, COUNT(ps.grade) AS grade_5_count
FROM pupil p
       JOIN pupil_subject ps ON p.id = pupil_id
WHERE ps.grade = 5
GROUP BY p.name
ORDER BY p.name;

#Task 3
#—————
SELECT c.year, c.name, AVG(ps.grade)
FROM pupil_subject ps
       JOIN pupil p ON ps.pupil_id = p.id
       JOIN class c ON p.class_id = c.id
GROUP BY c.year, c.name
ORDER BY c.year, c.name;

#Task 4
#—————
SELECT c.year, AVG(ps.grade)
FROM pupil_subject ps
       JOIN pupil p ON ps.pupil_id = p.id
       JOIN class c ON p.class_id = c.id
GROUP BY c.year
ORDER BY c.year;

#Task 5
#—————
SELECT t.name FROM teacher t JOIN class_subject cs ON t.id = cs.teacher_id JOIN class c ON t.id = c.homeroom_teacher_id WHERE cs.class_id = c.id;

#Task 6
#—————
SELECT s.name, c.year, AVG(ps.grade) FROM class c JOIN pupil p ON c.id = p.class_id JOIN pupil_subject ps ON p.id = ps.id JOIN subject s ON ps.subject_id = s.id GROUP BY s.name, c.year ORDER BY s.name, c.year;


#Task 7
#—————
SELECT t.name, AVG(ps.grade) FROM teacher t JOIN class_subject cs ON cs.teacher_id = t.id JOIN pupil_subject ps ON ps.subject_id = cs.subject_id GROUP BY t.name ORDER BY AVG(ps.grade), t.name LIMIT 5;

SELECT t.name, AVG(ps.grade) FROM teacher t JOIN class_subject cs ON cs.teacher_id = t.id JOIN pupil_subject ps ON ps.subject_id = cs.subject_id GROUP BY t.name ORDER BY AVG(ps.grade) DESC, t.name LIMIT 5;