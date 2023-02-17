UPDATE book, supply
SET book.amount = book.amount + supply.amount, book.price = IF( book.price <> supply.price, (book.price + supply.price)/2, book.price)
WHERE book.title = supply.title AND book.author = supply.author AND book_id > 0;
SELECT*FROM book;