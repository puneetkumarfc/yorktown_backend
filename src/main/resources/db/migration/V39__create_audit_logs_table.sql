CREATE TABLE audit_logs (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    event VARCHAR(100) NOT NULL,
    username VARCHAR(255) NULL,
    ip_address VARCHAR(45) NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    details TEXT NULL,
    status VARCHAR(50) NULL,
    error_message TEXT NULL
); 