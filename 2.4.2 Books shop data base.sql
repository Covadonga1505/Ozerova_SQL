SELECT buy_id, titles, prices, buy_books.amount
FROM client
	INNER JOIN buy USING(client_id)
    INNER JOIN buy_books USING(buy_id)
    INNER JOIN books USING(books_id)
WHERE client_name='Баранов Павел	'
ORDER BY buy_id, titles;
