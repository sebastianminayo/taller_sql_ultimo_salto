-- Muestra todos los clientes de género "F" (femenino) ordenados por fecha de 
-- nacimiento
SELECT nombre, fecha_nacimiento, genero
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;