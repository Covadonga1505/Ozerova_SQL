SELECT title, author, amount, round((price-price*0.3), 2) AS new_price
FROM book;