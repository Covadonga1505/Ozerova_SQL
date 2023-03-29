DELETE FROM author
WHERE author_id=(
	SELECT author_id
	FROM book21
    GROUP BY author_id
    HAVING SUM(amount)<20);
