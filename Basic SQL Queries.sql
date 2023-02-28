--This query retrieves the ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, and Discontinued columns from the Products table in the Northwind database.

use NORTHWND
select [ProductID] asd,[ProductName] basd,[SupplierID] casd, [CategoryID] dasd,[QuantityPerUnit] easd,[UnitPrice] fasd,[UnitsInStock] gasd,[UnitsOnOrder] hasd,[ReorderLevel] iasd,[Discontinued] jasd
from Products 

--This query retrieves the FirstName, LastName, Address, and HomePhone columns from the Employees table in the Northwind database.

SELECT FirstName, LastName,[Address], HomePhone FROM Employees

--This query retrieves the FirstName, LastName, Address, and HomePhone columns from the Employees table in the Northwind database, using an alias for the table.

SELECT e.FirstName, e.LastName,e.Address, e.HomePhone FROM Employees e

--This query retrieves the CompanyName column from the Shippers and Customers tables in the Northwind database and gives them aliases of Musteri and Tedarikci, respectively.

SELECT c.CompanyName Musteri, s.CompanyName Tedarikci From Shippers s, Customers c

--This query retrieves the CompanyName and Description columns from the Categories table in the Northwind database.

SELECT CategoryName , [Description] From Categories

--This query retrieves the OrderID, OrderDate, and a concatenated string of ShipAddress, ShipCity, and ShipCountry columns from the Orders table in the Northwind database.

SELECT OrderID, OrderDate, ShipAddress+' '+ShipCity+' '+ShipCountry AcikAdres From Orders

--This query retrieves the ProductName, CategoryID, UnitPrice, and UnitsInStock columns from the Products table in the Northwind database.

SELECT p.ProductName,p.CategoryID,p.UnitPrice,p.UnitsInStock From Products p

--This query retrieves the CompanyName column and a concatenated string of Address, City, and PostalCode columns from the Suppliers table in the Northwind database.

SELECT s.CompanyName, s.Address + ' ' + s.City + ' ' + s.PostalCode AcikAdres From Suppliers s

--This query retrieves the CompanyName and Address columns from the Customers table in the Northwind database, concatenating them with a slash (/) and giving them aliases of "?irket Bilgisi" and "Yetkili Bilgisi," respectively.

SELECT c.CompanyName + '/' + c.Address [Þirket Bilgeisi],c.ContactName + '/' + c.Phone [Yetkili Bilgisi] From Customers c

--This query retrieves the FirstName, LastName, and Title columns from the Employees table in the Northwind database, where the TitleOfCourtesy column is "Mr."

Select e.FirstName,e.LastName,e.Title from Employees e
Where e.TitleOfCourtesy = 'Mr.'

--This query retrieves the EmployeeID, FirstName, and LastName columns from the Employees table in the Northwind database, where the EmployeeID is greater than 5.

Select e.EmployeeID,e.FirstName,e.LastName from Employees e
Where e.EmployeeID > 5

--This query retrieves the FirstName, LastName, and BirthDate columns from the Employees table in the Northwind database, where the year of BirthDate is 1960.

Select e.FirstName,e.LastName,e.BirthDate from Employees e
Where YEAR(e.BirthDate) = 1960

---- Selects the first name, last name, and birth date of employees whose birth date is between 1950 and 1961.

Select e.FirstName,e.LastName,e.BirthDate from Employees e
Where YEAR(e.BirthDate) between 1950 and 1961

-- Selects the full name, title of courtesy, job title, country, and birth date of employees whose title of courtesy includes 's' and country is UK.

Select e.FirstName + ' ' + e.LastName [Calisan Bilgisi],e.TitleOfCourtesy Unvani , e.Title Gorevi, e.Country Ulkesi,e.BirthDate DogumTarihi from Employees e
Where e.TitleOfCourtesy like '%s%' and e.Country = 'UK'

-- Selects the full name, title of courtesy, job title, country, and birth date of employees whose title of courtesy is 'Mrs.' or 'Ms.' and country is UK.

