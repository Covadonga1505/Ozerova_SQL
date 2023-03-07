#CREATE TABLE city(
#city_id INT primary key auto_increment,
#name_city VARCHAR (30));
#insert city(name_city)
#VALUES
#('Москва'),
#('Санкт-Петербург'),
#('Владивосток');
#SELECT*FROM city;
insert author(name_author)
VALUES
('Лермонтов М.Ю.');
SELECT name_author, name_city, DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND()* 365) DAY) AS Дата
FROM author, city
ORDER BY name_city, Дата DESC;