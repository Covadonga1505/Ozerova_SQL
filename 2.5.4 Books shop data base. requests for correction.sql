UPDATE books INNER JOIN buy_books USING(books_id)
SET books.amounts=books.amounts-buy_books.amount
WHERE buy_id=5  AND buy_books_id <>0;
SELECT*FROM books;