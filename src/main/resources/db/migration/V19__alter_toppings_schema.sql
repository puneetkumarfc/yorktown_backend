ALTER TABLE item_toppings
ADD COLUMN category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES menu_categories(id);