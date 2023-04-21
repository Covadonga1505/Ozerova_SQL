SELECT name_subject, COUNT(attempt.subject_id) AS Количество, ROUND(AVG(result),2) AS Среднее
FROM subject left JOIN attempt USING(subject_id)
GROUP BY subject_id
ORDER BY Среднее DESC;