INSERT INTO menu_categories (id, name, parent_id) VALUES (39, 'Salads By The Pound', NULL);

-- Menu Items
INSERT INTO menu_items (id, category_id, name) VALUES
(22001, 39, 'Tuna Salad (By the Pound)'),
(22002, 39, 'Chicken Salad (By the Pound)'),
(22003, 39, 'Egg Salad (By the Pound)');

-- Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(22001, 11, 13.00),
(22002, 11, 13.00),
(22003, 11, 11.00);
