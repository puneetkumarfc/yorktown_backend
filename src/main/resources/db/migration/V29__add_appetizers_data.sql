INSERT INTO menu_categories (id, name, parent_id) VALUES (30, 'Appetizers', NULL);

INSERT INTO menu_items (id, category_id, name) VALUES
(14001, 30, 'French Fries'),
(14002, 30, 'French Fries with Gravy'),
(14003, 30, 'Cheese Fries'),
(14004, 30, 'Yorktown Loaded Fries'),
(14005, 30, 'Pizza Fries'),
(14006, 30, 'Curly Fries'),
(14007, 30, 'Western Fries'),
(14008, 30, 'Onion Rings'),
(14009, 30, 'Corn Nuggets'),
(14010, 30, 'Garlic Bread'),
(14011, 30, 'Garlic Bread with Cheese'),
(14012, 30, 'Mozzarella Sticks (6)'),
(14013, 30, 'Fried Mushrooms'),
(14014, 30, 'Fried Pickles'),
(14015, 30, 'Jalapeno Poppers (6)'),
(14016, 30, 'Coleslaw'),
(14017, 30, 'Mac and Cheese Bites');

INSERT INTO item_prices (item_id, size_id, price) VALUES
(14001, 11, 4.00),
(14002, 11, 6.00),
(14003, 11, 6.00),
(14004, 11, 9.00),
(14005, 11, 6.00),
(14006, 11, 5.00),
(14007, 11, 5.00),
(14008, 11, 6.00),
(14009, 11, 7.00),
(14010, 11, 3.00),
(14011, 11, 4.00),
(14012, 11, 7.00),
(14013, 11, 7.00),
(14014, 11, 7.00),
(14015, 11, 7.00),
(14016, 11, 2.00),
(14017, 11, 8.00);

