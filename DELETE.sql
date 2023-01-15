USE store;
DELETE FROM shippers
WHERE shipper_id IN(6,7,8);
SELECT * FROM shippers 