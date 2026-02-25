-- Porcentaje de ingresos del cupón "ULTIMO_SUSPIRO"
WITH totales AS (
    SELECT 
        SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) AS ventas_cupon,
        SUM(total_venta) AS ventas_totales
    FROM ventas
)
SELECT (ventas_cupon * 100.0 / ventas_totales) AS porcentaje_ingreso_cupon
FROM totales;