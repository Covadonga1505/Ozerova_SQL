SELECT DISTINCT name_program, name_enrollee
FROM enrollee JOIN program_enrollee USING(enrollee_id)
    JOIN program USING(program_id)
    JOIN program_subject USING(program_id)
    JOIN subject USING(subject_id)
    JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id   and enrollee_subject.enrollee_id = enrollee.enrollee_id
WHERE result<min_result 
ORDER BY name_program, name_enrollee