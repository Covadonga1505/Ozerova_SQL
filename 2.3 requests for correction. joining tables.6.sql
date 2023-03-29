DELETE FROM genre
WHERE genre_id=(
	SELECT genre_id
    FROM book21
    GROUP BY genre
    HAVING COUNT(title)<4);