SELECT name, number_plate, violation
FROM fine
GROUP BY name, violation, number_plate
HAVING COUNT(violation) > 1
ORDER BY name, number_plate, violation;