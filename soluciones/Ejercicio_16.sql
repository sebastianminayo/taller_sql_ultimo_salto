-- Cliente con mayor gasto total
SELECT c.nombre, SUM(v.total_venta) AS gran_total --Extraemos los campos requeridos de cada tabla y sumamos el total de venta
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente -- Unimos tablas por ID de cliente
GROUP BY c.id_cliente                         -- Agrupa ventas por cada persona
ORDER BY gran_total DESC                      -- Ordena de mayor a menor gasto
LIMIT 1;                                      -- Muestra solo el primero (el top)