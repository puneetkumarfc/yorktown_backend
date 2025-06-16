CREATE TABLE order_item_addons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_item_id INT NOT NULL,
    addon_id INT NOT NULL,
    addon_price DECIMAL(6,2) NOT NULL,
    FOREIGN KEY (order_item_id) REFERENCES order_items(id),
    FOREIGN KEY (addon_id) REFERENCES item_addons(id)
);