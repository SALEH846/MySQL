/*
SQL Constraints:
SQL constraints are used to specify any rules for the records in a table.
Contraints can be used to limit the type of data that can go into the table.
It ensures the accuracy and realiability of the records in the table, and if
there is any voilation between the contraint and the record action, the action is
aborted. Contraints can ve column level or table level. Column level constraints 
apply to a column, and table level constraints apply to the whole table.

1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FORIEGN KEY
5. CHECK
6. DEFAULT
7. INDEX

*/

# Show all the databases
SHOW DATABASES;

# Working in `customers` database
USE customers; 

# 1. NOT NULL => value cannot be null => value must be present

# Create a new table names `students`
CREATE TABLE students (
	id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT
);

# Show the schema of `students` table
DESC students;

# Changing the `students` table schema
ALTER TABLE students MODIFY age INT NOT NULL;

# Show the schema of `students` table
DESC students;

# 2. UNIQUE

# Create a new table named `persons`
CREATE TABLE persons (
	id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    unique(id)
);

# Show the schema of `persons` table
DESC persons;

# Insert a record into `persons` table
INSERT INTO persons VALUES (
	1,
    'Muhammad',
    'Saleh',
    21
);

# Insert another record into `persons` table with the same `id` as previous
# Will throw an error
INSERT INTO persons VALUES (
	1,
    'Haseeb',
    'Bukahri',
    21
);

# Changing the `persons` table schema
ALTER TABLE persons ADD UNIQUE(first_name);

# Show the schema of `persons` table
DESC persons;

# Combining multiple columns and making a unique constraint
ALTER TABLE persons ADD CONSTRAINT uc_persons UNIQUE(age, first_name);
# No two records can have same age and first_name

# Drop the unique constraint
ALTER TABLE persons DROP INDEX uc_persons;

# 3. Primary Key

# Create a new table
CREATE TABLE persons1 (
	id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    age INT,
    CONSTRAINT pk_persons1 PRIMARY KEY(id, last_name)
);

# Show the schema of `persons1` table
DESC persons1;

# Drop primary key constraint
ALTER TABLE persons1 DROP PRIMARY KEY;

# Drop not null constraint from a column
ALTER TABLE persons1 MODIFY last_name VARCHAR(20);

# Add a primary key constraint for a particular column
ALTER TABLE persons1 ADD PRIMARY KEY(id);