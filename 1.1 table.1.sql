CREATE DATABASE IF NOT EXISTS book;
USE book;
CREATE TABLE book(
	book_id INT primary key auto_increment,
    title varchar(50),
    author varchar(30),
    price decimal(8, 2),
    amount INT
);