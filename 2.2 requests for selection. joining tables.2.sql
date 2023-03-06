SELECT*FROM genre;
SELECT name_genre
FROM genre g LEFT JOIN book21 b ON g.genre_id=b.genre_id
WHERE title is Null;