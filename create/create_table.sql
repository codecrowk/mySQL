-- Is birthday not birth_day
CREATE TABLE students (
        id_student INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      student_name VARCHAR(45),
  student_lastName VARCHAR(45),
             email VARCHAR(120) NOT NULL,
          birthday DATE,
       age_student VARCHAR(3),
            UNIQUE (email)
);