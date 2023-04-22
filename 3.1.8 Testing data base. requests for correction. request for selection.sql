SELECT name_question, name_answer, if(is_correct=0,'Неверно','Верно') AS Результат
FROM question JOIN testing USING(question_id)
	 JOIN answer USING(answer_id)
WHERE attempt_id=7;