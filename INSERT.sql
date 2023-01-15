USE store;

# Insert into single row
# Type 1
-- INSERT INTO customers VALUES (default,'John','Smith','1961-12-13',Null,'68 Lawn Avenue','Atlanta','CA',default);
-- Select * from customers
# Type 2
-- INSERT INTO customers(first_name,last_name,birth_date,address,city,state)
--  VALUES ('Aiden','Markram','1971-12-13','68 Lawn Avenue','Atlanta','CA');
-- Select * from customers

-- # Insert into multiple rows
-- INSERT INTO shippers(name)
-- VALUES ('Shipper 1'),('Shipper 2'),('Shipper 3');
-- SELECT * from shippers

# Inserting Hierachial Rows
-- INSERT INTO orders (customer_id , order_date,status)
-- VALUES (1,'2020-01-02',1);
-- INSERT INTO order_items
-- VALUES (last_insert_id(),16,2,5.98),
--        (last_insert_id(),18,2,6.99);
-- SELECT LAST_INSERT_ID()

