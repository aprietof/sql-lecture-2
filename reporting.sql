-- # What products are in a cart?

SELECT * FROM products
JOIN line_items
ON line_items.product_id = products.id
WHERE line_items.cart_id = 1


-- # What is the total price of cart?

SELECT cart_id, SUM(products.price) AS total_price, COUNT(*) AS product_count FROM products
JOIN line_items ON line_items.product_id = products.id
GROUP BY line_items.cart_id

-- # Whose my most valuable costumer?

SELECT costumers.name, SUM(products.price) AS total_price, COUNT(*) AS product_count FROM products
JOIN line_items ON line_items.product_id = products.id
INNER JOIN carts ON line_items.cart_id = carts.id
INNER JOIN costumers ON carts.costumer_id = costumers.id
GROUP BY carts.costumer_id
ORDER BY total_price DESC LIMIT 1

-- # What's the most popular product?

SELECT products.name, COUNT(*) AS product_count FROM products
JOIN line_items ON line_items.product_id = products.id
INNER JOIN carts ON line_items.cart_id = carts.id
INNER JOIN costumers ON carts.costumer_id = costumers.id
GROUP BY line_items.product_id
ORDER BY product_count DESC LIMIT 1