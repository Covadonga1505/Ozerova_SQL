create table student as
select name_program, name_enrollee,  itog
from program
inner join applicant_order using(program_id)
inner join enrollee using(enrollee_id)
where str_id<=plan
order by name_program, itog desc;