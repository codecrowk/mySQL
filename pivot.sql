SELECT genero, 
  COUNT(genero) AS cantidad,
  SUM(CASE WHEN pais= 'costa rica' THEN 1 ELSE 0 END) AS Colombia,
  SUM(CASE WHEN musica= 'punk' THEN 1 ELSE 0 END) AS ROCK,
  SUM(CASE WHEN edad= 67 THEN 1 ELSE 0 END) AS "3"
FROM users
GROUP BY genero

SELECT COUNT(genero), genero
FROM users
WHERE edad = 67
GROUP BY genero

SELECT * FROM users
-- PIVOT (
--   COUNT (genero)
--   FOR genero IN (
--     M,
--     F
--   )
-- ) AS PivotTable;