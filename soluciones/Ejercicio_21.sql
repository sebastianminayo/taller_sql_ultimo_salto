-- Ejercicio 21: Clientes que usaron el cupón "ULTIMO_SUSPIRO" al menos 3 veces
SELECT id_cliente, COUNT(*) AS veces_usado
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY id_cliente
HAVING veces_usado >= 3; -- Filtra grupos que cumplen la condición de frecuencia