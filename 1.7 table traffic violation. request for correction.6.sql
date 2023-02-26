DELETE FROM fine
WHERE MONTH(date_violation)<2 AND YEAR(date_violation)<2021 AND fine_id>0;