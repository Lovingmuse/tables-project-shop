SELECT *
    FROM books
    JOIN publishers ON books.publisher_id=publishing_houses.publisher_id;

 

SELECT *
    FROM comic_book_shop
    CROSS JOIN shop_id;

SELECT * 
    FROM books
    FULL JOIN books.publisher_id=publishing_houses.publisher_id;;

