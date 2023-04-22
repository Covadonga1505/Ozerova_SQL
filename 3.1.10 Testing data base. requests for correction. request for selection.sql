SELECT name_subject, CONCAT(LEFT(name_question,30),'...') AS Вопрос, COUNT(testing.answer_id) AS Всего_ответов, ROUND((SUM(is_correct)/COUNT(testing.answer_id))*100,2) AS Успешность
FROM subject JOIN question USING(subject_id)
    JOIN testing USING(question_id)
	JOIN answer USING(answer_id)
GROUP BY name_question, name_subject
ORDER BY name_subject, Успешность DESC, name_question;