INSERT INTO buy_books( buy_id, books_id, amount)
SELECT  5, books_id, 2
FROM authors INNER JOIN books USING(authors_id)
INNER JOIN buy_books USING(books_id)
WHERE titles='Лирика' AND authors_name='Пастернак Б.Л.';
INSERT INTO buy_books( buy_id, books_id, amount)
SELECT  5, books_id, 1
FROM authors INNER JOIN books USING(authors_id)
INNER JOIN buy_books USING(books_id)
WHERE titles='Белая гвардия' AND authors_name='Булгаков М.А.';
SELECT*FROM buy_books;