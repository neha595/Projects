--a. Get all the details from the person table including email ID, phone
--number and phone number type
select * from AdventureWorks2012.sales.SalesOrderDetail
select pe.EmailAddress,pp.phonenumber,pp.PhoneNumberTypeID from AdventureWorks2012.Person.emailaddress pe join AdventureWorks2012.Person.PersonPhone pp on pp.BusinessEntityID=pe.BusinessEntityID

--b. Get the details of the sales header order made in May 2011

select * from AdventureWorks2012.sales.SalesOrderHeader where year(orderdate)='2011'and month(orderdate)='05'

--c. Get the details of the sales details order made in the month of May
--2011

select * from AdventureWorks2012.sales.SalesOrderDetail where year(ModifiedDate)='2011'and month(ModifiedDate)='05'

--d. Get the total sales made in May 2011

select sum(totaldue) from AdventureWorks2012.sales.SalesOrderHeader where year(orderdate)='2011'and month(orderdate)='05'

--e. Get the total sales made in the year 2011 by month order by
--increasing sales

select sum(totaldue),month(orderdate) from AdventureWorks2012.sales.SalesOrderHeader where year(orderdate)='2011' group by month(orderdate) order by sum(totaldue)

--f. Get the total sales made to the customer with FirstName='Gustavo'
--and last name =achong
select sum(oh.totaldue),pp.firstname,pp.LastName from AdventureWorks2012.sales.SalesOrderHeader oh join
AdventureWorks2012.Person.Person pp on pp.ModifiedDate=oh.ModifiedDate where pp.FirstName='gustavo' and lastname='achong' group by pp.FirstName,pp.LastName

