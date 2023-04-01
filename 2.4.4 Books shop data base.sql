SELECT city_name, COUNT(buy.client_id) AS Количество
FROM city
	INNER JOIN client USING(city_id)
    INNER JOIN buy USING(client_id)
GROUP BY client_id
ORDER BY Количество DESC, city_name;