-- Clasificación de clientes por nivel de gasto
-- Se crea una etiqueta basada en el rango de dinero invertido.
SELECT c.nombre, 
       SUM(v.total_venta) AS total,
       CASE 
           WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
           WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
           ELSE 'Bajo Valor'
       END AS categoria_cliente -- Segmentación analítica
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente;