SELECT name_enrollee, if(SUM(bonus) is Null, 0,SUM(bonus))  AS Бонус
FROM enrollee LEFT JOIN enrollee_achievement ON enrollee.enrollee_id=enrollee_achievement.enrollee_id
	LEFT JOIN achievement ON achievement.achievement_id=enrollee_achievement.achievement_id
GROUP BY name_enrollee
ORDER BY name_enrollee;
