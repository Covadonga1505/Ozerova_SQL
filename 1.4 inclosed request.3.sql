SELECT author, title, amount
FROM book
WHERE author IN(
	SELECT author
    FROM book
    GROUP BY author
    HAVING COUNT(amount)=1
    );