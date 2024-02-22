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

INSERT INTO cars (plate, brand, color, created_at, remove_at)
VALUES
    ('ABC-123', 'Toyota', 'Red', '2022-01-01', '2023-01-01'),
    ('DEF-456', 'Honda', 'Blue', '2022-01-02', '2023-01-02'),
    ('GHI-789', 'Ford', 'Green', '2022-01-03', '2023-01-03'),
    ('JKL-012', 'Chevrolet', 'Black', '2022-01-04', '2023-01-04'),
    ('MNO-345', 'Tesla', 'White', '2022-01-05', '2023-01-05'),
    ('PQR-678', 'BMW', 'Silver', '2022-01-06', '2023-01-06'),
    ('STU-901', 'Mercedes-Benz', 'Gray', '2022-01-07', '2023-01-07'),
    ('VWX-234', 'Audi', 'Orange', '2022-01-08', '2023-01-08'),
    ('YZA-567', 'Volkswagen', 'Yellow', '2022-01-09', '2023-01-09'),
    ('BCD-890', 'Subaru', 'Purple', '2022-01-10', '2023-01-10');
