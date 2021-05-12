DELETE FROM fine
WHERE DATEDIFF(date_violation, '2020-02-01') < 0;