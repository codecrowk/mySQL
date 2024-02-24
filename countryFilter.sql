CREATE PROCEDURE buscar_pais (IN userPais VARCHAR(40))
BEGIN
  SELECT * FROM users
  WHERE pais = userPais;
END;
CALL buscar_pais('canada');

-- WITHOUT PEOPLE OF COLOMBIA AN ECUADOR
CREATE VIEW sin_colombianos_ni_ecuatorianos AS
SELECT * FROM users
WHERE pais NOT IN ('colombia', 'ecuador');

SELECT * FROM sin_colombianos_ni_ecuatorianos;
-- countar poblacion pais
CREATE VIEW contar_poblacion_pais AS
SELECT COUNT(pais), pais FROM users
GROUP BY pais

-- Listar hombres de 20 annos amantes del rock
-- CREATE VIEW hombres_20annos_amantes_rock AS
SELECT count(edad), edad FROM users
WHERE edad < 10
AND genero = 'H'
AND musica = 'rock'
GROUP BY edad
ORDER BY edad;

-- Filtrar por genero, musica favorita y edad
CREATE PROCEDURE filtrar_genro_musica_edad (
  IN userGenero VARCHAR(45),
  IN userMusica VARCHAR(45), 
  IN userEdad INT)
BEGIN
  SELECT * FROM users
  WHERE edad = userEdad
  AND genero = userGenero
  AND musica = userMusica;
END;

-- listar nombres, edad, pais y genero de todos los usuarios que tengan entre 10 y 20 annos, vian en panama y que seand de genero Masculino
CREATE VIEW users_edad_pais_genero AS
SELECT 
  CONCAT(nombres, apellidos) AS nombres,
  edad,
  pais,
  genero
FROM users
WHERE edad 
BETWEEN 10 AND 20
AND pais = 'panama'
AND genero = 'M';

--  Crear un procedimiento almacenado que me permita eliminar usuario por email
CREATE PROCEDURE SP_eliminar_usuario_correo (IN email_eliminar VARCHAR(120))
BEGIN
  DELETE FROM users
  WHERE correo = email_eliminar;
END

SELECT * FROM users
WHERE correo = 'example@eliminar.com';

DROP PROCEDURE `SP_eliminar_usuario_correo`;
CALL `SP_eliminar_usuario_correo`('example@eliminar.com')

-- crear procedimiento para actualixar la lista de usuarios y cambiando el genero musical a carranga de todos los usuarios entre 22 y 32 annos de edad
CREATE PROCEDURE actualizar_usuarios ()
BEGIN
  UPDATE users
  SET musica = 'carranga'
  WHERE edad
  BETWEEN 22 AND 32;
END

CALL actualizar_usuarios;
SELECT * FROM users
WHERE edad 
BETWEEN 22 AND 32