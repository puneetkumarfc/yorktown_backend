INSERT INTO menu_categories (id, name, parent_id) VALUES (34, 'Chicken Tenders', NULL);

-- Tenders Items
INSERT INTO menu_items (id, category_id, name) VALUES
(18001, 34, '3 Pieces Chicken Tenders'),
(18002, 34, '5 Pieces Chicken Tenders'),
(18003, 34, '7 Pieces Chicken Tenders');

-- Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(18001, 11, 8.00),
(18002, 11, 11.00),
(18003, 11, 13.00);