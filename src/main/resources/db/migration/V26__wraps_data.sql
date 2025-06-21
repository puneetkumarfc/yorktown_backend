INSERT INTO menu_categories (id, name, parent_id) VALUES (27, 'Wraps', NULL);

-- Chicken Salad Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11001, 27, 'Chicken Salad Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11001, 11, 11.00);

-- Tuna Salad Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11002, 27, 'Tuna Salad Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11002, 11, 11.00);

-- Ham & Cheese Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11003, 27, 'Ham & Cheese Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11003, 11, 11.00);

-- Turkey Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11004, 27, 'Turkey Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11004, 11, 11.00);

-- Grilled Chicken Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11005, 27, 'Grilled Chicken Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11005, 11, 11.00);

-- Blackened Chicken Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11006, 27, 'Blackened Chicken Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11006, 11, 11.00);

-- Crispy Chicken Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11007, 27, 'Crispy Chicken Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11007, 11, 11.00);

-- Buffalo Chicken Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11008, 27, 'Buffalo Chicken Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11008, 11, 11.00);

-- Chicken Caesar Wrap
INSERT INTO menu_items (id, category_id, name) VALUES (11009, 27, 'Chicken Caesar Wrap');
INSERT INTO item_prices (item_id, size_id, price) VALUES (11009, 11, 11.00);

INSERT INTO item_toppings (name, price, category_id) VALUES
('Lettuce', 0.00, 27),
('Tomato', 0.00, 27),
('Onion', 0.00, 27),
('Mayonnaise', 0.00, 27),
('Banana Peppers', 0.00, 27),
('Sweet Peppers', 0.00, 27),
('Hots', 0.00, 27),
('Jalapenos', 0.00, 27);
