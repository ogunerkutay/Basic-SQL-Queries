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

-- Selects ASCII code of the character 'C'

Select ASCII('C')

-- Selects CompanyName column and its ASCII equivalent for all rows in the Customers table

select CompanyName, AsCII(CompanyName) from Customers

-- Selects the length of the string '        Bilge Adam           '

select LEN ('        Bilge Adam           ')

-- Concatenates 'asd' and 'casd' with a space between them and returns the result

select Concat ('asd','casd') qwe

-- Concatenates 'asd', 'bilgeadam', and 'com' with a period between them and returns the result

Select CONCAT_WS('.','asd','bilgeadam','com')

-- Concatenates TitleOfCourtesy, FirstName, and LastName columns with a space between them for all rows in the Employees table where TitleOfCourtesy is 'Dr.' or 'Mr.'

Select CONCAT_WS(' ',FullName.TitleOfCourtesy,FullName.FirstName,FullName.LastName) from Employees FullName
where FullName.TitleOfCourtesy in ('Dr.','Mr.')

-- Concatenates information about an order including order ID, employee ID, employee name, customer ID, and company name

select Concat (o.OrderID,' nolu sipariþ ',e.EmployeeID, ' kodlu ',e.FirstName,' ',e.LastName,' isimli çalýþan tarafýndan ',c.CustomerID, ' numaralý ', c.CompanyName,' isimli müþteriye yapýlmýþtýr')
from orders o
inner join employees e on e.EmployeeID = o.EmployeeID
inner join Customers c on c.CustomerID = o.CustomerID

-- Extracts the first 3 characters from the string 'Bilge adam'

select LEFT('Bilge adam',3) ExtractString


-- Extracts the last 5 characters from the string 'Bilge adam'

select RIGHT('Bilge adam',5) ExtractString

-- Converts the string 'Bilge Adam' to lowercase

select Lower('Bilge Adam')

-- Converts the string 'Bilge Adam' to uppercase

select Upper('Bilge Adam')

-- Returns the length of the string 'Bilge Adam' with leading spaces removed

select len(ltrim('       Bilge Adam        '))

-- Returns the length of the string 'Bilge Adam' with trailing spaces removed

select len(rtrim('       Bilge Adam        '))

-- Returns the length of the string 'Bilge Adam' with leading and trailing spaces removed

select len(trim('       Bilge Adam        '))

-- Reverses the string 'Bilge Adam' (including leading and trailing spaces)

select reverse('       Bilge Adam        ')

-- Extracts a substring of length 3 starting from the first character of the string 'Bilge Adam'

select substring('Bilge Adam',1,3)

-- Returns the current date and time

Select GetDate()

-- Adds one year to the date '2022/05/18' and returns the result

Select DATEADD(year,1,'2022/05/18')  Tarih

-- Adds one month to the date '2022/05/18' and returns the result

Select DATEADD(month,1,'2022/05/18')  Tarih

-- Adds one day to the date '2022/05/18' and returns the result

Select DATEADD(day,1,'2022/05/18')  Tarih

-- Adds one hour to the date '2022/05/18' and returns the result

Select DATEADD(hour,1,'2022/05/18')  Tarih

-- Adds one minute to the date '2022/05/18' and returns the result

Select DATEADD(minute,1,'2022/05/18')  Tarih

-- This query adds 1 minute to the specified date.

Select DATEADD(second,1,'2022/05/18')  Tarih

-- This query calculates the difference between two dates in years.

select datediff(year,'2020/05/18','2022/05/18') Fark

-- This query gets the day of the month for the current date.

select day(getdate())

-- This query gets the month for the current date.

select month(getdate())

-- This query gets the year for the current date.

select year(getdate())

-- This query gets the name of the month for the current date.

select datename(month,getdate()) hangiAy

-- This query gets the name of the day for the current date.

select datename(day,getdate()) hangigun

-- This query gets the name of the weekday for the current date.

select datename(weekday,getdate()) hangigun

-- This query returns the current UTC date and time.

select SYSUTCDATETIME()

-- This query returns the current local date and time.

select getdate()

-- This query converts the current UTC date and time to Turkey Standard Time.

select SYSUTCDATETIME() AT TIME ZONE 'UTC' AT TIME ZONE 'Turkey Standard Time'

-- This query gets the average unit price for each order.

select od.OrderID, avg (p.UnitPrice)
from [Order Details] od
inner join Products p On od.ProductID = p.ProductID
group by od.OrderID

-- This query counts the number of products with more than 50 units in stock.

select Count (*)
from Products p
where p.UnitsInStock  > 50

-- This query gets the maximum unit price for all products.

select max(p.UnitPrice)
from products p

-- This query gets the minimum unit price for all products.

select min(p.UnitPrice)
from products p

-- This query gets the product with the highest unit price.

select top 1 p.UnitPrice, p.ProductName
from products p
order by p.UnitPrice desc

