CREATE TABLE back_payment AS
SELECT name, number_plate, violation, sum_fine, date_violation
FROM fine
WHERE fine.date_payment IS Null;
SELECT *
FROM back_payment;