UPDATE fine f, payment p
SET f.date_payment = p.date_violation, sum_fine=IF((DATEDIFF(p.date_payment, p.date_violation)+1)<20, sum_fine/2, sum_fine)
WHERE f.date_payment IS Null  AND f.name=p.name AND f.number_plate=p.number_plate AND f.violation=p.violation AND  fine_id>0;
SELECT*FROM fine;