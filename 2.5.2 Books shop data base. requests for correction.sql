INSERT INTO buy(buy_description, client_id)
SELECT 'Связаться со мной по вопросу доставки', client_id
FROM client
WHERE client_name='Попов Илья';
