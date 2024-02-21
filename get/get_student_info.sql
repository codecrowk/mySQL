/*GET AGE*/
SELECT *, MIN(age_student) FROM students;

SELECT * FROM students
WHERE age_student >= 20;

SELECT * FROM students
WHERE age_student BETWEEN 20 AND 60;

/*COUNT STUDENTS*/
SELECT COUNT(*) AS totalStudents
FROM students;

/*List students*/
SELECT * FROM students
WHERE student_name 
LIKE 'm%' OR 'j%';

SELECT * FROM students
WHERE student_name LIKE 'a%';
