INSERT INTO menu_categories (id, name, parent_id) VALUES (40, 'Desserts', NULL);

-- Dessert Items
INSERT INTO menu_items (id, category_id, name) VALUES
(23001, 40, 'Rice Pudding'),
(23002, 40, 'Carrot Cake'),
(23003, 40, 'Cheesecake'),
(23004, 40, 'Chocolate Cake'),
(23005, 40, 'Apple Pie');

-- Dessert Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(23001, 11, 4.00),
(23002, 11, 4.00),
(23003, 11, 4.00),
(23004, 11, 4.00),
(23005, 11, 4.00);
