SELECT buy_id, (DATEDIFF(date_step_end, date_step_beg)) AS Количество_дней, 
IF((DATEDIFF(date_step_end, date_step_beg))>days_delivery, (DATEDIFF(date_step_end, date_step_beg))-days_delivery, 0) AS Опоздание 
FROM city
	INNER JOIN client USING(city_id)
    INNER JOIN buy USING(client_id)
    INNER JOIN buy_step USING(buy_id)
    INNER JOIN step USING(step_id)
WHERE step_name='Транспортировка' AND date_step_end IS NOT NULL
ORDER BY buy_id;