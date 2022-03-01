# Show all the databases which exist 
SHOW DATABASES;

# Create a new database
CREATE DATABASE customers;

# Start using the `customers` database
USE customers;

# Create a new table in the database
CREATE TABLE customer_info (
	id INTEGER,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

# Show all the tables in the database
SHOW TABLES;

# Show all the rows of the table
SELECT * FROM customer_info;

# Insert a new row 
INSERT INTO customer_info (id, first_name, last_name) VALUES (
	18028,
    'Muhammad',
    'Saleh'
);
# Insert another row
INSERT INTO customer_info (id, first_name, last_name) VALUES (
	18035,
    'Raja',
    'Shahzaib'
);

# Show all the rows in the table `customer_info`
SELECT * FROM customer_info;

# Delete the table
DROP TABLE customer_info;

# Now, check all the tables which exist
SHOW TABLES;

# Delete the whole database
DROP DATABASE customers;

# Show all the databases which exist
SHOW DATABASES;