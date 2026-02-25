-- Análisis Demográfico por rangos de edad
SELECT 
    -- 1. CREACIÓN DE RANGOS: Clasificamos a cada cliente según su edad calculada
    CASE 
        WHEN (strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento)) BETWEEN 18 AND 29 THEN '18-29'
        WHEN (strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento)) BETWEEN 30 AND 39 THEN '30-39'
        WHEN (strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento)) BETWEEN 40 AND 49 THEN '40-49'
        WHEN (strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento)) BETWEEN 50 AND 59 THEN '50-59'
        WHEN (strftime('%Y', 'now') - strftime('%Y', fecha_nacimiento)) BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+' 
    END AS rango_edad,

    -- 2. MÉTRICAS POR GRUPO:
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos, -- Cuenta personas diferentes en ese rango
    COUNT(v.id_venta) AS num_transacciones,          -- Cuenta cuántas facturas generó ese rango
    SUM(v.total_venta) AS ingresos_totales          -- Suma cuánto dinero dejaron en total

FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente -- Unión para conectar edad con dinero gastado
GROUP BY rango_edad                          -- 3. AGRUPACIÓN: Junta los datos bajo cada etiqueta de edad
ORDER BY rango_edad ASC;                     -- 4. ORDEN: De menor a mayor edad