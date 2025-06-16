CREATE TABLE menu_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    is_special BOOLEAN DEFAULT FALSE,
    display_on_home_page BOOLEAN DEFAULT FALSE,
    item_note TEXT null,
    FOREIGN KEY (category_id) REFERENCES menu_categories(id)
);