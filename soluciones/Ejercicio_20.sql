-- Reporte ejecutivo por categoría
SELECT 
    p.categoria, 
    SUM(v.total_venta) AS ingresos_totales,
    SUM(dv.cantidad) AS unidades_vendidas,
    AVG(v.total_venta) AS ticket_promedio
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
JOIN ventas v ON dv.id_venta = v.id_venta
GROUP BY p.categoria;