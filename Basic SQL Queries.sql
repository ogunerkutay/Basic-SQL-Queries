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

-- Query to count employees per country

select e.Country Ülke, count(*) [Çalýþan Sayýsý]
from Employees e
group by e.Country
order by [Çalýþan Sayýsý]

-- Query to count distinct orders per employee

select e.EmployeeID, count(distinct OD.OrderID) [Sipariþ Sayýsý]
from Employees e inner join Orders O ON e.EmployeeID = o.EmployeeID
inner join [Order Details] OD ON o.OrderID = OD.OrderID
group by e.EmployeeID
order by [Sipariþ Sayýsý] desc

-- Query to count orders per employee

select o.EmployeeID,count(o.OrderID) [Sipariþ Sayýsý]
from Orders o
group by o.EmployeeID
order by [Sipariþ Sayýsý] desc

-- Query to count products per category where product name starts with A-K and units in stock is between 5 and 50

select p.CategoryID, count(*) [Ürün Sayýsý]
from Products p
where p.ProductName like '[A-K]%' and p.UnitsInStock between 5 and 50
group by p.CategoryID
order by [Ürün Sayýsý]

-- Query to count products per category where product name starts with A-K, units in stock is between 5 and 50, and number of products is greater than 3

select p.CategoryID, count(*) [Ürün Sayýsý]
from Products p
where p.ProductName like '[A-K]%' and p.UnitsInStock between 5 and 50
group by p.CategoryID
having count(*) > 3
order by [Ürün Sayýsý]

-- Query to sum the quantity of products in each order and sort the result in descending order

select od.OrderID, sum(od.Quantity) ToplamUrunAdedi from [Order Details] od
Group by od.OrderID
Order by ToplamUrunAdedi desc

-- Query to sum the quantity of products in each order and show the orders where the total quantity is greater than 200

select od.OrderID, sum(od.Quantity) ToplamUrunAdedi from [Order Details] od
Group by od.OrderID
Having  sum(od.Quantity)> 200
Order by ToplamUrunAdedi desc

-- Query to join Products and Categories tables and show product names with their corresponding category names

select p.ProductName, c.CategoryName
from Products p
inner join Categories c On p.CategoryID = c.CategoryID

-- Query to join Orders, Employees, and Customers tables and show the employee name, order ID, order date, customer ID, and company name

select e.TitleOfCourtesy + ' ' + e.FirstName + ' ' + e.LastName [Çalýþan], o.OrderID, o.OrderDate,c.CustomerID, c.CompanyName 
from Orders o
inner join Employees e ON o.EmployeeID = e.EmployeeID
inner join Customers c on o.CustomerID = c.CustomerID

-- Query to join Products, Suppliers, and Categories tables and show the company name of the supplier, product name, unit price, and category name. The results are ordered by supplier company name.

select s.CompanyName, p.ProductName,p.UnitPrice, c.CategoryName
from Products p
join Suppliers s on s.SupplierID = p.SupplierID
join Categories c on c.CategoryID = p.CategoryID
order by s.CompanyName

-- This query joins the "Categories" and "Products" tables to calculate the total units in stock for each category, and displays the result with the category name. The result is grouped by category name.

select c.CategoryName, sum(p.UnitsInStock) [Toplam stok sayýsý] 
from Categories c
inner join Products p on c.CategoryID = p.CategoryID
group by c.CategoryName

-- This query joins the "Orders", "Customers", and "Shippers" tables to list the name of each customer and their corresponding shipping company. The result is sorted by customer name.

select distinct c.CompanyName Musteri, s.CompanyName KargoSirketi
from Orders o
inner join Customers c on o.CustomerID = c.CustomerID
inner join Shippers s on o.ShipVia = s.ShipperID
order by Musteri

-- This query counts the number of customers in each country and displays the result along with the country name. The result is sorted by the count of customers in descending order, and limited to the top 10.

select top 10 c.Country, Count(*) MusteriSayisi
from Customers c
group by c.Country
order by MusteriSayisi desc

-- This query calculates the total revenue generated by each product by joining the "Order Details" and "Products" tables. The result is grouped by product name and sorted by total revenue in descending order.

select p.ProductName, sum(od.UnitPrice*od.Quantity) ToplamHasilat
from [Order Details] od
inner join Products p on p.ProductID = od.ProductID
group by p.ProductName
order by ToplamHasilat desc

-- This query joins the "Orders" and "Customers" tables to list the name of each customer and their corresponding order date, for orders placed in the year 1996.

select distinct c.CompanyName,o.OrderDate
from Customers c
inner join Orders o on o.CustomerID = c.CustomerID
where YEAR(o.OrderDate) = 1996

-- This query joins the "Orders", "Order Details", "Products", "Categories", and "Customers" tables to calculate the total revenue generated by each customer for each product category. The result is grouped by customer name, category name, and sorted by total revenue in descending order.

select c.CompanyName, cat.CategoryName,sum(od.UnitPrice*od.Quantity) ToplamHasilat
from Orders o
inner join [Order Details] od on od.OrderID = o.OrderID
inner join Products p on p.ProductID = od.ProductID
inner join Categories cat on cat.CategoryID = p.CategoryID
inner join Customers c on c.CustomerID = o.CustomerID
group by  c.CompanyName, cat.CategoryName
