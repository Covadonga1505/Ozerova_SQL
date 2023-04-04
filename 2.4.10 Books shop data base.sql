SELECT genres_name, SUM(buy_books.amount) AS Количество
FROM genres
	INNER JOIN books USING(genres_id)
    INNER JOIN buy_books USING(books_id)
GROUP BY genres_name
HAVING SUM(buy_books.amount)=(
	SELECT MAX(sum_amount)
    FROM (SELECT genres_id, SUM(buy_books.amount) AS sum_amount
		FROM books INNER JOIN buy_books USING(books_id)
        GROUP BY genres_id) query_in);
