INSERT INTO menu_categories (id, name, parent_id) VALUES (31, 'Add Ons', NULL);

-- Add-On Items
INSERT INTO menu_items (id, category_id, name) VALUES
(15001, 31, 'Gravy'),
(15002, 31, 'Add Cheddar Cheese Sauce'),
(15003, 31, 'BBQ Sauce'),
(15004, 31, 'Honey Mustard'),
(15005, 31, 'Bleu Cheese'),
(15006, 31, 'Ranch');

-- Add-On Prices
INSERT INTO item_prices (item_id, size_id, price) VALUES
(15001, 11, 2.00),
(15002, 11, 2.00),
(15003, 11, 1.00),
(15004, 11, 1.00),
(15005, 11, 1.00),
(15006, 11, 1.00);