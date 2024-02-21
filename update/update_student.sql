-- update age
UPDATE students
SET age_student = RAND()*100
WHERE age_student;

UPDATE studets
SET age_student = RAND()*100
WHERE age_student <= 0;