CREATE TABLE comic_book_shop
(
    shop_id SERIAL,
    name TEXT,
    address TEXT,

    PRIMARY KEY (shop_id)
);

CREATE TABLE books
(
    shop_id SERIAL,
    publisher_id INT,
    title TEXT,
    author TEXT,

    FOREIGN KEY (shop_id, publisher_id)
);

CREATE TABLE publishing_houses
(
    publisher_id INT,
    title TEXT,
    motto TEXT,
    owner TEXT,

    PRIMARY KEY (publisher_id)
);

INSERT INTO comic_book_shop (shop_id, name, address)
    VALUES (1, '28oi', 'St Petersburg'),
        (2, 'BW', 'Tula'),
        (3, 'Chookigeek', 'Moscow');

 INSERT INTO books (shop_id, publisher_id, title, author)
    VALUES (1, 123, 'to kill a mockingbird', 'harper collins'),
        (1, 123, 'paper towns', 'john green'),
        (3, 124, 'killjoys', 'gerard way');

 INSERT INTO publishing_houses(publisher_id, title, motto, owner)
    VALUES (123, 'MIF', 'we bring joy', 'JFK'),
        (124, 'Eksmo', 'we love reading', 'JKR'),
        (125, 'Rosmen', 'we got HP', 'JRRT');

UPDATE comic_book_shop
    SET name='Apelsin'
    WHERE shop_id = 1;

UPDATE books
    SET author = 'rainbow rowell'
    WHERE shop_id = 3;

UPDATE publishing_houses
    SET owner = 'JRRM'
    WHERE publisher_id = 123

DELETE
    FROM comic_book_shop
    WHERE shop_id = 1;

DELETE
    FROM books
    WHERE publisher_id = 124;

SELECT * FROM comic_book_shop;

SELECT owner
    FROM publishing_houses
    ORDER BY owner;