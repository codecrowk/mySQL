CREATE PROCEDURE removeTable (IN tableName CHAR(20))
  BEGIN
    SET @tableURL = CONCAT('DROP TABLE ', tableName);
    PREPARE tableRemove FROM @tableURL;
    EXECUTE tableRemove;
  END;

-- Remove procedure
DROP PROCEDURE removeTable;

-- The way to call a database
CALL removeTable('cars');