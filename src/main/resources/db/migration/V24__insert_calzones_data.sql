INSERT INTO menu_categories (id, name, parent_id) VALUES (25, 'Calzones', NULL);

-- Cheese Calzone
INSERT INTO menu_items (id, category_id, name) VALUES (9001, 25, 'Cheese Calzone');
INSERT INTO item_prices (item_id, size_id, price) VALUES (9001, 11, 9.00);

-- Veggie Calzone
INSERT INTO menu_items (id, category_id, name) VALUES (9002, 25, 'Veggie Calzone');
INSERT INTO item_prices (item_id, size_id, price) VALUES (9002, 11, 14.00);

-- Meat Lovers Calzone
INSERT INTO menu_items (id, category_id, name) VALUES (9003, 25, 'Meat Lovers Calzone');
INSERT INTO item_prices (item_id, size_id, price) VALUES (9003, 11, 14.00);

-- Grilled Chicken Calzone
INSERT INTO menu_items (id, category_id, name) VALUES (9004, 25, 'Grilled Chicken Calzone');
INSERT INTO item_prices (item_id, size_id, price) VALUES (9004, 11, 12.00);


INSERT INTO item_toppings (name, price, category_id) VALUES
('Pepperoni', 1.50, 25),
('Ham', 1.50, 25),
('Ground Beef', 1.50, 25),
('Sausage', 1.50, 25),
('Green Peppers', 1.50, 25),
('Onion', 1.50, 25),
('Mushrooms', 1.50, 25),
('Black Olives', 1.50, 25),
('Pineapple', 1.50, 25),
('Jalapeno Peppers', 1.50, 25),
('Broccoli', 1.50, 25),
('Spinach', 1.50, 25),
('Double Cheese', 1.50, 25);
