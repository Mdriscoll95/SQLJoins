/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select p.Name as productName, c.Name as categoryName
 from products as p
 inner join categories AS c
 on c.CategoryID = p.CategoryID
 where c.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.Name, 
 p.Price,
 r.Rating 
 from products as p
 inner join reviews as r on 
 r.ProductID = p.ProductID
 where r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, sum(s.Quantity) as total
from sales as s
inner join employees as e
on s.EmployeeID = e.EmployeeID
group by e.EmployeeID
order by total desc
limit 5;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as "department Name", c.Name as "Category Nmae", from departments as d
inner join categories as c
on d.DepartmentID = c.DepartmentID
where c.Name = "Appliances" or c.Name = "games" ;
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.Name, sum(s.Quantity) as "Total sales" , sum(sum.PricePerUnit) as "Tottal Sales" from sales as s
inner join products as p
on s.PrductID = p.ProductID
where p.Name like "%Hotel%";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.Name, r.Reviewer, r.Rating, r.Comment from reviews as r
inner join products as p
on r.ProductID = p.ProductsID
where p.Name like"%Viseo%" and r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

select e.EmployeeID, e.Firstname, e.LastName, p.Name as "product", s.Quatity as "Quantity sold" from sales as s
inner join employees as e
on s.EmployeeID = e.EmployeeID
inner join Products as p
on s.ProductID = p.ProductID;

