DELETE FROM supply
WHERE author IN(
	SELECT author
    FROM book
    GROUP BY author
    HAVING SUM(amount) > 10)
    AND supply_id > 0;
SELECT*FROM supply;