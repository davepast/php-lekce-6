

SELECT COUNT(*), AVG(salary) FROM teacher;
SELECT name, MIN(year), MAX(year) FROM class GROUP BY name;
#Seskupte třídy podle názvu, pro každý z nich vypište nejnižší a nejvyšší ročník, výsledky seřaďte vzestupně podle nejvyššího ročníku
SELECT name, MIN(year), MAX(year) FROM class GROUP BY name ORDER BY MAX(year)


SELECT t.id, t.name, c.year, c.name
FROM teacher t
       JOIN class c ON t.id = c.homeroom_teacher_id



#Vypište počet učitelů v databázi a jejich průměrný plat. Výsledné sloupce pojmenujte teachers_count a avg_salary
SELECT COUNT(*) AS teachers_count, AVG(salary) AS avg_salary FROM teacher;

#Vypište seznam tříd a jejich třídních učitelů, výsledek seřaďte podle ročníku a názvu třídy
SELECT c.year, c.name, t.name FROM class c JOIN teacher t ON c.homeroom_teacher_id = t.id ORDER BY c.year, c.name;

#Vypište ročníky a názvy tříd, jejichž třídní učitel se jmenuje Albert
SELECT c.year, c.name FROM class c JOIN teacher t ON c.homeroom_teacher_id = t.id WHERE t.name = 'Albert';

#Vypište počet žáků v každé třídě - ve výsledné tabulce bude ročník, jméno třídy a počet žáků
SELECT c.year, c.name, COUNT(p.id) FROM class c LEFT JOIN pupil p on c.id = p.class_id GROUP BY c.year, c.name




SELECT c.year, c.name, t.name
FROM class c
       JOIN teacher t ON c.homeroom_teacher_id = t.id;

UPDATE class c
  JOIN teacher t ON c.homeroom_teacher_id = t.id
SET c.name = 'C'
WHERE t.name IN ('Albert', 'Brandon');


SELECT c.year, c.name, t.name
FROM class c
       JOIN teacher t ON c.homeroom_teacher_id = t.id;

UPDATE class c JOIN teacher t ON c.homeroom_teacher_id = t.id
SET c.name = 'A'
WHERE t.name IN ('Brandon', 'Albert');

SELECT c.year, c.name, t.name
FROM class c
       JOIN teacher t ON c.homeroom_teacher_id = t.id;



INSERT INTO subject (name) VALUES ('Literature'), ('Science');


INSERT INTO subject (name, time) VALUES ('Literature','16:00'), ('Science', '10:00');

DELETE s FROM subject s WHERE s.name = 'Science'
DELETE s FROM subject s WHERE s.name = 'Literature'
