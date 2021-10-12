UPDATE supply SET price = 1000 WHERE title IN('Черный человек');
UPDATE book b 
       INNER JOIN supply s
       ON s.title = b.title
SET b.price = s.price
WHERE b.price < s.price;
SELECT * FROM supply;
SELECT * FROM book;