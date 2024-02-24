/*----- CREATE TABLES -----*/
-- get, out in doing column

/*- Main tables -*/
CREATE TABLE parking_register (
  id_register INT AUTO_INCREMENT NOT NULL,
      id_user INT NOT NULL,
       id_car INT NOT NULL,
     id_place INT NOT NULL,
        doing BOOLEAN NOT NULL, 
   created_at TIMESTAMP,
  PRIMARY KEY (id_register)
);

CREATE TABLE users (
     id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   name_user VARCHAR(45),
  dni_number VARCHAR(100),
   last_name VARCHAR(45),
       email VARCHAR(120),
   gender_id INT,
      dni_id INT,
  created_at TIMESTAMP,
   remove_at TIMESTAMP
);

CREATE TABLE cars (
      id_car INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    brand_id INT,
       plate VARCHAR(45),
    color_id INT,
  created_at TIMESTAMP,
   remove_at TIMESTAMP
);

CREATE TABLE parking_places (
        id_place INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  location_place VARCHAR(45),
    status_place VARCHAR(45)
);

/*- Secondary tables -*/
CREATE TABLE dni_type (
  id_type_document INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
         name_type VARCHAR(45)
);

CREATE TABLE gender (
    id_gender INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_gender VARCHAR(45)
);

CREATE TABLE colors (
    id_color INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_color VARCHAR(45)
);
CREATE TABLE brands (
    id_brand INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  type_brand VARCHAR(45)
);