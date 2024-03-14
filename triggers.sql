-- SELECT * FROM users;

-- CREATE TABLE country_changes (
--   employee_id INT,
--   changed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
--   old_country VARCHAR(50),
--   new_country VARCHAR(50)
-- );

CREATE TRIGGER before_update_country
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
  IF NEW.pais <> OLD.pais THEN 
    INSERT INTO country_changes(employee_id, old_country, new_country)
    VALUES(NEW.id, OLD.pais, NEW.pais);
  END IF;
END;