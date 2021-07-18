SELECT name_author
FROM
    genre JOIN  book
    ON genre.genre_id = book.genre_id
        JOIN author
        ON author.author_id = book.author_id 
GROUP BY name_author
HAVING count(DISTINCT genre.genre_id) = 1
ORDER BY name_author;
