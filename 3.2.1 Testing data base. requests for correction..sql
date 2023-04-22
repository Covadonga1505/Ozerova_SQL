INSERT attempt(student_id,subject_id,date_attempt) 
SELECT student_id,subject_id,NOW()
FROM attempt JOIN student USING(student_id)
    JOIN subject USING(subject_id)
WHERE name_student='Баранов Павел' AND name_subject='Основы баз данных';
SELECT*FROM attempt;