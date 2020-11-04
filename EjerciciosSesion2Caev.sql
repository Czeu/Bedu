USE classicmodels;
select * FROM employees;
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con a.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE 'a%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre termina con on.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE '%on';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE '%on%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE 'T___m';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B.
SELECT employeeNumber, lastName, firstName FROM employees WHERE firstName NOT LIKE 'B%';
#Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
SELECT productCode,productName FROM products WHERE productCode LIKE '%_20%'; 
#Dentro de la tabla orderdetails, obten el total de cada orden.
SELECT orderNumber, sum(priceEach*quantityOrdered) FROM orderdetails GROUP BY orderNumber;
#Dentro de la tabla orders obten el número de órdenes por año.
SELECT * FROM offices;
SELECT YEAR(orderDate) AS 'año', count(*) AS 'ordenes' FROM orders GROUP BY YEAR(orderDate);
#Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
SELECT lastName, firstName FROM employees JOIN offices ON employees.officeCode =offices.officeCode WHERE offices.country ='USA';
#Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
SELECT * FROM payments;
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount = (SELECT MAX(amount) FROM payments);
#Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
SELECT customerNumber, checkNumber, amount FROM payments WHERE amount> (SELECT AVG(amount) FROM payments);
#Obten el nombre de aquellos clientes que no han hecho ninguna orden.
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT customerNumber from orders);
#Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
SELECT * FROM orderdetails;
SELECT MAX(sub.suma), MIN(sub.suma), AVG(sub.suma) FROM (SELECT SUM(quantityOrdered) AS suma FROM orderdetails GROUP BY orderNumber) AS sub;
#Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
SELECT status, COUNT(*) FROM orders GROUP BY status;