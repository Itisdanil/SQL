UPDATE fine, (SELECT name, 
                     number_plate, 
                     violation
              FROM fine
              GROUP BY name, number_plate, violation
              HAVING count(number_plate) > 1) AS query_in
SET fine.sum_fine = fine.sum_fine * 2
WHERE fine.date_payment IS Null AND fine.name = query_in.name;
SELECT * FROM fine;