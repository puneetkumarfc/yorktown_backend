CREATE TABLE order_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    size_id INT,
    quantity INT NOT NULL DEFAULT 1,
    item_price DECIMAL(6,2) NOT NULL, -- per unit price at order time
    total_price DECIMAL(8,2) NOT NULL, -- item_price * quantity
    notes TEXT,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (item_id) REFERENCES menu_items(id),
    FOREIGN KEY (size_id) REFERENCES item_sizes(id)
);