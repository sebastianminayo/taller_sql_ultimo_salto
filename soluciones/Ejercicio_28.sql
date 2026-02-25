-- Reporte de clientes de riesgo (> 180 días sin comprar)
SELECT c.nombre, c.correo, MAX(v.fecha_venta) AS ultima_compra
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING ultima_compra < DATE('now', '-180 days'); -- Filtra por inactividad