SELECT buy_id, date_step_end
FROM buy
	INNER JOIN buy_step USING(buy_id)
WHERE step_id=1 AND date_step_end IS NOT NULL;