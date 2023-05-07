SELECT name_subject, COUNT(enrollee_id) AS Количество, MAX(result) AS Максимум, MIN(result) AS Минимум, ROUND(AVG(result),1) AS Среднее
FROM subject INNER JOIN enrollee_subject ON subject.subject_id=enrollee_subject.subject_id
GROUP BY name_subject
ORDER BY name_subject;