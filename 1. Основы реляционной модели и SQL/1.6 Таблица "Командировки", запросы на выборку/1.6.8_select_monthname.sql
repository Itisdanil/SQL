SELECT MONTHNAME(date_first) AS Месяц, COUNT(city) AS Количество
FROM trip
GROUP BY Месяц
ORDER BY Количество DESC, Месяц;