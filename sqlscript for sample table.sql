create database zomato;
use zomato;

create table sample(
name varchar(100),
online_order char(3) not null,
book_table char(3) not null,
rate varchar(10) not null,
votes bigint not null,
phone varchar(50) not null,
location varchar(50) not null,
rest_type varchar(50) not null,
dish_liked varchar(150) not null,
cuisines varchar(150) not null,
approx_cost_for_two_people int not null,
reviews_list text not null,
menu_item text not null,
listed_in_type varchar(50) not null,
listed_in_city varchar(50) not null
);

select * from sample;

SHOW VARIABLES LIKE 'secure_file_priv';
SET @@global.sql_mode= '';
SET SESSION sql_mode = '';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Book1.csv' 
INTO TABLE sample 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

drop table sample;