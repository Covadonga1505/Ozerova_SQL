UPDATE book21
INNER JOIN genre USING(genre_id)
SET genre_id = 2
WHERE book_id=11;
UPDATE book21
INNER JOIN genre USING(genre_id)
SET genre_id = 3
WHERE book_id=14;
SELECT*FROM book21;