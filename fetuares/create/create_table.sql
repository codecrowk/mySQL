/*----- CREATE TABLES -----*/
-- get, out in doing column

/*YOU FORGOT FOREING KEY*/
CREATE TABLE parking_register (
    id_register INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        id_user INT NOT NULL,
         id_car INT NOT NULL,
          doing BOOLEAN NOT NULL, 
  date_register DATE NOT NULL
);

CREATE TABLE users (
        id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      name_user VARCHAR(45)
);

CREATE TABLE cars (
  id_car INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
   plate VARCHAR(45)
);


CREATE TABLE parking_places (
        id_place INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  location_place VARCHAR(45),
    status_place VARCHAR(45)
);

