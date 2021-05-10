SELECT name, city, date_first, date_last
FROM trip
WHERE MONTH(date_last) - MONTH(date_first) = 0
ORDER BY city, name;