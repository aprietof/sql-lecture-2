INSERT INTO costumers (name) VALUES
("Avi"),
("Steven"),
("Jill");


INSERT INTO products (name, price) VALUES
("Phone", 10),
("Radio", 5),
("TV", 20);

INSERT INTO carts (costumer_id) VALUES
(1),
(2),
(1);

INSERT INTO line_items (cart_id, product_id) VALUES
(1,1),
(1,2),
(2,2),
(3,3);