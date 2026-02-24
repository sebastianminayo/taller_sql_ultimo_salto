-- Cuántos productos se tiene en la categoría "Paracaídas"
SELECT COUNT(*) AS total_paracaidas 
FROM productos 
WHERE categoria = 'Paracaídas';