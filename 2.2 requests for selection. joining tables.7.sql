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
SELECT title, name_author, name_genre, price, amount
FROM author a
INNER JOIN book22 b ON a.author_id=b.author_id
INNER JOIN genre g ON b.genre_id=g.genre_id
GROUP BY title, name_author, name_genre, price, amount, g.genre_id
HAVING g.genre_id IN (
	SELECT query_1.genre_id
	FROM (SELECT genre_id, SUM(amount) AS sum_am
		FROM book22
        GROUP BY genre_id) query_1 INNER JOIN (
        SELECT genre_id, SUM(amount) AS sum_am
        FROM book22
        GROUP BY genre_id
        ORDER BY sum_am DESC
        LIMIT 1) query_2 
        ON query_1.sum_am=query_2.sum_am
        )
ORDER BY title, name_author, name_genre;
        