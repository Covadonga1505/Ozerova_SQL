create table applicant AS
select p.program_id, e.enrollee_id, SUM(result)  AS itog
FROM enrollee e JOIN program_enrollee on e.enrollee_id=program_enrollee.enrollee_id
    JOIN program p USING(program_id)
    JOIN program_subject USING(program_id)
    JOIN subject USING(subject_id)
    JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id 
and enrollee_subject.enrollee_id = e.enrollee_id
GROUP BY p.program_id,  e.enrollee_id
ORDER BY p.program_id, itog DESC;

Select *
from applicant
ORDER BY program_id, itog desc;