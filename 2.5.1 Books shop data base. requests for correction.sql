INSERT INTO client(client_name, city_id, email)
SELECT 'Попов Илья', city_id, 'popov@test'
FROM city
WHERE city_id=1;
SELECT*FROM client;