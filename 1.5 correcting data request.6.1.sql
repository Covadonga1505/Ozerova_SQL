CREATE DATABASE IF NOT EXISTS book;
USE book;
CREATE TABLE book(
	book_id INT primary key auto_increment,
    title varchar(50),
    author varchar(30),
    price decimal(8, 2),
    amount INT,
    buy INT
);
INSERT INTO book (title, author, price, amount, buy) VALUES ('Мастер и Маргарита', 'Булгаков М.А.','670.99', '3', '0');
INSERT INTO book (title, author, price, amount, buy) VALUES('Белая гвардия', 'Булгаков М.А.','540.50', '5', '3');
INSERT INTO book (title, author, price, amount, buy) VALUES('Идиот', 'Достоевский Ф.М.','460.00', '10', '8');
INSERT INTO book (title, author, price, amount, buy) VALUES('Братья Карамазовы', 'Достоевский Ф.М.','799.01', '2', '0');
INSERT INTO book (title, author, price, amount, buy) VALUES('Капитанская дочка', 'Пушкин А.С.','320', '12', '13');
INSERT INTO book (title, author, price, amount, buy) VALUES('Стихотворения и поэмы', 'Есенин С.А.','650', '15', '18');
INSERT INTO book (title, author, price, amount, buy) VALUES ('Черный человек','Есенин С.А.', '240', '10', '8');
SELECT*FROM book;
