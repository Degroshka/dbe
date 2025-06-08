-- Create database and use it
USE visualization_db;

-- Create tables
CREATE TABLE user_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    user_id INT,
    action_type VARCHAR(50),
    session_duration INT,
    device_type VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE product_metrics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    product_id INT,
    category VARCHAR(50),
    views INT,
    add_to_cart INT,
    purchases INT,
    revenue DECIMAL(10,2)
);

-- Insert sample data for user_activity
INSERT INTO user_activity (date, user_id, action_type, session_duration, device_type, location) VALUES
    ('2024-01-01', 1001, 'login', 1200, 'Mobile', 'Moscow'),
    ('2024-01-01', 1002, 'purchase', 1800, 'Desktop', 'St. Petersburg'),
    ('2024-01-02', 1003, 'browse', 900, 'Tablet', 'Novosibirsk'),
    ('2024-01-02', 1004, 'cart_update', 600, 'Mobile', 'Kazan'),
    ('2024-01-03', 1005, 'login', 1500, 'Desktop', 'Yekaterinburg'),
    ('2024-01-03', 1006, 'purchase', 2100, 'Mobile', 'Moscow'),
    ('2024-01-04', 1007, 'browse', 750, 'Desktop', 'St. Petersburg'),
    ('2024-01-04', 1008, 'cart_update', 450, 'Tablet', 'Novosibirsk');

-- Insert sample data for product_metrics
INSERT INTO product_metrics (date, product_id, category, views, add_to_cart, purchases, revenue) VALUES
    ('2024-01-01', 2001, 'Electronics', 1500, 120, 45, 45000.00),
    ('2024-01-01', 2002, 'Clothing', 2000, 180, 60, 18000.00),
    ('2024-01-02', 2003, 'Books', 800, 50, 20, 4000.00),
    ('2024-01-02', 2004, 'Electronics', 1200, 90, 35, 35000.00),
    ('2024-01-03', 2005, 'Clothing', 1800, 150, 55, 16500.00),
    ('2024-01-03', 2006, 'Books', 600, 40, 15, 3000.00),
    ('2024-01-04', 2007, 'Electronics', 1600, 130, 50, 50000.00),
    ('2024-01-04', 2008, 'Clothing', 2200, 190, 65, 19500.00);

-- Create indexes for better query performance
CREATE INDEX idx_activity_date ON user_activity(date);
CREATE INDEX idx_activity_user ON user_activity(user_id);
CREATE INDEX idx_metrics_date ON product_metrics(date);
CREATE INDEX idx_metrics_product ON product_metrics(product_id); 