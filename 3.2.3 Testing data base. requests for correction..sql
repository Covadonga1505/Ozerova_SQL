#INSERT INTO testing(attempt_id, question_id, answer_id)
#VALUES
#('8','7','19'),
#('8','6','17'),
#('8','8','22');
#SELECT*FROM testing;
UPDATE attempt
SET result=(SELECT ROUND(SUM(is_correct)/3*100,0)
    FROM answer INNER JOIN testing USING(answer_id)
    WHERE attempt_id=8)
WHERE attempt_id=8;