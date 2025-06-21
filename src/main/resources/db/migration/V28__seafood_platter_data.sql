INSERT INTO menu_categories (id, name, parent_id) VALUES (29, 'Seafood Platters', NULL);

-- Shrimp Basket
INSERT INTO menu_items (id, category_id, name) VALUES (13001, 29, 'Shrimp Basket');
INSERT INTO item_prices (item_id, size_id, price) VALUES (13001, 11, 10.00);

-- Jumbo Fried Shrimp (8 pieces)
INSERT INTO menu_items (id, category_id, name) VALUES (13002, 29, 'Jumbo Fried Shrimp (8 pieces)');
INSERT INTO item_prices (item_id, size_id, price) VALUES (13002, 11, 14.00);

-- Fried Flounder Fish Filet (2 pieces)
INSERT INTO menu_items (id, category_id, name) VALUES (13003, 29, 'Fried Flounder Fish Filet (2 pieces)');
INSERT INTO item_prices (item_id, size_id, price) VALUES (13003, 11, 13.00);

-- Catfish Platter
INSERT INTO menu_items (id, category_id, name) VALUES (13004, 29, 'Catfish Platter');
INSERT INTO item_prices (item_id, size_id, price) VALUES (13004, 11, 14.00);
