-- Enlista todos los productos de "Accesorios" con precio menor a $500.
SELECT * FROM productos 
WHERE categoria = 'Accesorios'
AND precio < 500;