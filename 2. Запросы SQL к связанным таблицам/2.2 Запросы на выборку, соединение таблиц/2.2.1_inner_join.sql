SELECT book.title, genre.name_genre, book.price
FROM
    genre JOIN book
    ON genre.genre_id = book.genre_id
WHERE book.amount > 8
ORDER BY book.price DESC;
