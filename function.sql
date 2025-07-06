mysql> DELIMITER //
mysql>
mysql> CREATE FUNCTION GetBonus(
    ->     emp_salary DECIMAL(10,2)
    -> ) RETURNS DECIMAL(10,2)
    -> DETERMINISTIC
    -> BEGIN
    ->     DECLARE bonus DECIMAL(10,2);
    ->
    ->     IF emp_salary > 70000 THEN
    ->         SET bonus = emp_salary * 0.10;
    ->     ELSE
    ->         SET bonus = emp_salary * 0.05;
    ->     END IF;
    ->
    ->     RETURN bonus;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;