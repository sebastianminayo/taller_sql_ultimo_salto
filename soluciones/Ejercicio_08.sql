-- Ventas que utilizaron el cupón "ULTIMO_SUSPIRO"
SELECT COUNT(*) AS Ventas_cupon
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';