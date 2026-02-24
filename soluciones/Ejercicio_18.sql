-- Clientes mayores de 60 años con sus totales
SELECT 
    c.nombre, 
    (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS edad_aprox, -- Calcula edad restando años
    SUM(v.total_venta) AS total_gastado                                       -- Suma todas sus compras
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente -- Une tablas
GROUP BY c.id_cliente, c.nombre              -- Agrupa para poder sumar
HAVING edad_aprox > 60;                      -- Filtra el grupo por la edad calculada