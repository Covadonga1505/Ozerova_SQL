SELECT author, title, price
FROM book
WHERE ABS(price - (SELECT MIN(price) FROM book)) <150
ORDER BY price ASC;