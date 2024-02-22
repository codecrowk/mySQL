UPDATE users
SET age_student = RAND()*100
WHERE age_student <= 0
OR age_student IS NULL;

CREATE PROCEDURE updateUser (IN name_column CHAR(20), 
                             IN id_user CHAR(20), 
                             IN user_value CHAR(150))
  BEGIN
    UPDATE users
    SET name_column = user_value 
    WHERE age_student = id_user
  END;

DROP PROCEDURE updateUser;

-- The way to call a database
CALL updateUser('brands');
SELECT * FROM users

    -- SET @dataURL = CONCAT('SELECT * FROM ', tableName);
    -- PREPARE getData FROM @dataURL;
    -- EXECUTE getData;