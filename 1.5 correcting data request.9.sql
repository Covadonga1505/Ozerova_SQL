CREATE TABLE ordering AS SELECT author, title,
(SELECT ROUND(AVG(amount), 2) FROM book) AS amount
FROM book
WHERE amount < ALL(SELECT ABS(AVG(amount)) FROM book);
SELECT*FROM ordering;