create table applicant_order As
select program_id, enrollee_id,  itog
from applicant
order by program_id, itog desc;
DROP TABLE applicant;