delete from applicant
using
    applicant
where applicant.enrollee_id  in (
    SELECT distinct e.enrollee_id
FROM enrollee e JOIN program_enrollee on e.enrollee_id=program_enrollee.enrollee_id
    JOIN program USING(program_id)
    JOIN program_subject USING(program_id)
    JOIN subject USING(subject_id)
    JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id   and enrollee_subject.enrollee_id = e.enrollee_id
WHERE result<min_result ) and applicant.program_id in
( SELECT distinct program.program_id
FROM enrollee e JOIN program_enrollee on e.enrollee_id=program_enrollee.enrollee_id
    JOIN program USING(program_id)
    JOIN program_subject USING(program_id)
    JOIN subject USING(subject_id)
    JOIN enrollee_subject ON subject.subject_id = enrollee_subject.subject_id   and enrollee_subject.enrollee_id = e.enrollee_id
WHERE result<min_result );


select*
from applicant;
