-- Ejercicio 3: ¿Cuál es el paracaídas más caro?
-- Usando MAX() para encontrar el valor más alto y WHERE para filtrar la categoría.
SELECT nombre, MAX(precio) precio_mayor
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC LIMIT 1;
