CREATE PROCEDURE getAllTableData (IN tableName CHAR(20))
  BEGIN
    SET @dataURL = CONCAT('SELECT * FROM ', tableName);
    PREPARE getData FROM @dataURL;
    EXECUTE getData;
  END;

-- Remove procedure
DROP PROCEDURE getAllTableData;

-- The way to call a database
CALL getAllTableData('cars');
