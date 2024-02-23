--Select with variable in Query
declare @LastNamePattern as varchar(40);
set @LastNamePattern1 = 'j%';

select *
from students
Where student_name like @LastNamePattern1;

SELECT * FROM students;

USE bymkasxrdwakgzroimmy;
SHOW DATABASES;
SHOW TABLES;

create procedure PersonSearchLastName(@LastNamePattern as varchar(20))
AS
begin
    select *
    from students
    Where student_name like @LastNamePattern
end

exec dbo.PersonSearchLastName 'Ral%'

CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT * FROM Customers WHERE City = @City
GO;

DELIMITER //
-- WORKING PRETTY WELL
CREATE PROCEDURE getStudentByID2 (IN userID CHAR(20))
       BEGIN
         SELECT * FROM students
         WHERE id_student = userID;
        END//
DELIMITER ;

CALL getStudentByID2(3);

DROP TABLE document_type;

CALL getAllTableData('cars');

-- 
INSERT INTO cars 
    ( plate, brand, color, created_at, remove_at ) 
  VALUES
    ('342-fqr', 'ferrari', 'white', '2023-10-21', '2025-09-19');

SHOW TABLES;

SELECT * FROM colors;