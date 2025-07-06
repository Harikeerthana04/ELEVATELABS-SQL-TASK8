mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeByID (
    ->     IN emp_id INT
    -> )
    -> BEGIN
    ->     SELECT * FROM employees WHERE id = emp_id;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL GetEmployeeByID(2);
+----+------+------------+----------+
| id | name | department | salary   |
+----+------+------------+----------+
|  2 | Bob  | IT         | 75000.00 |
+----+------+------------+----------+
1 row in set (0.03 sec)

Query OK, 0 rows affected (0.04 sec)

mysql> DELIMITER //