SELECT title, author, price, amount
FROM book
WHERE (price < 500.00 OR price > 600.00) AND price * amount >= 5000.00;