-- This query gets the products with the same maximum unit price.

select p.ProductName,p.UnitPrice
from products p
where p.UnitPrice = (select max(p1.UnitPrice) from products p1)
order by p.UnitPrice desc

-- This query selects all columns from the Products table.

select * from products

-- This query gets the products with the same unit price as a specific product.

select p.ProductName,p.UnitPrice
from products p
where p.ProductName in (select p1.ProductName from products p1 where p1.UnitPrice = 43.90)
order by p.UnitPrice desc

-- This query gets the total quantity sold for each product.

select p.ProductName, sum(od.Quantity)
from Products p
inner join [Order Details] od on od.ProductID = p.ProductID
group by p.ProductName
order by sum(od.Quantity) desc

-- This query gets the top 5 products with the highest quantity sold.

select top 5 od.ProductID, p.ProductName, Sum(od.Quantity) Adet
from [Order Details] od
inner join Products p on p.ProductID = od.ProductID
group by od.ProductID,ProductName
order by 3 desc

-- This query gets the total revenue for each customer whose company name starts with 'E' and has a revenue greater than $50,000.

select c.CompanyName, sum(od.Quantity*od.UnitPrice) ToplamCiro
from customers c
inner join orders o on o.CustomerID = c.CustomerID
join [Order Details] od on od.OrderID = o.OrderID
where c.CompanyName like 'E%'
group by c.CompanyName
Having sum(od.Quantity*od.UnitPrice) > 50000

-- This query returns the CompanyName column from the Customers table for all customers who do not have any orders in the Orders table.
-- It uses a full outer join between the Orders and Customers table on the CustomerID column, and then filters out the rows where OrderID is null (i.e. customers who do not have any orders).
-- The full outer join is used because we want to include customers who do not have any orders in the result set.

select c.CompanyName
from orders o
full outer join customers c on c.CustomerID = o.CustomerID
where o.OrderID is null

-- This query returns the CompanyName column from the Customers table for all customers who do not have any orders in the Orders table.
-- It uses a subquery to get the distinct CustomerID values from the Orders table and then uses a NOT IN clause to exclude the customers with those CustomerID values.
-- The subquery is used to get the distinct CustomerID values from the Orders table. The NOT IN clause is used to exclude the customers with those CustomerID values from the result set.

select c.companyName
from Customers c
where c.CustomerID not in (select distinct CustomerID from orders)

--This query retrieves the maximum and minimum discount values for each product category. The results are returned in a table with the category ID, category name, maximum discount, and minimum discount columns.

Select Cat.CategoryID,Cat.CategoryName,MAXDiscount.MAXDiscount,MINDiscount.MINDiscount
From Categories Cat inner join
(
Select CAT.CategoryID, max(od.Discount) MAXDiscount
from Categories CAT inner join Products P On Cat.CategoryID = p.CategoryID
inner join [Order Details] od on p.ProductID = od.ProductID
group by CAT.CategoryID
) MAXDiscount on Cat.CategoryID = MAXDiscount.CategoryID
inner join 
(
Select CAT.CategoryID, min(od.Discount) MINDiscount
from Categories CAT inner join Products P On Cat.CategoryID = p.CategoryID
inner join [Order Details] od on p.ProductID = od.ProductID
group by CAT.CategoryID
) MINDiscount on Cat.CategoryID = MINDiscount.CategoryID

--This query retrieves the first name, address, city, and postal code of all employees and customers in a single table. The 'Type' column specifies whether each row is an employee or a customer.

select 'Employee' 'Type',E.FirstName,e.Address,e.City,e.PostalCode
from Employees E
union
select 'Customer' 'Type',c.CompanyName,c.Address,c.City,c.PostalCode
from Customers C

--This query retrieves the order ID, order date, customer ID, and employee ID for the latest order placed by each customer.

SELECT * FROM Orders O INNER JOIN
(
SELECT O.CustomerID,MAX(O.OrderDate) MAXORDERDATE
FROM ORDERS O
GROUP BY O.CustomerID) MAXORDERDATE ON
O.CustomerID = MAXORDERDATE.CustomerID AND O.OrderDate = MAXORDERDATE.MAXORDERDATE

--This query retrieves all customers who placed an order between January 1, 1996, and July 5, 1996.

SELECT *
FROM CUSTOMERS
WHERE CUSTOMERID IN (SELECT distinct CUSTOMERID FROM ORDERS WHERE ORDERDATE between '1996-01-01' and '1996-07-05')

-- This query retrieves the total quantity of a specific product (with ProductID=23) ordered by each customer,
-- then filters out the customers whose total quantity is less than or equal to 20,
-- and finally sorts the remaining customers in descending order based on their total quantity.

