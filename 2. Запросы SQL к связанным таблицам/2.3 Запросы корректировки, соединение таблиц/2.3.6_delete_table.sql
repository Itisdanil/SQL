DELETE FROM genre
WHERE genre_id in (
    SELECT genre_id
    FROM book
    GROUP BY genre_id
    HAVING count(title) < 4);

SELECT * FROM genre;

SELECT * FROM book;