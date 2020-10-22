create database BTVN;
use BTVN;
create table  Categories(
idCategorie int auto_increment,
constraint PK_Categories primary key (idCategorie) ,
name nvarchar(50) not null unique,
Description nvarchar(500)
);
create table  Suppliers(
idSuppliers int auto_increment,
constraint PK_Suppliers primary key(idSuppliers),
nameSuppliers nvarchar(100) not null,
email varchar(50) not null unique ,
phoneNumber varchar(50),
address nvarchar(500)
);
create table Customers(
idCustomer varchar(50) ,
constraint PK_Customers primary key(idCustomer),
firstName nvarchar(50) not null,
lastName nvarchar(50) not null,
phoneNumber varchar(50),
address nvarchar(500) not null,
email varchar(50) not null unique ,
birthDay datetime 
);
create table Employees (
idEmployee varchar(50) ,
constraint PK_Employees primary key(idEmployee),
firstName nvarchar(50) not null,
lastName nvarchar(50) not null,
phoneNumber varchar(50),
address nvarchar(500) not null,
email varchar(50) not null unique ,
birthDay datetime 
);
create table Products(
idProduct int auto_increment ,
constraint PK_Products primary key (idProduct),
nameProduct nvarchar(50) not null,
umageUrl nvarchar(1000) not null,
price int check(price>0) not null,
discount int check (discount between 0 and 100) not null,
stock int not null,
idCategorie int not null,
idSuppliers int not null,
Description nvarchar(4000)
);
create table orders(
idOrder int auto_increment,
constraint PK_Orders primary key(idOrder),
createDay datetime default current_timestamp,
shippedDate datetime,
status varchar(50) not null, 
constraint check(status = 'waiting' or status = 'completed' or status = 'canceled'),
description nvarchar(4000),
ShippingAddress nvarchar(500) not null,
ShippingCity nvarchar(50) not null,
PaymentType varchar(20) default('Cash') ,
constraint check(PaymentType='Cash' OR PaymentType='CreditCard'),
CustomerId varchar(50) not null,
EmployeeId varchar(50) not null,
constraint check (shippedDate>=createDay)
);
create table OrderDetails(
id int auto_increment,
constraint PK_OrderDetails primary key(id),
idOder int not null,
idProduct int not null,
quanity int  not null
);
use btvn;
alter table Products
add constraint FK_Categories_Products foreign key(idCategorie ) references categories(idCategorie);

alter table Products
add constraint FK_Suppliers_Products foreign key(idSuppliers) references Suppliers(idSuppliers);

alter table Orders
add constraint FK_Customer_Orders foreign key(CustomerId) references Customers(idCustomer);

alter table Orders
add  constraint FK_Employees_Orders foreign key(EmployeeId) references Employees(idEmployee );

alter table  OrderDetails 
add constraint FK_Orders_OrderDetails foreign key(idOder) references orders(idOrder);

alter table OrderDetails 
add constraint FK_Products_OrderDetails foreign key(idProduct) references Products(idProduct);