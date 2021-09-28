DELETE FROM author
USING 
    author 
    INNER JOIN book ON author.author_id = book.author_id
WHERE book.genre_id = (
    SELECT genre_id
    FROM genre
    WHERE name_genre = 'Поэзия');

SELECT * FROM author;

SELECT * FROM book;