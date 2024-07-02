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
