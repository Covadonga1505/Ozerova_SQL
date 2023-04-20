UPDATE buy_step JOIN step USING(step_id)
SET date_step_beg ='2020-04-12'
WHERE buy_id=5 AND step_name='Оплата';
SELECT*FROM buy_step;