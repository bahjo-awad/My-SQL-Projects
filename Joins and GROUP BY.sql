use northwind;

-- Management wants to know which supplier provides each product in the inventory. 
select suppliers.suppliername, productname
from products
inner join suppliers
on products.supplierId = products.productId;

select productname, categoryname, products.categoryid
from products;

-- The food department wants to view all items in the Meat/Poultry category.

Select productname, categoryname
from products as p
join categories as c
on p.CategoryID = c.CategoryID
where categoryname = 'Meat/poultry';

 -- Write a SQL query to retrieve the Order ID, Order Date, Customer Name, and Employee Name for all orders.
 select o.orderid, o.orderdate, CustomerName, e.firstname, e.lastname
 from customers as c
 join orders as o
 on c.customerid = o.customerid
 join employees as e
 on o.employeeid = e.employeeid;
 
 -- Write a SQL query to retrieve the Product Name, Category Name, and Supplier Name for all products.

select ProductName, CategoryName, SupplierName
from suppliers as s
join products as p
on s.supplierid = p.supplierid
join categories as c
on p.categoryid = c.CategoryID;

-- Write a SQL query to create a report for all the orders of 1996 and their customers. 
 
 select c.customerid, c.customername, o.orderdate, o.orderid
 from orders as o
 join customers as c
 on o.customerid = c.customerid
 where year(orderdate) = 1996;

 -- Write a SQL query to retrieve all categories along with the number of products in each category.
 
 
select CategoryName, c.CategoryID, count(ProductID)
from categories as c
join products as p
on c.CategoryID = p.CategoryID
group by c.categoryid; 

 -- Write a SQL query to retrieve all products with their prices and the quantity ordered for each product.
 
 select ProductName, price, sum(quantity) as totalquantity
 from products as p
 join order_details as od
 on p.ProductID = od.ProductID
 group by p.Productname, price;
 
