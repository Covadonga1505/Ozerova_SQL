SELECT author AS Автор, SUM(amount*price) AS Стоимость,  SUM(amount*price)*0,18 AS НДС, SUM(amount*price)*0,82 AS Стоимость_без_НДС,
ROUND((SUM(amount*price)*18/100)/(1+18/100), 2) AS tax, ROUND(SUM(amount*price)/(1+18/100),2) AS S_without_tax
FROM book
GROUP BY author;