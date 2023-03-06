SELECT title, name_genre, price
FROM genre g INNER JOIN book21 b
ON g.genre_id=b.genre_id
WHERE b.amount > 8
ORDER BY price DESC;