create database baitap2;

use baitap2;

create table Customers(
customerId int not null  ,
customerName varchar(50) not null,
contactLastName varchar(50) not null,
contactFirstName varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressline2 varchar(50),
city  varchar(50) not null,
state varchar(50) not null,
postalCode varchar(15) not null,
country varchar(50) not null,
creditLimit double,
constraint PK_Customer primary key(customerId),
salesRepEmployeeNumber int not null
);

create table ProductLines(
productLine varchar(50) not null,
constraint PK_ProductLines primary key(productLine),
textDescription text,
image varchar(100)
);

create table Products(
productCode varchar(15) not null,
constraint PK_Products Primary key (productCode),
productName varchar(70) not null,
productScale varchar(10) not null,
productVendor varchar(50) not null,
productDescription text not null,
quantityInStock int not null,
buyPrice double not null,
MSRP double not null,
productline varchar(50) not null
);

create table Orders(
orderNumber int not null,
constraint PK_Oders primary key(orderNumber),
orderDate datetime not null,
requiredDate datetime not null,
shippedDate datetime,
status  varchar(15) not null,
comments text ,
quantityOrdered int not null,
priceEach double not null,
customerNumber int not null
);

create table Payments(
customerNumber int not null,
checkNumber varchar(50) not null,
paymentDate datetime not null,
amount double not null
);

create table Employees(
employeeNumber int not null	,
constraint PK_Employees Primary key (employeeNumber), 
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(100) not null,
jobTitle varchar(50) not null,
reportTo int not null,
officeCode varchar(10) not null
);

create table Offices(
officeCode varchar(10) ,
constraint PK_Offices primary key (officeCode),
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
state varchar(50),
country varchar(50) not null,
postalCode varchar(15) not null
);
create table OrderDetails(
productCode varchar(15) not null,
ordernumber int not null
);

alter table customers
add constraint FK_Customer_Employees foreign key(salesRepEmployeeNumber) references Employees(employeeNumber);

alter table products 
add constraint FK_Products_ProductLines foreign key (productline) references ProductLines (productLine);

alter table orders
add constraint FK_Customer foreign key(customerNumber) references Customers(customerID);

alter table Employees 
add constraint FK_employees_employees foreign key (reportTo) references Employees (employeeNumber);

alter table Employees
add constraint FK_Offices foreign key (officeCode) references Offices(officeCode) ;

alter table OrderDetails
add constraint FK_Products_OrderDetails foreign key (productCode) references Products(productCode);

alter table OrderDetails
add constraint FK_Orders_OrderDetails foreign key (ordernumber) references  Orders(orderNumber);
alter table payments 
add constraint FK_Customer_Payments foreign key (customerNumber) references  Customers(customerId);