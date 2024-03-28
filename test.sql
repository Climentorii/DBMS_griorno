/*1) SELECT FirstName, LastName
from customers 
WHERE City = 'Prague';*/

/*2.1) SELECT FirstName, LastName
from customers
WHERE FirstName like 'M%' */

/*2.2)SELECT FirstName, LastName
from customers
WHERE FirstName like '%ch%';*/

/*3)SELECT Name, Bytes/1024/1024
from tracks*/ 

/*4) SELECT FirstName, LastName
from employees
where HireDate > date(2001-12-31) and HireDate < date('2003-01-01') and City = 'Calgary'; */

/* 5) SELECT FirstName, LastName 
FROM employees 
WHERE (HireDate - BirthDate>=40) */

/*6)select *
from customers
where country = 'USA' Fax IS NULL*/

/*7) select *
from sales
where ShipCountry = 'Canada' and (SalesDate like '%-09-%' or SalesDate like '%-08-%') */

/*8)select Email
from customers
where Email like '%gmail.com'*/

/* 9) Select *
from employees
where HireDate <= '2006-03-22' */

/*10)select Title
from employees
ORDER BY Title ASC;*/

/* 11) select FirstName, LastName, (2024 - Age) as BirthDate
from customers 
order by FirstName, LastName ASC */

/* 12) select MIN(Milliseconds) / 1000 as Seconds
from tracks */

/* 13) select Name, Milliseconds, MIN(Milliseconds) / 1000 as Seconds
from tracks  */

/* 14) select Country, AVG(Age)
from customers
GROUP by Country */

/* 15) select LastName
from employees
where HireDate like '%-10-%' */

/* 16) select LastName, Min(HireDate)
from employees */



