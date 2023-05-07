SELECT name_program
FROM subject INNER JOIN program_subject USING(subject_id)
	INNER JOIN program USING(program_id)
WHERE name_subject='Информатика'
ORDER BY name_program DESC;