/*----- CARS -----*/
ALTER TABLE cars
  ADD FOREIGN KEY (color_id) REFERENCES colors(id_color);

ALTER TABLE cars
  ADD FOREIGN KEY (brand_id) REFERENCES brands(id_brand);

/*----- USERS -----*/
ALTER TABLE users
  ADD FOREIGN KEY (dni_id) REFERENCES dny_type(id_type_document);

ALTER TABLE users
  ADD FOREIGN KEY (gender_id) REFERENCES gender(id_gender);
SHOW TABLES;
SELECT * FROM gender;