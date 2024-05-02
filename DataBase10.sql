--1)

/* select sum(unitprice)
from sales_items join sales
on sales.SalesId = sales_items.SalesId
where sales.ShipCountry = 'USA' and sales.SalesDate like '2012-01-%' or 
								sales.SalesDate like '2012-02-%' or
								sales.SalesDate like '2012-03-%' */
								
/* select sum(unitprice)
from sales_items 
where SalesId in (
	select SalesId 
	from sales
	where ShipCountry = 'USA' and SalesDate like '2012-01-%' or 
									  SalesDate like '2012-02-%' or
									  SalesDate like '2012-03-%' 
) */


--2)

/* select customers.Firstname
from customers join employees
on customers.FirstName != employees.FirstName
group by customers.FirstName */

/* select FirstName
from customers
where FirstName not in (
select FirstName from employees
) group by customers.FirstName */

/* select FirstName
from customers
EXCEPT
select FirstName
from employees */

/* 3) Вторая команда не создает NULL при использовании JOIN, а добавляет к созданным строкам присоединившиеся строки, поэтому строк будет больше при использовании первой команды */

-- 4)

/* select albums.Title, count(TrackId)
from tracks join albums
on tracks.AlbumId = albums.AlbumId
group by albums.Title */

/* select (
select count(TrackId)
from tracks
where albums.AlbumId = tracks.AlbumId
), Title
from albums
group by Title */

-- 5)

/* select LastName, FirstName
from customers join sales
on customers.CustomerId = sales.CustomerId
where customers.Country = 'Germany' and sales.ShipCity = 'Berlin' and sales.SalesDate like '2009-%-%'
group by LastName, FirstName */

-- 6)

/* select LastName
from customers join sales join sales_items
on customers.CustomerId = sales.CustomerId and sales.SalesId = sales_items.SalesId
group by LastName
having sum(sales_items.Quantity) > 30 */


/* select (
	select (
		select LastName 
		from customers
		where sales.CustomerId = customers.CustomerId
	) from sales
	where sales.SalesId = sales_items.SalesId
) as LastName_
from sales_items
group by LastName_
having sum(sales_items.Quantity) > 30 */

-- 7)

/* select genres.Name, avg(unitprice)
from tracks join genres
on tracks.GenreId = genres.GenreId
group by genres.Name */

-- 8)

/* select genres.Name
from genres join tracks
on genres.GenreId = tracks.GenreId
group by genres.GenreId
having avg(unitprice) > 1 */
