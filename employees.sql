mysql> create database task8;
Query OK, 1 row affected (0.02 sec)

mysql> use task8;
Database changed
mysql> CREATE TABLE employees (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     department VARCHAR(50),
    ->     salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> INSERT INTO employees VALUES
    -> (1, 'Alice', 'HR', 50000.00),
    -> (2, 'Bob', 'IT', 75000.00),
    -> (3, 'Charlie', 'Finance', 62000.00);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> DELIMITER //