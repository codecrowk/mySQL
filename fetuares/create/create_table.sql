/*----- CREATE TABLES -----*/
-- get, out in doing column

/*YOU FORGOT FOREING KEY*/
/*- Main tables -*/
CREATE TABLE parking_register (
  id_register INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      id_user INT NOT NULL,
       id_car INT NOT NULL,
        doing BOOLEAN NOT NULL, 
   created_at TIMESTAMP,
);

CREATE TABLE users (
     id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  dni_number VARCHAR(100),
    dni_type VARCHAR(50),
   name_user VARCHAR(45),
   last_name VARCHAR(45),
       email VARCHAR(120),
      gender VARCHAR(25),
  created_at TIMESTAMP,
   remove_at TIMESTAMP
);

CREATE TABLE cars (
      id_car INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
       plate VARCHAR(45),
       brand VARCHAR(45),
       color VARCHAR(45),
  created_at TIMESTAMP,
   remove_at TIMESTAMP
);

CREATE TABLE parking_places (
        id_place INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  location_place VARCHAR(45),
    status_place VARCHAR(45)
);

/*- Secondary tables -*/
CREATE TABLE dny_type (
  id_type_document INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
         name_type VARCHAR(45)
);

CREATE TABLE colors (
    id_color INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_color VARCHAR(45)
);

CREATE TABLE gender (
    id_gender INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_gender VARCHAR(45)
);

CREATE TABLE brands (
    id_brand INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_brand VARCHAR(45)
);