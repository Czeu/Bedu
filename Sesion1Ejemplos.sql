SHOW DATABASES;
USE tienda;
SHOW Tables;
#EJEMPLO2-RETO1 
DESCRIBE articulo;
DESCRIBE puesto;
DESCRIBE venta;
#EJEMPLO3
SELECT * FROM empleado;
SELECT nombre FROM empleado;
SELECT * FROM empleado WHERE apellido_paterno='Risom';
SELECT * FROM empleado WHERE id_puesto>100;
SELECT * FROM empleado WHERE id_puesto >=100 AND id_puesto <= 200;
SELECT * FROM empleado WHERE id_puesto IN (100, 200);
	#RETO1
SELECT * FROM empleado WHERE id_puesto=4;
SELECT * FROM puesto WHERE salario > 10000;
SELECT * FROM articulo WHERE precio> 1000 AND iva>100;
SELECT * FROM venta 
	WHERE id_articulo IN (135,963) AND id_empleado IN (835, 369);
#EJEMPLO4
SELECT * FROM puesto ORDER BY salario DESC;
SELECT * FROM puesto ORDER BY salario ASC;
SELECT * FROM empleado LIMIT 5;
	#RETO
SELECT * FROM puesto
 ORDER BY salario DESC LIMIT 5;
