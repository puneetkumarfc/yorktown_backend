INSERT INTO menu_categories (id, name, parent_id) VALUES
(1, 'Submarines', NULL),
(2, 'Sandwiches', NULL),
(3, 'Clubs', NULL),
(4, 'Pizza', NULL),
(5, 'Calzones', NULL),
(6, 'Italian Entrees', NULL),
(7, 'Wraps', NULL),
(8, 'Quesadillas', NULL),
(9, 'Seafood Platters', NULL),
(10, 'Appetizers', NULL),
(11, 'Add Ons', NULL),
(12, 'Wings', NULL),
(13, 'Chicken', NULL),
(14, 'Greek Specialties', NULL),
(15, 'Beverages', NULL),
(16, 'Salads', NULL),
(17, 'Desserts', NULL);

INSERT INTO menu_categories (name, parent_id) VALUES
('Hot Subs', 1),
('Cold Subs', 1),
('Hot Sandwiches', 2),
('Cold Sandwiches', 2),
('Pizza By The Slice', 4),
('Hand-Tossed Pizza', 4),
('Speciality Pizzas', 4);
