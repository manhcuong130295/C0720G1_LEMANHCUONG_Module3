create database baitap1;
use baitap1;
create table customers(
Id_Customer int not null primary key,
Fullname varchar(50),
Address varchar(200),
Email varchar(100),
PhoneNumber int
);
create table account(
Id_account int not null primary key, 
Account_type varchar(20),
date_open_account datetime,
balance int,
id_customer int not null,foreign key(id_customer) references customers(Id_Customer)
);
create table Transactions(
id_tran int not null primary key,
descriptions varchar(100),
Account_number int,foreign key(Account_number) references account(Id_account),
date_transactions datetime,
amounts int
);