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

/*----- PARKING REGISTER -----*/
ALTER TABLE parking_register 
  ADD FOREIGN KEY (id_user) REFERENCES users(id_user);

ALTER TABLE parking_register
  ADD FOREIGN KEY (id_car) REFERENCES cars(id_car);

ALTER TABLE parking_register
  ADD FOREIGN KEY (id_place) REFERENCES parking_places(id_place);