SELECT name_program
FROM program LEFT JOIN program_subject ON program.program_id=program_subject.program_id
	LEFT JOIN subject ON subject.subject_id=program_subject.subject_id
WHERE name_subject IN ('Информатика', 'Математика')
GROUP BY name_program
HAVING COUNT(name_program) =2
ORDER BY name_program;

