SELECT DISTINCT client_name
FROM client
	INNER JOIN buy USING(client_id)
    INNER JOIN buy_books USING(buy_id)
    INNER JOIN books USING(books_id)
    INNER JOIN authors USING(authors_id)
WHERE authors_name='Достоевский Ф.М.'
ORDER BY client_name;