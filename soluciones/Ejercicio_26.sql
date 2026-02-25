-- Clientes que compraron SOLO paracaídas
-- 1. Identificamos primero a los clientes que han comprado accesorios alguna vez.
WITH compradores_accesorios AS (
    SELECT DISTINCT v.id_cliente
    FROM ventas v
    JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
    JOIN productos p ON dv.id_producto = p.id_producto
    WHERE p.categoria = 'Accesorios'
)

-- 2. Seleccionamos clientes cuyo ID NO esté en la lista anterior.
SELECT 
    c.nombre, 
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
JOIN productos p ON dv.id_producto = p.id_producto
WHERE p.categoria = 'Paracaídas'
  AND c.id_cliente NOT IN (SELECT id_cliente FROM compradores_accesorios)
GROUP BY c.id_cliente;