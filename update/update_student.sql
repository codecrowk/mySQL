-- update age
UPDATE students
SET age_student = RAND()*100
WHERE age_student;

UPDATE students
SET age_student = RAND()*100
WHERE age_student <= 0
OR age_student IS NULL;