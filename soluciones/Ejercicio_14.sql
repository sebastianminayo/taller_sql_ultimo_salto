-- Ventas del año 2025
SELECT * FROM ventas                       
WHERE strftime('%Y', fecha_venta) -- Extraemos solo el AÑO ('%Y') de la fecha
      = '2025'                    
ORDER BY fecha_venta DESC;        