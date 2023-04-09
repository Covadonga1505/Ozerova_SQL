SELECT titles, SUM(amount) AS Количество, SUM(amounty) AS Сумма
FROM
(
SELECT titles, SUM(buy_archive.amount) AS amount, SUM(buy_archive.prices*buy_archive.amount) AS amounty
FROM buy_archive INNER JOIN books USING(books_id)
GROUP BY titles
UNION 
SELECT titles, SUM(buy_books.amount) AS Количество, SUM(prices*buy_books.amount) AS Сумма
FROM books
INNER JOIN buy_books USING(books_id)
INNER JOIN buy USING(buy_id)
INNER JOIN buy_step USING(buy_id)
WHERE step_id=1 AND date_step_end IS NOT NULL
GROUP BY titles
) query_1
GROUP BY titles
ORDER BY Сумма DESC;