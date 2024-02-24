-- How you can say that show me the brand instead of it's ID?
SELECT 
  register.id_register AS 'Register id',
  CONCAT(users.name_user, ' ', users.last_name) AS Name,
  brands.type_brand AS Brand,
  place.status_place AS Place
FROM parking_register AS register
INNER JOIN users
  ON register.id_user = users.id_user
INNER JOIN cars 
  ON register.id_car = cars.id_car 
INNER JOIN brands 
  ON cars.brand_id = brands.id_brand
INNER JOIN parking_places AS place
  ON register.id_place = place.id_place;

SELECT * FROM brands;