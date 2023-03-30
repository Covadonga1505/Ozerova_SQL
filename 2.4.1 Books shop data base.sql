#DROP TABLE authors;
#CREATE TABLE authors
#(
#authors_id INT PRIMARY KEY AUTO_INCREMENT,
#authors_name VARCHAR(50)
#);
#INSERT INTO authors(authors_name)
#VALUES
#('Булгаков М.А.'),
#('Достоевский Ф.М.'),
#('Есенин С.А.'),
#('Пастернак Б.Л.'),
#('Лермонтов М.Ю.');
#SELECT*FROM authors;

#CREATE TABLE genres
#(
#genres_id INT PRIMARY KEY AUTO_INCREMENT,
#genres_name VARCHAR(50)
#);
#INSERT INTO genres(genres_name)
#VALUES
#('Роман'),
#('Поэзия'),
#('Приключения');
#SELECT*FROM genres;

#CREATE TABLE books
#(
#books_id INT PRIMARY KEY AUTO_INCREMENT,
#titles VARCHAR(50),
#authors_id INT NOT NULL,
#FOREIGN KEY (authors_id) REFERENCES authors(authors_id) ON DELETE CASCADE,
#genres_id INT,
#FOREIGN KEY (genres_id) REFERENCES genres(genres_id) ON DELETE SET NULL,
#prices DECIMAL(8,2),
#amounts INT
#);
#INSERT INTO books(titles, authors_id, genres_id, prices, amounts)
#VALUES
#('Мастер и Маргарита', '1', '1', '670.99', '3'),
#('Белая гвардия', '1', '1', '540.50', '5'),
#('Идиот', '2', '1', '460.00', '10'),
#('Братья Карамазовы', '2', '1', '799.01', '2'),
#('Игрок', '2', '1', '480.50', '10'),
#('Стихотворения и поэмы', '3', '2', '650.00', '15'),
#('Черный человек', '3', '2', '570.20', '6'),
#('Лирика', '4', '2', '518.99', '2');
#SELECT*FROM books;

#CREATE TABLE city
#(
#city_id INT PRIMARY KEY AUTO_INCREMENT,
#city_name VARCHAR(30),
#days_delivery INT
#);
#INSERT INTO city(city_name, days_delivery)
#VALUES
#('Москва', '5'),
#('Санкт-Петербург','3'),
#('Владивосток', '12');
#SELECT*FROM city;

#CREATE TABLE client
#(
#client_id INT PRIMARY KEY AUTO_INCREMENT,
#client_name VARCHAR(50),
#city_id INT,
#FOREIGN KEY (city_id) REFERENCES city(city_id) ON DELETE SET NULL,
#email VARCHAR(30)
#);
#INSERT INTO client(client_name, city_id, email)
#VALUES
#('Баранов Павел	', '3','baranov@test'),
#('Абрамова Катя','1', 'abramova@test'),
#('Семенонов Иван', '2', 'semenov@test'),
#('Яковлева Галина','1','yakovleva@test');
#SELECT*FROM client;

#CREATE TABLE buy
#(
#buy_id INT PRIMARY KEY AUTO_INCREMENT,
#buy_description VARCHAR(100),
#client_id INT,
#FOREIGN KEY (client_id) REFERENCES client(client_id) ON DELETE SET NULL
#);
#INSERT INTO buy(buy_description, client_id)
#VALUES
#('Доставка только вечером', '1'),
#('','3'),
#('Упаковать каждую книгу по отдельности	', '2'),
#('','1');
#SELECT*FROM buy;

#CREATE TABLE buy_books
#(
#buy_books_id INT PRIMARY KEY AUTO_INCREMENT,
#buy_id INT,
#FOREIGN KEY (buy_id) REFERENCES buy(buy_id) ON DELETE SET NULL,
#books_id INT,
#FOREIGN KEY (books_id) REFERENCES books(books_id) ON DELETE SET NULL,
#amount INT
#);
#INSERT INTO buy_books(buy_id, books_id, amount)
#VALUES
#('1', '1','1'),
#('1','7','2'),
#('1', '3','1'),
#('2','8','2'),
#('3','3','2'),
#('3','2','1'),
#('3','1','1'),
#('4','5','1');
#SELECT*FROM buy_books;

#CREATE TABLE step
#(
#step_id INT PRIMARY KEY AUTO_INCREMENT,
#step_name VARCHAR(30)
#);
#INSERT INTO step(step_name)
#VALUES
#('Оплата'),
#('Упаковка'),
#('Транспортировка'),
#('Доставка');
#SELECT*FROM step;

CREATE TABLE buy_step
(
buy_step_id INT PRIMARY KEY AUTO_INCREMENT,
buy_id INT,
FOREIGN KEY (buy_id) REFERENCES buy(buy_id) ON DELETE SET NULL,
step_id INT,
FOREIGN KEY (step_id) REFERENCES step(step_id) ON DELETE SET NULL,
date_step_beg DATE,
date_step_end DATE
);
INSERT INTO buy_step(buy_id, step_id, date_step_beg, date_step_end)
VALUES
('1', '1','2020-02-20','2020-02-20'),
('1','2','2020-02-20','2020-02-21'),
('1', '3','2020-02-22','2020-03-07'),
('1','4','2020-03-08','2020-03-08'),
('2','1','2020-02-28','2020-02-28'),
('2','2','2020-02-29','2020-03-01'),
('2','3','2020-03-02',''),
('2','4','',''),
('3','1','2020-03-05','2020-03-05'),
('3','2','2020-03-05','2020-03-06'),
('3','3','2020-03-06','2020-03-10'),
;
SELECT*FROM buy_books;