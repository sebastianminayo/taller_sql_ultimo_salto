-- Cliente con mayor variedad de productos (Canasta diversa)
SELECT 
    c.nombre, 
    COUNT(DISTINCT dv.id_producto) AS tipos_productos -- Cuenta productos diferentes, sin repetir
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente         -- Une cliente con sus facturas
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta   -- Une facturas con los artículos comprados
GROUP BY c.id_cliente                                -- Agrupa todo por cada persona
ORDER BY tipos_productos DESC                        -- El que tiene la lista más larga va arriba
LIMIT 1;                                             