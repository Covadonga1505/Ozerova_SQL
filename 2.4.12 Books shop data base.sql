#DROP TABLE buy_archive;
#CREATE TABLE buy_archive(
#buy_archive_id INT PRIMARY KEY AUTO_INCREMENT,
#buy_id int,
#client_id int,
#books_id int,
#date_payment date,
#prices DECIMAL(8,2),
#amount int);

#INSERT INTO buy_archive (buy_id, client_id, books_id, date_payment, amount, prices)
#VALUES (2, 1, 1, '2019-02-21', 2, 670.60),
       #(2, 1, 3, '2019-02-21', 1, 450.90),
       #(1, 2, 2, '2019-02-10', 2, 520.30),
       #(1, 2, 4, '2019-02-10', 3, 780.90),
       #(1, 2, 3, '2019-02-10', 1, 450.90),
       #(3, 4, 4, '2019-03-05', 4, 780.90),
       #(3, 4, 5, '2019-03-05', 2, 480.90),
       #(4, 1, 6, '2019-03-12', 1, 650.00),
       #(5, 2, 1, '2019-03-18', 2, 670.60),
       #(5, 2, 4, '2019-03-18', 1, 780.90);
#SELECT*FROM buy_archive;
SELECT YEAR(date_payment) AS Год, MONTHNAME(date_payment) AS Месяц, SUM(amount*prices)AS Сумма
FROM buy_archive
GROUP BY MONTH(date_payment), YEAR(date_payment)
UNION ALL
SELECT YEAR(date_step_end) AS Год, MONTHNAME(date_step_end) AS Месяц, SUM(buy_books.amount*books.prices)AS Сумма
FROM books	
	INNER JOIN buy_books USING(books_id)
    INNER JOIN buy USING(buy_id)
    INNER JOIN buy_step USING(buy_id)
WHERE date_step_end IS NOT NULL AND step_id=1
GROUP BY MONTH(date_step_end), YEAR(date_step_end)
ORDER BY Месяц;