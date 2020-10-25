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
