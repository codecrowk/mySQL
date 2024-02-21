/*----- CREATE TABLES -----*/
CREATE TABLE parking_register (
    id_register INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        id_user INT NOT NULL,
         id_car INT NOT NULL,
          doing BOOLEAN NOT NULL, --get in, get out
  date_register DATE NOT NULL
);

CREATE TABLE users (
        id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      name_user VARCHAR(45),
);

CREATE TABLE cars (
        id_student INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      student_name VARCHAR(45),
  student_lastName VARCHAR(45),
             email VARCHAR(120) NOT NULL,
          birthday DATE,
       age_student VARCHAR(3),
            UNIQUE (email)
);


CREATE TABLE parking_places (
        id_student INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      student_name VARCHAR(45),
  student_lastName VARCHAR(45),
             email VARCHAR(120) NOT NULL,
          birthday DATE,
       age_student VARCHAR(3),
            UNIQUE (email)
);

