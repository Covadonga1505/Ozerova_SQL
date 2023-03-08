#CREATE TABLE book22 (
    #book_id INT PRIMARY KEY AUTO_INCREMENT, 
    #title VARCHAR(50), 
    #author_id INT NOT NULL, 
    #price DECIMAL(8,2), 
    #amount INT, 
    #genre_id INT,
    #FOREIGN KEY (author_id)  REFERENCES author (author_id),
    #FOREIGN KEY (genre_id)  REFERENCES genre (genre_id));
#SELECT*FROM book22;
 #INSERT INTO book22(title, author_id, genre_id, price, amount) 
#VALUES
#('Черный человек', '1', '1', '670.99', '3'),
#('Белая гвардия', '1', '3', '540.50', '5'),
#('Идиот', '2', '1', '460.20', '10'),
#('Братья Карамазовы', '2', '1', '799.01', '3'),
#('Игрок', '2', '1', '480.50', '10'),
#('Стихотворения и поэмы', '3', '2', '650.00', '15'),
#('Черный человек', '3', '1', '570.20', '6'),
#('Лирика', '4', '2', '518.99', '2');
#SELECT*FROM book22;
SELECT name_author 
FROM author INNER JOIN book22 ON author.author_id=book22.author_id
GROUP BY name_author
HAVING COUNT(DISTINCT genre_id) = 1
ORDER BY name_author;