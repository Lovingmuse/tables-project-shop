BEGIN;
INSERT INTO books (shop_id, publisher_id, title, author)
    VALUES (1, 123, 'to kill a mockingbird', 'harper collins'),
        (1, 123, 'paper towns', 'john green'),
        (3, 124, 'killjoys', 'gerard way');
SAVEPOINT after_insert;
UPDATE books
    SET author = 'rainbow rowell'
    WHERE shop_id = 3;
ROLLBACK after_insert;
COMMIT;

BEGIN;
UPDATE comic_book_shop
    SET name = 'Apelsin'
    WHERE shop_id = 1;
COMMIT;