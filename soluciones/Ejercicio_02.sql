-- Enlista todos los productos de la categoría "Paracaídas" con sus precios ordenados de mayor a menor precio.
SELECT nombre,categoria, precio FROM productos 
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC;