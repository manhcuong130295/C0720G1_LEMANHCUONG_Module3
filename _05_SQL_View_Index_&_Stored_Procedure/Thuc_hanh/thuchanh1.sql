-- yc1
SELECT * FROM customers WHERE customerNumber = 175; 
explain SELECT * FROM customers WHERE customerNumber = 175; 
-- yc2
create unique index Idx_Customer on customers(customerNumber);
explain SELECT * FROM customers WHERE customerNumber = 175; 
-- yc3
create unique index Idx_Customer2 on customers(contactFirstName,ContactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';
-- yc4
drop index  Idx_Customer on customers ;
drop index  Idx_Customer2 on customers ;