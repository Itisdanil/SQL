UPDATE fine, payment
SET fine.date_payment = payment.date_payment,
    fine.sum_fine = IF(DATEDIFF(payment.date_payment, payment.date_violation) <= 20, sum_fine*0.5, sum_fine)
WHERE payment.number_plate = fine.number_plate AND payment.date_violation = fine.date_violation 
      AND payment.name = fine.name AND fine.date_payment IS NULL;