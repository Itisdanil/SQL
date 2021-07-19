SELECT book.title AS Название, name_author AS Автор, book.amount + supply.amount AS Количество 
FROM 
    author JOIN book 
    USING (author_id)   
           JOIN supply 
           ON book.title = supply.title and book.price = supply.price;