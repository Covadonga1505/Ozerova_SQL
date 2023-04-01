SELECT authors_name, titles, COUNT(buy_books.amount) AS Количество
FROM authors
	INNER JOIN books USING(authors_id)
    LEFT JOIN buy_books USING(books_id)
GROUP BY books_id
ORDER BY authors_name, titles;