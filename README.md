### Welcome to Address Book Database 

#### UC1 Create a address book service database
---
create database address_book_service;
use address_book_service;
---
#### UC2 Create address book table
---
create table address_book (
    -> FIRSTNAME varchar(150) not null,
    -> LASTNAME varchar(150) not null,
    -> ADDRESS varchar(250) not null,
    -> CITY varchar(250) not null,
    -> STATE varchar(250) not null,
    -> ZIP int(8) not null,
    -> PHONE int(12) not null,
    -> EMAIL varchar(200) not null,
    -> PRIMARY KEY(FIRST NAME));
---
#### UC3 Insert contact to address book
---
insert into address_book(FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,ZIP,PHONE,EMAIL) values
    -> ('Mohan','Kapoor','Rajabazaar','Mumbai','Maharashtra',769008,336987,'mohan.mumbaiz@gmail.com'),
    -> ('Raj','Singh','Lalbazaar','Patna','Bihar',800003,987564,'singhlal@yahoo.com');
---
#### UC4 Edit contact using name
---
update address_book
    -> set PHONE='947217426'
    -> where FIRSTNAME = 'Mohan' and LASTNAME = 'Kapoor';
---
#### UC5 Delete contact using name
---
delete from address_book
    -> where FIRSTNAME = 'Mohan' and LASTNAME = 'Kapoor';
---
#### UC6 Retreive contact using city or state
---
select FIRSTNAME, LASTNAME from address_book
    -> where city = 'PATNA';
select FIRSTNAME, LASTNAME from address_book
    -> where state = 'BIHAR';
---
#### UC7 Count city and state
---
select count(city) from address_book;
select count(state) from address_book;
---
#### UC8 Retreive entries sorted by name
---
select * from address_book
    -> where city = 'PATNA'
    -> order by FIRSTNAME;
---
#### UC9 Identify address book with name and type (alter table)
---
alter table address_book
    -> add ADDRESSBOOKNAME varchar(150) after EMAIL,
    -> add TYPE varchar(150) after EMAIL;
update address_book
    -> set ADDRESSBOOKNAME = 'Personal' where FIRSTNAME = 'Mohan' or FIRSTNAME = 'Luv';
update address_book
    -> set ADDRESSBOOKNAME = 'Casual' where FIRSTNAME = 'Hero' or FIRSTNAME = 'Raj';
---
#### UC10 Get number of contact person by type
---
select type, COUNT(type) from address_book
    -> group by type;
---
#### UC11 Add person to both friends family
---
insert into address_book(FIRSTNAME,LASTNAME,ADDRESS,CITY,STATE,ZIP,PHONE,EMAIL,TYPE,ADDRESSBOOKNAME) values
    -> ('Sam','Bishop','Time Square','Manhattan','New York','213654','333666','sam.1@gmail.com','Friends','Casual'),
    -> ('Akhandanand','Tripathi','Tripathi kothi','Mirzapur','Uttar Pradesh','213632','333456','kishor30oct@gmail.com','Family','Personal');
---
#### UC13 Implement ER Diagram and check previous queries
##### Creating tables
---
create table AddressBook(
    -> ADDRESSBOOKNAME varchar(150) primary key,
    -> TYPE varchar(50));
---
---
create table Contact(
    -> FIRSTNAME varchar(150) not null primary key,
    -> LASTNAME varchar(150) not null,
    -> ADDRESS varchar(250) not null,
    -> CITY varchar(25) not null,
    -> STATE varchar(250) not null,
    -> ZIP int not null,
    -> PHONE int not null,
    -> EMAIL varchar(50),
    -> ADDRESSBOOKNAME varchar(150),
    -> foreign key(ADDRESSBOOKNAME) references AddressBook(ADDRESSBOOKNAME));
---
##### Insert details into tables
---
insert into AddressBook values
    -> ('Casual','Friends'),
    -> ('Personal','Family'),
    -> ('Work','Professional');
---
---
insert into Contact values
    -> ('Mohan','Kapoor','Rajabazaar','Mumbai','Maharashtra','769008','45336987','mohan.mumbaiz@gmail.com','Work'),
    -> ('Raj','Singh','Lalbazaar','Patna','Bihar','800003','987564','singhlal@yahoo.com','Personal'),
    -> ('Mahesh','Singh','Jaunpur','Lucknow','Uttar Pradesh','809003','945664','singhlal@yahoo.com','Casual');
---
##### Retreive person by city or state
---
select * from Contact where city = 'Patna' or state = 'Uttar Pradesh';
---
##### Retrieve count of city or state to understand size of address book
---
select city, count(city) from Contact group by city;
select state,count(state) from Contact group by state;
---
##### Retrieve entries sorted by first name for a given city
---
select * from Contact where city = 'Patna' order by FIRSTNAME;
---
##### Retrieve number of contact by type
---
select AddressBook.TYPE, count(AddressBook.TYPE) from AddressBook
    -> inner join Contact
    -> on AddressBook.ADDRESSBOOKNAME = Contact.ADDRESSBOOKNAME
    -> group by AddressBook.TYPE;
---