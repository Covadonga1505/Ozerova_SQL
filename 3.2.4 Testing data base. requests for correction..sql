DELETE FROM testing USING testing JOIN attempt USING(attempt_id)
WHERE DATE(date_attempt)<'2020-05-01';
DELETE FROM attempt 
WHERE DATE(date_attempt)<'2020-05-01';
SELECT * FROM attempt;