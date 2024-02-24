CREATE VIEW filtrarMujeresColombianas AS
SELECT * FROM users
WHERE pais = 'colombia'
AND genero = 'M';

CREATE VIEW filtrarHombresColombianos AS
SELECT * FROM users
WHERE pais = 'colombia'
AND genero = 'M';

CREATE VIEW usuariosColombianos AS
SELECT * FROM users
WHERE pais = 'colombia';

SHOW TABLES;