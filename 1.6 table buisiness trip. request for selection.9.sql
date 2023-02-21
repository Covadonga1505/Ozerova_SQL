SELECT name, city, date_first, per_diem*(DATEDIFF(date_last,date_first)+1) AS Сумма
FROM trip
WHERE MONTH(date_first) IN (2, 3) AND YEAR(date_first) =2020
ORDER BY name, Сумма DESC;