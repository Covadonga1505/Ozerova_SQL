SELECT ROUND(AVG(price), 2) AS Средняя_цена, SUM(amount*price) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;