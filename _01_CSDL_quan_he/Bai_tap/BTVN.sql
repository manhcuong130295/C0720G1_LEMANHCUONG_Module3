create database `BTVN`;
use `BTVN`;
-- create Product;
create table Product(
Id int,
Name nvarchar(50),
UmageUrl nvarchar(1000),
Price int,
Discount int,
Stock int,
Categoryid int,
Supliderid int,
Description nvarchar(50)
);
-- create oders
create table Oders(
Id int,
CreatedDate datetime,
ShipedDate datetime,
Status varchar(50),
Description nvarchar(50),
ShippingAddress nvarchar(500),
ShippingCity nvarchar(50),
PaymentType varchar(20),
CustomerId varchar(50),
EmployeeId varchar(50)
);
 SET SQL_SAFE_UPDATES = 0;
 insert into Product values
 (1,'Phantom Assassin','bit.ly/imageOfPA.png',45,0,258,3,19,'Have Arcana'),
(2,'Lina','bit.ly/lina.png',45,0,258,3,19,'Have Arcana'),
(3,'Storm Spirit','bit.ly/Storm_Spirit.png',45,0,258,3,19,'Haven not arcana '),
(4,'Sven','bit.ly/Sven.png',45,0,258,3,19,'From Vavle Dota2'),
(5,'Temple Assasin','bit.ly/Temple_Assasin.png',45,0,258,3,19,'From Vavle Dota2'),
(6,'Kunka','bit.ly/Kunka.png',45,0,258,3,19,'From Vavle Dota2'),
(7,'Tiny','bit.ly/Tiny.png',45,0,258,3,19,'From Vavle Dota2'),
(8,'Omniknight','bit.ly/Omniknight.png',45,0,258,3,19,'From Vavle Dota2'),
(9,'Anti Mage','bit.ly/Anti Mage.png',45,0,258,3,19,'From Vavle Dota2'),
(10,'Invoker','bit.ly/Invoker.png',45,0,258,3,19,'From Vavle Dota2'),
(11,'Legion Commander','bit.ly/LC.png',45,0,258,3,19,'From Vavle Dota2') ;
 ;
--   insert into Oders values
select*from Oders;