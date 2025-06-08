# Data Visualization Test Databases

This project contains two databases (PostgreSQL and MySQL) with sample data for testing data visualization applications.

## Database Information

### PostgreSQL
- Port: 5432
- Database: visualization_db
- Username: admin
- Password: admin123

### MySQL
- Port: 3306
- Database: visualization_db
- Username: admin
- Password: admin123
- Root Password: root123

## Getting Started

1. Make sure you have Docker and Docker Compose installed
2. Clone this repository
3. Run the following command to start both databases:
   ```bash
   docker-compose up -d
   ```

## Database Schemas

### PostgreSQL Tables
1. `sales_data` - Contains sales information with geographical data
2. `website_analytics` - Contains website traffic and user behavior data

### MySQL Tables
1. `user_activity` - Contains user interaction data
2. `product_metrics` - Contains product performance metrics

## Sample Queries

### PostgreSQL
```sql
-- Get total sales by region
SELECT region, SUM(sales_amount) as total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- Get average bounce rate by device type
SELECT device_type, AVG(bounce_rate) as avg_bounce_rate
FROM website_analytics
GROUP BY device_type;
```

### MySQL
```sql
-- Get user activity by device type
SELECT device_type, COUNT(*) as activity_count
FROM user_activity
GROUP BY device_type;

-- Get product performance by category
SELECT category, 
       SUM(views) as total_views,
       SUM(purchases) as total_purchases,
       SUM(revenue) as total_revenue
FROM product_metrics
GROUP BY category;
```

## Stopping the Databases

To stop the databases, run:
```bash
docker-compose down
```

To stop and remove all data (including volumes), run:
```bash
docker-compose down -v
``` 