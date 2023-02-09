INSERT INTO book (title, author, price, amount) VALUES ('Черный человек','Есенин С.А.', Null, Null);

SELECT author AS Автор, COUNT(amount) AS Различных_книг, SUM(amount) AS Количество_экземпляров
FROM book
GROUP BY author;