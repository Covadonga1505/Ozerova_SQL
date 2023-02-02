SELECT title, author
FROM book
WHERE trim(title) LIKE '% %' AND author LIKE '%С.%'
ORDER BY title;
