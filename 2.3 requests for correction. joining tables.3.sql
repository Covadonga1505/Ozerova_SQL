INSERT INTO book21(title, author_id, price, amount)
SELECT title, author_id, price, amount
FROM author a
INNER JOIN supply s ON a.name_author=s.author
WHERE amount=0;
SELECT*FROM book21;