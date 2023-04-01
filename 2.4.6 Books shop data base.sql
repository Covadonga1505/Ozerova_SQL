SELECT buy_id, client_name, SUM(buy_books.amount*prices) AS Стоимость
FROM client
	INNER JOIN buy USING(client_id)
    INNER JOIN buy_books USING(buy_id)
    INNER JOIN books USING(books_id)
GROUP BY buy_id
ORDER BY buy_id;