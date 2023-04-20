DROP TABLE buy_pay;
CREATE TABLE buy_pay(
titles VARCHAR(50),
authors_name VARCHAR(50),
price DECIMAL(8,2),
amount INT,
Стоимость DECIMAL(8,2));
SELECT*FROM buy_pay;
INSERT INTO buy_pay(titles,authors_name,price,amount,Стоимость)
SELECT titles, authors_name, prices, buy_books.amount, prices*buy_books.amount
FROM authors
	JOIN books USING(authors_id)
    JOIN buy_books USING(books_id)
WHERE buy_id=5 AND buy_books_id <>0
ORDER BY titles;
SELECT*FROM buy_pay;