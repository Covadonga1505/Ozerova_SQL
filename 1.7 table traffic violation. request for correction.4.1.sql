CREATE TABLE payment
(
    payment_id int auto_increment primary key,
    name           varchar(30),
    number_plate   varchar(6),
    violation      varchar(50),
    date_violation date,
    date_payment   date
);

INSERT INTO payment
    (name, number_plate, violation, date_violation, date_payment)
VALUES
('Яковлев Г.Р.', 'М701АА', 'Превышение скорости (от 20 до 40)', '2020-01-12', '2020-01-22'),
('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости (от 40 до 60)', '2020-02-14', '2020-03-06'),
('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', '2020-03-03', '2020-03-23');
SELECT*FROM payment;