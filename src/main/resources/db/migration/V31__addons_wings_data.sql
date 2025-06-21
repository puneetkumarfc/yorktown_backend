INSERT INTO menu_categories (id, name, parent_id) VALUES (32, 'Jumbo Party Wings', NULL);

-- Wings Sizes
INSERT INTO menu_items (id, category_id, name) VALUES
(16001, 32, '6 Wings'),
(16002, 32, '12 Wings'),
(16003, 32, '18 Wings'),
(16004, 32, '24 Wings'),
(16005, 32, '36 Wings'),
(16006, 32, '50 Wings');

INSERT INTO item_prices (item_id, size_id, price) VALUES
(16001, 11, 8.00),
(16002, 11, 16.00),
(16003, 11, 24.00),
(16004, 11, 32.00),
(16005, 11, 48.00),
(16006, 11, 66.00);

INSERT INTO item_toppings (name, price, category_id) VALUES
('Traditional', 0.00, 32),
('Hot', 0.00, 32),
('Mild', 0.00, 32),
('Cajun', 0.00, 32),
('BBQ', 0.00, 32),
('Honey BBQ', 0.00, 32),
('Lemon Pepper', 0.00, 32),
('Garlic Parmesan', 0.00, 32),
('Old Bay', 0.00, 32),
('Extra Ranch', 1.00, 32),
('Extra Bleu Cheese', 1.00, 32);