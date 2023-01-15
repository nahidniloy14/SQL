
-- USE sakila;
-- USE sql_hr;
 USE store;
-- USE invoicing;
# INNER JOIN
# JOIN TABLES
-- select * from country JOIN city ON city.CountryCode = country.Code
-- select co.Name as Country ,ci.name  as City
-- from country co 
-- JOIN city ci
-- ON ci.CountryCode = co.Code

# JOIN DATABASES
-- select * from country JOIN city ON city.CountryCode = country.Code
-- select country_id,wc.Name as 'Country 1'  , sc.Country as 'Country 2'
-- from world.country wc
-- JOIN sakila.country sc
-- ON wc.Name = sc.Country

# Self JOIN
-- SELECT e.employee_id, e.first_name as EmployeeName , m.first_name as ManagerName
-- FROM employees e
-- JOIN employees m
-- ON e.employee_id = m.reports_to 

# Join Multiple Tables
# EXAMPLE 1 (3 Tables)
-- SELECT c.customer_id as ID , c.first_name,c.last_name, o.order_date,os.name as Status
-- from customers as c
-- JOIN orders as o
-- ON o.customer_id = c.customer_id
-- JOIN order_statuses as os
-- ON o.status = os.order_status_id

# EXAMPLE 2 (4 Tables)
-- Select P.date, I.invoice_id,C.name,P.amount, PM.name 
-- FROM invoices as I
-- JOIN payments as P
-- ON p.invoice_id = i.invoice_id
-- JOIN payment_methods as PM
-- ON PM.payment_method_id = P.payment_id
-- JOIN clients as C
-- ON C.client_id = I.client_id

-- create table oreder_item_notes(note_id int,order_id int,product_id int, notes varchar(20));
-- insert into oreder_item_notes values (1,2,1,'Note A');
-- insert into oreder_item_notes values (2,2,1,'Note B');

# Compound JOIN
-- select *
-- from order_items oi
-- JOIN oreder_item_notes oin
-- ON oi.order_id = oin.order_id
-- AND oi.product_id = oin.product_id
 
 # Implicit JOIN
--  Select *
--  From orders o
--  JOIN customers c
--  ON o.customer_id = c.customer_id

# Outer JOIN
--  Select c.first_name, c.customer_id, o.order_id
--  From orders o #left table
--  JOIN customers c #right table
--  ON o.customer_id = c.customer_id

# LEFT JOIN
-- Select c.first_name, c.customer_id, o.order_id
-- From orders o 
-- LEFT JOIN customers c #all the records of the left table(orders) is returned
-- ON o.customer_id = c.customer_id

 # RIGHT JOIN
-- Select c.first_name, c.customer_id, o.order_id
-- From orders o 
-- RIGHT JOIN customers c #all the records of the right table(customers) is returned
-- ON o.customer_id = c.customer_id

# Outer JOIN in Multiple Tables
# EXERCISE 1
-- Select c.first_name, c.customer_id, o.order_id, s.name
-- From customers c
-- LEFT JOIN orders o 
-- ON o.customer_id = c.customer_id
-- LEFT JOIN shippers s
-- ON s.shipper_id = o.shipper_id

# EXERCISE 2
-- Select o.order_date, o.order_id, c.first_name, s.name as Shipper , os.name as Status
-- From customers c
-- Right JOIN orders o 
-- ON o.customer_id = c.customer_id
-- LEFT JOIN shippers s
-- ON s.shipper_id = o.shipper_id
-- LEFT JOIN order_statuses as os
-- ON os.order_status_id = o.order_id

# SELF OUTER JOINS
-- SELECT e.employee_id, e.first_name as Employee_Name , m.first_name as Manager_Name
-- FROM employees e
-- LEFT JOIN employees m
-- ON m.employee_id = e.reports_to 

# USING 
# Single Column
-- SELECT order_id,C.first_name,S.name AS Shipper
-- FROM  orders O
-- JOIN customers C
-- USING (customer_id)
-- LEFT JOIN shippers S
-- USING (shipper_id)
 
 # Multiple Column
 
 # Example 1
-- USE store;
-- SELECT *
-- FROM  oreder_item_notes OIN
-- JOIN order_items OI
-- USING (order_id,product_id)

# Example 2
-- USE invoicing;
-- SELECT P.date, C.name AS client, P.amount, PM.name AS name 
-- FROM clients C
-- JOIN payments P
-- USING (client_id)
-- JOIN payment_methods PM
-- ON P.payment_method = PM.payment_method_id

# Natural JOIN
-- SELECT O.order_id, C.first_name
-- FROM orders O
-- natural JOIN customers C

# Explicit CROSS JOIN

-- SELECT c.first_name AS Customer,
-- P.name AS product
-- FROM customers C
-- CROSS JOIN products P


# Implicit CROSS JOIN
-- SELECT c.first_name AS Customer,
-- P.name AS product
-- FROM customers C, products P

# Exercise 1
-- SELECT P.product_id, S.shipper_id , P.name , P.quantity_in_stock 
-- -- From products P
-- -- CROSS JOIN shippers S
-- From products P, shippers S

# UNION JOIN
-- SELECT order_id, order_date, 'ACTIVE' AS Status
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT order_id, order_date, 'ARCHIVE' AS Status
-- FROM orders
-- WHERE order_date < '2019-01-01'
# Exercise 1
-- SELECT customer_id,first_name,points,'Bronze' AS Type
-- FROM customers
-- WHERE points <2000
-- UNION
-- SELECT customer_id,first_name,points,'Silver' AS Type
-- FROM customers
-- WHERE points IN (2000,3000)
-- UNION
-- SELECT customer_id,first_name,points,'Gold' AS Type
-- FROM customers
-- WHERE points> 3000


