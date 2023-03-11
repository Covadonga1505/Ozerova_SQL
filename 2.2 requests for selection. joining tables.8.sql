#supply_id INT PRIMARY KEY AUTO_INCREMENT, 
    #title VARCHAR(50), 
    #author VARCHAR(50), 
    #price DECIMAL(8,2), 
    #amount INT);
#SELECT*FROM supply;
#INSERT INTO supply(title, author, price, amount) 
#VALUES
#('Доктор Живаго', 'Пастернак Б.Л.', '618.99', '3'),
#('Черный человек', 'Есенин С.А.', '570.20', '6'),
#('Евгений Онегин', 'Пушкин А.С.', '440.80', '5'),
#('Идиот', '	Достоевский Ф.М.', '360.80', '3');
#SELECT*FROM supply;
SELECT book22.title AS Название, name_author AS Автор, supply.amount+book22.amount AS Количество
FROM author
INNER JOIN book22 USING(author_id)
INNER JOIN supply ON book22.title=supply.title AND book22.price=supply.price;