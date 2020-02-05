-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select product.ProductName, category.CategoryName
from product
    join category
    on category.Id = product.CategoryId

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT [order].Id, shipper.CompanyName
from [order]
    join shipper
    on [order].ShipVia = shipper.Id
where [order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT product.productname, orderdetail.orderid
from product
    join orderdetail
    on orderdetail.productid = product.Id
where orderdetail.orderid = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [order].Id as order_Id, customer.CompanyName, employee.LastName as employee_last_name
from [order]
    join customer
    on [order].CustomerId = customer.Id
    join employee
    on [order].EmployeeId = employee.Id