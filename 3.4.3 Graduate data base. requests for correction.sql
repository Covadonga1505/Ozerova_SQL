UPDATE 
    applicant
    INNER JOIN 
     (SELECT enrollee.enrollee_id,  if(SUM(bonus) is Null, 0,SUM(bonus))  AS Бонус
FROM enrollee LEFT JOIN enrollee_achievement ON enrollee.enrollee_id=enrollee_achievement.enrollee_id
	LEFT JOIN achievement ON achievement.achievement_id=enrollee_achievement.achievement_id
GROUP BY enrollee.enrollee_id) hjbhk  ON applicant.enrollee_id = hjbhk.enrollee_id
SET itog = itog+Бонус;