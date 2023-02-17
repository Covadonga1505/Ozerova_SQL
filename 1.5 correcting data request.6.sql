UPDATE book
SET buy = IF(buy > amount, amount, buy), price = IF(buy = 0, ROUND(price*0.9, 2), price)
WHERE book_id > 0;
SELECT*FROM book;