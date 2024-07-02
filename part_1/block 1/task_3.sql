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

    PRIMARY KEY (publisher_id)
    FOREIGN KEY (shop_id)
        REFERENCES comic_book_shop (shop_id)
);

CREATE TABLE publishing_houses
(
    publisher_id INT,
    title TEXT,
    motto TEXT,
    owner TEXT,

    PRIMARY KEY (publisher_id)
);