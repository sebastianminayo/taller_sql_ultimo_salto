-- Top 5 productos que más ingresos han generado
SELECT p.nombre, SUM(dv.cantidad * dv.precio_unitario) AS ingresos_producto
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto
ORDER BY ingresos_producto DESC -- Los que más dinero dan primero
LIMIT 5;