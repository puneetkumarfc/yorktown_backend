INSERT INTO menu_categories (id, name, parent_id) VALUES (28, 'Quesadillas', NULL);

-- Cheese Quesadilla
INSERT INTO menu_items (id, category_id, name) VALUES (12001, 28, 'Cheese Quesadilla');
INSERT INTO item_prices (item_id, size_id, price) VALUES (12001, 11, 10.00);

-- Grilled Chicken Quesadilla
INSERT INTO menu_items (id, category_id, name) VALUES (12002, 28, 'Grilled Chicken Quesadilla');
INSERT INTO item_prices (item_id, size_id, price) VALUES (12002, 11, 13.00);

-- Grilled Veggie Quesadilla
INSERT INTO menu_items (id, category_id, name) VALUES (12003, 28, 'Grilled Veggie Quesadilla');
INSERT INTO item_prices (item_id, size_id, price) VALUES (12003, 11, 13.00);

-- Steak Quesadilla
INSERT INTO menu_items (id, category_id, name) VALUES (12004, 28, 'Steak Quesadilla');
INSERT INTO item_prices (item_id, size_id, price) VALUES (12004, 11, 13.00);

-- Shrimp Quesadilla
INSERT INTO menu_items (id, category_id, name) VALUES (12005, 28, 'Shrimp Quesadilla');
INSERT INTO item_prices (item_id, size_id, price) VALUES (12005, 11, 15.00);