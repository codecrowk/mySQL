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

CREATE PROCEDURE citycount (IN country CHAR(3))
       BEGIN
         SELECT * FROM students
         WHERE CountryCode = country;
       END