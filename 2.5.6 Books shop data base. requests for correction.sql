DROP TABLE buy_pay1;
CREATE TABLE buy_pay1(
buy_id INT,
Количество INT,
Итого DECIMAL(8,2));
SELECT*FROM buy_pay1;
INSERT INTO buy_pay1(buy_id,Количество,Итого)
SELECT buy_id, SUM(buy_books.amount), SUM(prices*buy_books.amount)
FROM books
    JOIN buy_books USING(books_id)
WHERE buy_id=5 AND buy_books_id <>0;
SELECT*FROM buy_pay1;