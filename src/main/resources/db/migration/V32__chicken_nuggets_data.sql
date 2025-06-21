INSERT INTO menu_categories (id, name, parent_id) VALUES (33, 'Chicken Nuggets', NULL);

-- Nuggets Items
INSERT INTO menu_items (id, category_id, name) VALUES
(17001, 33, '5 Pieces Chicken Nuggets'),
(17002, 33, '8 Pieces Chicken Nuggets'),
(17003, 33, '10 Pieces Chicken Nuggets');

-- Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(17001, 11, 5.00),
(17002, 11, 7.00),
(17003, 11, 8.00);