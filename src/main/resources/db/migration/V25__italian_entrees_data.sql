INSERT INTO menu_categories (id, name, parent_id) VALUES (26, 'Authentic Italian Entrees', NULL);

-- Spaghetti with Marinara Sauce
INSERT INTO menu_items (id, category_id, name) VALUES (10001, 26, 'Spaghetti with Marinara Sauce');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10001, 11, 12.00);

-- Spaghetti with Meat Sauce
INSERT INTO menu_items (id, category_id, name) VALUES (10002, 26, 'Spaghetti with Meat Sauce');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10002, 11, 14.00);

-- Spaghetti with Mushrooms
INSERT INTO menu_items (id, category_id, name) VALUES (10003, 26, 'Spaghetti with Mushrooms');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10003, 11, 14.00);

-- Spaghetti with Meatballs
INSERT INTO menu_items (id, category_id, name) VALUES (10004, 26, 'Spaghetti with Meatballs');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10004, 11, 14.00);

-- Baked Ziti
INSERT INTO menu_items (id, category_id, name) VALUES (10005, 26, 'Baked Ziti');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10005, 11, 14.00);

-- Chicken Parmesan
INSERT INTO menu_items (id, category_id, name) VALUES (10006, 26, 'Chicken Parmesan');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10006, 11, 14.00);

-- Homemade Lasagna
INSERT INTO menu_items (id, category_id, name) VALUES (10007, 26, 'Homemade Lasagna');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10007, 11, 14.00);

-- Ravioli
INSERT INTO menu_items (id, category_id, name) VALUES (10008, 26, 'Ravioli');
INSERT INTO item_prices (item_id, size_id, price) VALUES (10008, 11, 14.00);
