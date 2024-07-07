SELECT * FROM comic_book_shop;

SELECT owner 
    FROM publishing_houses
    ORDER BY owner;

SELECT author
    FROM books
    WHERE title = 'paper towns'
    ORDER BY author DESC;
