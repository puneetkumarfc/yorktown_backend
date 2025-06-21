INSERT INTO menu_categories (id, name, parent_id) VALUES (36, 'Beverages', NULL);

-- Coke & Pepsi Products
INSERT INTO menu_categories (id, name, parent_id) VALUES (37, 'Coke and Pepsi Products', 36);

-- Fountain Drinks
INSERT INTO menu_categories (id, name, parent_id) VALUES (38, 'Fountain Drinks', 36);

INSERT INTO menu_items (id, category_id, name) VALUES
(21001, 37, '20 oz. Bottle'),
(21002, 37, '2 Liter Bottle');

INSERT INTO item_prices (item_id, size_id, price) VALUES
(21001, 11, 3.00),
(21002, 11, 4.00);

INSERT INTO item_toppings (name, price, category_id) VALUES
('Coke', 0.00, 38),
('Diet Coke', 0.00, 38),
('Fanta', 0.00, 38),
('Crush', 0.00, 38),
('Birch Beer', 0.00, 38),
('Fuze Sweet Tea', 0.00, 38);
