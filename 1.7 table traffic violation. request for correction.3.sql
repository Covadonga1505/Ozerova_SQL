UPDATE fine f, (SELECT sum_fine, name, number_plate, violation FROM fine GROUP BY number_plate, violation HAVING count(*) >=2) tf
SET f.sum_fine = tf.sum_fine *2
WHERE f.name = tf.name AND f.number_plate=tf.number_plate AND f.violation=tf.violation AND date_payment IS Null AND fine_id>0;
SELECT*FROM fine;