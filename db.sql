CREATE DATABASE IF NOT EXISTS bcaecommerce;
use bcaecommerce;

CREATE TABLE IF NOT EXISTS users(
uid int AUTO_INCREMENT PRIMARY KEY,
name varchar(100),
email varchar(100) UNIQUE,
password varchar(100),
gender ENUM("male","female","others"),
role SET("admin","user") DEFAULT "user",
image varchar(100),
created_at datetime,
updated_at datetime
);

CREATE TABLE IF NOT EXISTS category(
cid int AUTO_INCREMENT PRIMARY KEY,
name varchar(100),
created_at datetime,
updated_at datetime
);

CREATE TABLE IF NOT EXISTS products(
pid int AUTO_INCREMENT PRIMARY KEY,
user_id int,
category_id int,
title varchar(255),
slug varchar(255) UNIQUE,
quantity int,
price float,
image varchar(100),
description text,
created_at datetime,
updated_at datetime,
FOREIGN KEY (user_id) REFERENCES users(uid) ON DELETE RESTRICT,
FOREIGN KEY (category_id) REFERENCES category(cid) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS orders(
oid int AUTO_INCREMENT PRIMARY KEY,
user_id int,
product_id int,
quantity int,
order_date datetime,
foreign KEY (user_id) REFERENCES users(uid) on DELETE RESTRICT,
foreign KEY (product_id) REFERENCES products(pid) ON DELETE RESTRICT

);

