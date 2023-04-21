SELECT name_student, name_subject, DATEDIFF(MAX(date_attempt),MIN(date_attempt)) AS Интервал
FROM subject JOIN attempt USING(subject_id)
	JOIN student USING(student_id)
GROUP BY student_id, subject_id
HAVING DATEDIFF(MAX(date_attempt),MIN(date_attempt))>0
ORDER BY Интервал;