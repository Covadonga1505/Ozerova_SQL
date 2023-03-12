#INSERT INTO supply(title, author, price, amount) 
#VALUES
#('Стихотворения и поэмы', 'Лермонтов М.Ю.', '255.90', '4'),
#('Остров сокровищ', 'Стивенсон Р.Л.', '599.99', '5');
#SELECT*FROM supply;
UPDATE book21 b
	JOIN author a USING(author_id)
    JOIN supply s ON b.title=s.title AND a.name_author=s.author
SET b.amount=b.amount+s.amount, s.amount = 0, b.price=(b.price*b.amount+s.price*s.amount)/(s.amount+b.amount)
WHERE b.price<>s.price AND b.title=s.title;
SELECT*FROM book21;
