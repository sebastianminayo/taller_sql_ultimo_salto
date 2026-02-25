-- Ejercicio 24: Reporte mensual de ventas 2025
SELECT 
    strftime('%m', fecha_venta) AS mes,         -- Extrae el mes (01-12)
    SUM(total_venta) AS total_ventas,           -- Suma total de dinero
    COUNT(*) AS num_transacciones,              -- Conteo de ventas realizadas
    AVG(total_venta) AS ticket_promedio         -- Promedio de gasto por cada venta
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'      -- Solo año 2025
GROUP BY mes                                    -- Agrupa los resultados por mes
ORDER BY mes ASC;                               -- Orden cronológico