Select e.FirstName + ' ' + e.LastName [Calisan Bilgisi],e.TitleOfCourtesy Unvani , e.Title Gorevi, e.Country Ulkesi,e.BirthDate DogumTarihi from Employees e
Where (e.TitleOfCourtesy = 'Mrs.' or e.TitleOfCourtesy = 'Ms.')  and e.Country = 'UK'

-- Selects the product name, unit price, and units in stock of products whose units in stock are less than 10.

Select p.ProductName,p.UnitPrice,p.UnitsInStock from Products p
Where p.UnitsInStock < 10

-- Selects the order ID, customer ID, shipping address, city, and country of orders whose shipping country is France.

Select o.OrderID,o.CustomerID,o.ShipAddress,o.ShipCity,o.ShipCountry from Orders o
Where o.ShipCountry = 'France'

-- Selects the title, first name, last name, and region of employees whose region is NULL

Select e.title, e.FirstName,e.LastName, e.Region from Employees e
Where e.Region is NULL

-- Selects all columns of employees whose employee ID is between 2 and 7, ordered by first name in ascending order.

Select * from Employees e
Where e.EmployeeID between 2 and 7
order by e.FirstName ASC

-- Selects the first name, last name, and birth date of employees whose birth date is not NULL, ordered by birth date in ascending order.

Select e.FirstName,e.LastName,e.BirthDate from Employees e
Where e.BirthDate is not null
order by e.BirthDate ASC

-- Selects the first name, last name, and birth date of employees, ordered by last name in descending order.

Select e.FirstName,e.LastName,e.BirthDate from Employees e
order by e.LastName DESC

-- Selects all columns of employees, ordered by title of courtesy in ascending order, then by hire date in descending order.

select e.EmployeeID asd,e.FirstName basd,e.LastName casd, e.Title dasd,e.TitleOfCourtesy easd,e.BirthDate fasd,e.HireDate gasd,e.Address asdasd,e.City iasd,e.Region jasd, e.PostalCode kasd, e.Country lasd, e.HomePhone masd, e.Extension nasd, e.Photo oasd, e.Notes pasd, e.ReportsTo qasd, e.PhotoPath rasd
from Employees e 
order by e.TitleOfCourtesy asc,e.HireDate desc

--This query selects data from the Employees table, and calculates the age of each employee based on their birth date. The results are ordered first by TitleOfCourtesy in ascending order, and then by age in descending order.

Select e.TitleOfCourtesy UNVAN, e.FirstName AD,e.LastName SOYAD, Year(GETDATE()) - Year(e.BirthDate) YAS from Employees e
ORDER BY UNVAN ASC, YAS DESC

--This query selects data from the Products table, and returns only those rows where the UnitsInStock column is between 50 and 100. The results are ordered by UnitsInStock in ascending order.

Select p.ProductName,p.UnitPrice,p.UnitsInStock from Products p
where p.UnitsInStock between 50 and 100
order by p.UnitsInStock asc

--This query selects the ProductID, Total Amount, and Discount from the Order Details table and sorts the result in ascending order by Total Amount. The Total Amount is calculated as the product of UnitPrice and Quantity for each row in the table.

Select o.ProductID,(o.UnitPrice*o.Quantity) [Toplam Tutar], Discount from [Order Details] o
order by [Toplam Tutar]

--This query selects the UnitPrice of a specific product with a ProductID of 1 from the Products table.

Select p.UnitPrice from Products p
where p.ProductID = 1

--This query selects the UnitPrice of a specific product with a ProductID of 1 from the Order Details table.

Select p.UnitPrice from [Order Details] p
where p.ProductID = 1

--This query selects the first three rows from the Employees table and sorts them in ascending order by the employees' first names.

Select Top 3 * from Employees e
order by e.FirstName

--This query selects the first 20% of rows from the Employees table and sorts them in ascending order by the employees' first names.

Select Top 20 PERCENT * from Employees e
order by e.FirstName