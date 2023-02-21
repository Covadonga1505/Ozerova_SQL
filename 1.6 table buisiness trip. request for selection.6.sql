SELECT name, city, date_first, date_last
FROM trip
ORDER BY DATEDIFF(date_last, date_first) ASC
LIMIT 1;