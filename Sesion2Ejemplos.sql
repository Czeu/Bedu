#Ejemplo1
USE tienda;
SELECT * FROM empleado WHERE nombre LIKE 'M%';
SELECT * FROM empleado WHERE nombre LIKE '%a';
SELECT * FROM empleado WHERE nombre LIKE 'M%a';
SELECT * FROM empleado WHERE nombre LIKE 'M_losa';

#Reto1
SELECT * FROM articulo WHERE nombre LIKE '%Pasta%';
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
SELECT * FROM articulo WHERE nombre LIKE '%-%';
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';

#Ejemplo2
SELECT (1 + 7) * (10 / (6 - 4));
SELECT avg(precio) FROM articulo;
SELECT count(*) FROM articulo;
SELECT max(precio) FROM articulo;
SELECT min(precio) FROM articulo;
SELECT sum(precio) FROM articulo;

#Reto2
SELECT AVG(salario) FROM puesto;
SELECT COUNT(*) FROM articulo WHERE nombre LIKE '%Pasta%';
SELECT MAX(salario), MIN(salario) FROM puesto;
SELECT SUM(salario) AS SumFIVE FROM (SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5) AS LastFive;

#Ejemplo3
SELECT nombre, sum(precio) AS total FROM articulo GROUP BY nombre;
SELECT nombre, count(*) AS cantidad FROM articulo GROUP BY nombre ORDER BY cantidad DESC;
SELECT nombre, min(salario) AS menor, max(salario) AS mayor FROM puesto GROUP BY nombre;

#Reto3
SELECT * FROM puesto;
#¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, count(*) FROM puesto GROUP BY nombre;
#¿Cuánto dinero se paga en total por puesto?
SELECT nombre, sum(salario) FROM puesto GROUP BY nombre;
#¿Cuál es el número total de ventas por vendedor?
SELECT * FROM venta;
SELECT id_empleado, count(*) AS venta FROM venta GROUP BY id_empleado;
#¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, count(*)FROM venta GROUP BY id_articulo;