select c.CompanyName, sum(od.Quantity) Adet
from customers c
inner join Orders o on o.CustomerID = c.CustomerID
inner join [Order Details] od on od.OrderID = o.OrderID
where od.ProductID = 23
group by c.CompanyName
having sum(od.Quantity) > 20
order by Adet desc

--This query retrieves the total amount of money for each order by multiplying the Quantity, UnitPrice, and Discount of each product in an order and summing them up. The results are grouped by OrderID.

Select od.OrderID,sum((od.Quantity*od.UnitPrice) * (1-od.Discount))
From [Order Details] od
group by Od.OrderID

--This query joins Customers, Orders, and a subquery of [Order Details] table. The subquery retrieves the total amount of money for each order, and the main query retrieves the CustomerID, CompanyName, and OrderID of each order along with the total amount of money for that order. The results are obtained by joining the Customers and Orders tables using CustomerID as a join key and then joining the subquery results with the Orders table using OrderID as a join key.

SeleCt C.CustomerID,C.CompanyName,o.OrderID,OT.OrderTotal
From Customers C inner join Orders O On C.CustomerID = O.CustomerID
inner join
(
Select od.OrderID,sum((od.Quantity*od.UnitPrice) * (1-od.Discount)) OrderTotal
From [Order Details] od
group by Od.OrderID
) OT on o.OrderID = OT.OrderID

--This code creates a view named View_CustomerOrderDetails that retrieves the same results as the previous query. The view can be used to simplify future queries that need to retrieve customer order details. The view is then queried and the results are ordered by CustomerID.

create view View_CustomerOrderDetails as 
Select C.CustomerID,C.CompanyName,o.OrderID,OT.OrderTotal
From Customers C inner join Orders O On C.CustomerID = O.CustomerID
inner join
(
Select od.OrderID,sum((od.Quantity*od.UnitPrice) * (1-od.Discount)) OrderTotal
From [Order Details] od
group by Od.OrderID
) OT on o.OrderID = OT.OrderID

select * from [dbo].[View_CustomerOrderDetails]
order by CustomerID

--This code alters the previously created View_CustomerOrderDetails view by adding ContactName and ContactTitle columns from the Customers table.

ALTER view View_CustomerOrderDetails as 
Select C.CustomerID,C.CompanyName,C.ContactName,C.ContactTitle,o.OrderID,OT.OrderTotal
From Customers C inner join Orders O On C.CustomerID = O.CustomerID
inner join
(
Select od.OrderID,sum((od.Quantity*od.UnitPrice) * (1-od.Discount)) OrderTotal
From [Order Details] od
group by Od.OrderID
) OT on o.OrderID = OT.OrderID

--This query retrieves information about views in the database schema, including their names, owners, and creation dates.

select * from INFORMATION_SCHEMA.VIEWS

-- creates a view named View_OrderProductCount that counts the number of products for each order:

create view View_OrderProductCount
As
Select o.OrderID, COUNT(OD.ProductID) ProductCount
From Orders O inner join [Order Details] OD on O.OrderID = OD.OrderID
group by o.OrderID

Select * From [dbo].[View_OrderProductCount]

-- alters the previously created view, adding WITH ENCRYPTION to encrypt the view definition

Alter View View_OrderProductCount
--with Encryption
as
Select o.OrderID, COUNT(OD.ProductID) ProductCount
From Orders O inner join [Order Details] OD on O.OrderID = OD.OrderID
group by o.OrderID

-- creates a view named View_ProductTotalCount that calculates the total count of products for each order
--The WITH SCHEMABINDING option binds the view to the schema of the underlying tables, ensuring that the schema cannot be modified without dropping the view

ALTER View View_ProductTotalCount
with SchemaBinding
as
Select o.OrderID, COUNT_BIG(*) [Count],sum(od.Quantity) [ProductTotalCount]
From dbo.Orders O inner join dbo.[Order Details] OD On O.OrderID = Od.OrderID
group by o.OrderID

--The fourth statement creates a unique clustered index on the OrderId column of the View_ProductTotalCount view:
Create unique clustered index View_ProductTotalCount_OrderID On [dbo].[View_ProductTotalCount](OrderID)

--selects all rows from the View_ProductTotalCount view where the OrderId column equals 10248:

select * from [dbo].[View_ProductTotalCount]
where OrderId = '10248'

--drops the View_ProductTotalCount view

drop view [dbo].[View_ProductTotalCount]

--creates a view named View_RegionExtend that concatenates the RegionID and RegionDescription columns and adds them to a new column named ExtendedRegionInfo:

Create View View_RegionExtend
as
select RegionID,RegionDescription,
cast(RegionID as varchar(10))
 + ' - ' + RegionDescription ExtendedRegionInfo
 from dbo.Region

 --alters the RegionDescription column of the Region table to have a data type of varchar(max)

 Alter table Region
 alter Column RegionDescription varchar(max)

 --drops the View_RegionExtend view

 drop view View_RegionExtend


