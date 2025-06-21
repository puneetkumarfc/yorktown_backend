-- Classic Cheese Pizza
INSERT INTO menu_items (id, category_id, name) VALUES (7001, 23, 'Classic Cheese Pizza');

INSERT INTO item_prices (item_id, size_id, price) VALUES
(7001, 3, 9.00),  -- 10"
(7001, 4, 11.00), -- 12"
(7001, 5, 13.00), -- 14"
(7001, 6, 18.00); -- 16"

-- Insert toppings (without IDs, let DB handle them)
INSERT INTO item_toppings (name, price, category_id) VALUES
('Pepperoni', 0.00, 23),
('Ham', 0.00, 23),
('Ground Beef', 0.00, 23),
('Sausage', 0.00, 23),
('Green Peppers', 0.00, 23),
('Onion', 0.00, 23),
('Mushrooms', 0.00, 23),
('Black Olives', 0.00, 23),
('Pineapple', 0.00, 23),
('Jalapeno Peppers', 0.00, 23),
('Broccoli', 0.00, 23),
('Spinach', 0.00, 23),
('Double Cheese', 0.00, 23);

-- Now insert topping_prices using dynamically fetched IDs
-- This assumes you're using MySQL; adjust for other DBs if needed

-- Temporary table to store inserted topping IDs
CREATE TEMPORARY TABLE temp_toppings AS
SELECT id, name FROM item_toppings WHERE category_id = 23;

-- Insert topping prices for each size
INSERT INTO topping_prices (topping_id, size_id, price)
SELECT id, 3, 1.25 FROM temp_toppings;
INSERT INTO topping_prices (topping_id, size_id, price)
SELECT id, 4, 1.50 FROM temp_toppings;
INSERT INTO topping_prices (topping_id, size_id, price)
SELECT id, 5, 1.75 FROM temp_toppings;
INSERT INTO topping_prices (topping_id, size_id, price)
SELECT id, 6, 2.00 FROM temp_toppings;

-- Cleanup temporary table
DROP TEMPORARY TABLE temp_toppings;