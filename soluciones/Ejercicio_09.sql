-- Venta con mayor monto en toda la historia
SELECT MAX(total_venta) AS Venta_mayor_monto
FROM ventas;