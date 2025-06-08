-- Create extensions
CREATE EXTENSION IF NOT EXISTS postgis;

-- Create tables
CREATE TABLE sales_data (
    id SERIAL PRIMARY KEY,
    date DATE,
    product_category VARCHAR(50),
    region VARCHAR(50),
    sales_amount DECIMAL(10,2),
    units_sold INTEGER,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);

CREATE TABLE website_analytics (
    id SERIAL PRIMARY KEY,
    date DATE,
    page_url VARCHAR(255),
    visitors INTEGER,
    bounce_rate DECIMAL(5,2),
    avg_time_on_page INTEGER,
    device_type VARCHAR(50)
);

-- Insert sample data for sales_data
INSERT INTO sales_data (date, product_category, region, sales_amount, units_sold, latitude, longitude) VALUES
    ('2024-01-01', 'Electronics', 'Moscow', 15000.00, 50, 55.7558, 37.6173),
    ('2024-01-01', 'Clothing', 'St. Petersburg', 8000.00, 100, 59.9343, 30.3351),
    ('2024-01-02', 'Electronics', 'Novosibirsk', 12000.00, 40, 55.0084, 82.9357),
    ('2024-01-02', 'Food', 'Moscow', 5000.00, 200, 55.7558, 37.6173),
    ('2024-01-03', 'Clothing', 'Kazan', 6000.00, 75, 55.7887, 49.1221),
    ('2024-01-03', 'Electronics', 'Yekaterinburg', 9000.00, 30, 56.8389, 60.6057),
    ('2024-01-04', 'Food', 'St. Petersburg', 7000.00, 150, 59.9343, 30.3351),
    ('2024-01-04', 'Clothing', 'Moscow', 10000.00, 125, 55.7558, 37.6173);

-- Insert sample data for website_analytics
INSERT INTO website_analytics (date, page_url, visitors, bounce_rate, avg_time_on_page, device_type) VALUES
    ('2024-01-01', '/products', 1200, 35.5, 180, 'Desktop'),
    ('2024-01-01', '/products', 800, 45.2, 120, 'Mobile'),
    ('2024-01-02', '/about', 500, 25.0, 240, 'Desktop'),
    ('2024-01-02', '/contact', 300, 30.0, 150, 'Mobile'),
    ('2024-01-03', '/products', 1500, 40.0, 160, 'Desktop'),
    ('2024-01-03', '/products', 1000, 50.0, 100, 'Mobile'),
    ('2024-01-04', '/about', 600, 20.0, 260, 'Desktop'),
    ('2024-01-04', '/contact', 400, 35.0, 140, 'Mobile');

-- Create indexes for better query performance
CREATE INDEX idx_sales_date ON sales_data(date);
CREATE INDEX idx_sales_region ON sales_data(region);
CREATE INDEX idx_analytics_date ON website_analytics(date);
CREATE INDEX idx_analytics_page ON website_analytics(page_url); 