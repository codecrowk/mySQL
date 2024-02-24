CREATE VIEW usuarios_email_net AS
SELECT * FROM users
WHERE correo LIKE '%.net'; 

SELECT * FROM usuarios_email_net;
SELECT * FROM `fitrarHombresColombianos`;