CREATE TABLE topping_prices (
    topping_id INT NOT NULL,
    size_id INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (topping_id, size_id),
    FOREIGN KEY (topping_id) REFERENCES item_toppings(id),
    FOREIGN KEY (size_id) REFERENCES item_sizes(id)
);