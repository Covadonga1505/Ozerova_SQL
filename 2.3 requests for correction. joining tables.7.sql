DELETE FROM author
USING author
	INNER JOIN book21 USING(author_id)
    WHERE genre_id=(
		SELECT genre_id
        FROM book21
			INNER JOIN genre USING(genre_id)
            WHERE name_genre='Поэзия');