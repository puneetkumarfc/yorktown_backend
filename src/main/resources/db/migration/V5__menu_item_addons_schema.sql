CREATE TABLE item_addons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(6,2) NOT NULL DEFAULT 0.00,
    applies_to_category_id INT,
    applies_to_item_id INT,
    FOREIGN KEY (applies_to_category_id) REFERENCES menu_categories(id),
    FOREIGN KEY (applies_to_item_id) REFERENCES menu_items(id)
);