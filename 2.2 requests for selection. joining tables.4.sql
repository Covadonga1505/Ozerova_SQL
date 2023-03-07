SELECT name_genre, title, name_author
FROM genre g
INNER JOIN book21 b ON g.genre_id=b.genre_id
INNER JOIN author a ON a.author_id=b.author_id
WHERE name_genre IN ('роман')
ORDER BY title;