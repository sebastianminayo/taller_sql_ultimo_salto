-- Pérdida por cupón "ULTIMO_SUSPIRO"
WITH calculo AS ( --Creamos una tabla "temporal" para almacenar los valores que queremos calcular
    SELECT 
        SUM(total_venta) AS con_descuento,         -- Lo que entró a caja
        SUM(total_venta / 0.70) AS sin_descuento   -- Lo que debió entrar sin descuento (100%)
    FROM ventas
    WHERE cupon_usado = 'ULTIMO_SUSPIRO'
)
SELECT 
    sin_descuento, 
    con_descuento, 
    (sin_descuento - con_descuento) AS total_dejado_de_ingresar
FROM calculo;