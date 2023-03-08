SELECT name_author, SUM(amount) AS Количество
FROM author a LEFT JOIN book21 b ON a.author_id=b.author_id
GROUP BY name_author
HAVING SUM(amount) <10 OR SUM(amount) IS NULL
ORDER BY Количество;
