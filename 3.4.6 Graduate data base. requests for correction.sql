set @num_pr:=0;
set @row_pr:=1;
update applicant_order 
inner join
(SELECT  if(applicant_order.program_id = @num_pr , @row_pr := @row_pr + 1, @row_pr := 1 and @num_pr := applicant_order.program_id) as str_id, applicant_order.program_id, applicant_order.enrollee_id, applicant_order.itog
from applicant_order) gh on applicant_order.program_id=gh.program_id and applicant_order.enrollee_id=gh.enrollee_id
set applicant_order.str_id=if(applicant_order.program_id = @num_pr , @row_pr := @row_pr + 1, @row_pr := 1 and @num_pr := applicant_order.program_id);
