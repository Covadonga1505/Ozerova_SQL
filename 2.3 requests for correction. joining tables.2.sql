INSERT INTO author(name_author)
SELECT s.author
FROM author a
	RIGHT JOIN supply s
    ON a.name_author=s.author
WHERE name_author IS NULL;
SELECT*FROM author;