SELECT buy_id, step_name
FROM step
	INNER JOIN buy_step USING(step_id)
WHERE date_step_beg IS NOT NULL AND date_step_end IS NULL
ORDER BY buy_id;