SELECT 
  users.id_user AS ID, 
  users.dni_number AS DNI,
  dny_type.name_type AS Type, 
  CONCAT(users.name_user, ' ', users.last_name) AS Name,
  gender.type_gender AS Gender
FROM users
INNER JOIN dny_type 
  ON users.dni_id = dny_type.id_type_document
INNER JOIN gender 
  ON users.gender_id = gender.id_gender
WHERE gender.type_gender = 'male';

SELECT * FROM cars;