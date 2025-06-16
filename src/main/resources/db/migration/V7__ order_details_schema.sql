CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(20),
    customer_address TEXT,
    total_amount DECIMAL(8,2) NOT NULL,
    payment_status ENUM('pending', 'paid', 'failed') DEFAULT 'pending',
    order_status ENUM('received', 'preparing', 'ready', 'delivered', 'cancelled') DEFAULT 'received',
    placed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);