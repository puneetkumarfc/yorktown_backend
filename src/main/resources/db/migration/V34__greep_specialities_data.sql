-- Insert Greek Specialties category
INSERT INTO menu_categories (id, name, parent_id) VALUES (35, 'Greek Specialties', NULL);

-- Insert Greek Specialty Items
INSERT INTO menu_items (id, category_id, name) VALUES
(19001, 35, 'Spinach Pie (Homemade)'),
(19002, 35, 'Chicken Souvlaki'),
(19003, 35, 'Gyro');

-- Insert Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(19001, 11, 11.00),
(19002, 11, 12.00),
(19003, 11, 12.00);
