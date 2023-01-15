-- USE invoicing;
USE store;

#Update single record
-- UPDATE invoices
-- SET payment_total =10,payment_date='2022-02-01'
-- WHERE invoice_id=1;
-- SELECT * from invoices

#Update multiple records
#Edit >> Preferences >> SQL editor >> Safe Update
# Exercise 1
--  UPDATE invoices
--  SET payment_total =10,payment_date='2022-02-01'
--  WHERE invoice_id IN (3,4);
--  SELECT * from invoices

# Exercise 2
-- UPDATE customers
-- SET points=points+50
-- WHERE birth_date<'1990-01-01';

-- SELECT * from customers
# Using Subqueries in updates
# Example 1
-- UPDATE invoices
-- SET payment_total=invoice_total*0.5,
--     payment_date=due_date
-- WHERE client_id IN
-- (SELECT client_id
-- FROM clients
-- WHERE name ='Myworks')

# Example 4
--  UPDATE invoices
--  SET payment_total=invoice_total*0.5,
--      payment_date=due_date
--  WHERE client_id IN
--  (SELECT client_id
--  FROM clients
--  WHERE state IN ('CA','NY'))

# Example 5
-- Update orders
-- SET comments = 'Gold'
-- WHERE customer_id IN
-- (SELECT customer_id FROM customers WHERE points>3000);

-- SELECT * FROM orders




