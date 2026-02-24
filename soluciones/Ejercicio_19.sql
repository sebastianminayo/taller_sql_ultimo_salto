-- Producto más vendido en cantidad
SELECT p.nombre, SUM(dv.cantidad) AS unidades_totales
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto
ORDER BY unidades_totales DESC
LIMIT 1;