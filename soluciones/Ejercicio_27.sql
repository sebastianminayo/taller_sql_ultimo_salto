-- Diferencia entre el mejor y peor mes de 2025
WITH ventas_mensuales AS (
    SELECT strftime('%m', fecha_venta) AS mes, SUM(total_venta) AS ingresos
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)
SELECT MAX(ingresos) AS Mejor_mes,MIN(ingresos) AS Peor_mes 
FROM ventas_mensuales;