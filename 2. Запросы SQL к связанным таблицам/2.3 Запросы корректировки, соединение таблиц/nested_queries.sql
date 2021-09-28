UPDATE book
SET genre_id = 
        (
         SELECT genre_id 
         FROM genre
         WHERE name_genre = 'Поэзия')
WHERE author_id = 
        (
         SELECT author_id 
         FROM author
         WHERE name_author LIKE 'Лермонтов%');
UPDATE book
SET genre_id = 
        (
         SELECT genre_id 
         FROM genre
         WHERE name_genre = 'Приключения')
WHERE author_id = 
        (
         SELECT author_id 
         FROM author
         WHERE name_author LIKE 'Стивенсон%');
SELECT * FROM book;