SELECT name, number_plate, violation
FROM fine
GROUP BY number_plate, violation
HAVING count(*) >=2
ORDER BY name, number_plate, violation;