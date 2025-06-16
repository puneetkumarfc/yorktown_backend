CREATE TABLE item_prices (
    item_id INT NOT NULL,
    size_id INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (item_id, size_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(id),
    FOREIGN KEY (size_id) REFERENCES item_sizes(id)
);