/* 1) select sum(unitprice)
from sales join sales_items on sales.SalesId = sales_items.SalesId
where ShipCountry = 'USA' and (SalesDate like '2012-01-%') or (SalesDate like '2012-02-%') or (SalesDate like '2012-03-%') */

/*select sum(UnitPrice)
from sales_items
where SalesId in 
(select SalesId 
from sales 
where ShipCountry = 'USA' and (SalesDate like '2012-01-%') or (SalesDate like '2012-02-%') or (SalesDate like '2012-03-%'))*/

/* 2) select customers.FirstName
from customers left join employees
on customers.FirstName = employees.FirstName
group by customers.FirstName*/

/*select customers.FirstName
from customers
where customers.FirstName not in (select FirstName from employees)
group by customers.FirstName*/

/*select Firstname 
from customers
except 
select FirstName
from employees*/

/* 4) select Title, count(trackid) as Amount
from tracks join albums
on tracks.AlbumId = albums.AlbumId
group by albums.AlbumId*/

/*select (
select Title from albums
where tracks.AlbumId = albums.AlbumId
), count(trackid)
from tracks
group by AlbumId*/

/* 5) select LastName, FirstName
from customers join sales
on customers.CustomerId = sales.CustomerId 
where customers.Country = 'Germany' and sales.ShipState = 'Berlin'
group by LastName, FirstName */

/* 6) select LastName
from customers join sales join sales_items on customers.CustomerId = sales.CustomerId and sales.SalesId = sales_items.SalesId
group by LastName
having sum(sales_items.Quantity) > 30*/

/* select (
select (
select Lastname
from customers
where sales.CustomerId = customers.CustomerId
)
where sales.SalesId = sales_items.SalesId
) as LastName_
from sales_items
group by LastName_ 
having sum(sales_items.Quantity) > 30*/

/* 7) select genres.Name, AVG(UnitPrice)
from tracks join genres
on tracks.GenreId = genres.GenreId
group by genres.Name */


select genres.Name
from tracks join genres
on tracks.GenreId = genres.GenreId
group by genres.Name
having avg(tracks.unitprice) > 1
