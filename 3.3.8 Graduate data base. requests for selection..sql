SELECT name_department, name_program, plan, COUNT(enrollee_id) AS Количество, ROUND(COUNT(enrollee_id)/plan,2) AS Конкурс
FROM department JOIN program ON department.department_id=program.department_id
	JOIN program_enrollee ON program.program_id=program_enrollee.program_id
GROUP BY name_program, name_department, plan
ORDER BY Конкурс DESC;
