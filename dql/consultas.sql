-- Listar los productos con stock menor a 5 unidades.

SELECT nombre, stock
FROM productos
WHERE stock < 5;


-- Calcular ventas totales de un mes específico.

SELECT EXTRACT(MONTH FROM fecha) AS mes, count(id_venta) AS ventas_totales
FROM ventas
WHERE EXTRACT(MONTH FROM fecha) = 09 
GROUP BY mes;
-- Obtener el cliente con más compras realizadas.

SELECT id_cliente, COUNT(*) AS total_compras
FROM ventas
GROUP BY id_cliente
ORDER BY total_compras DESC
LIMIT 1;

-- Listar los productos más vendidos

SELECT p.nombre, SUM(dv.cantidad) AS total_vendidos
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.nombre
ORDER BY total_vendidos DESC;

-- Consultar ventas realizadas en un rango de fechas.
SELECT id_venta, fecha
FROM ventas
WHERE fecha BETWEEN '2026-01-01' AND '2026-11-31';
-- Identificar clientes que no han comprado en los últimos 6 meses.
SELECT c.id_cliente, c.nombre
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente AND v.fecha >= NOW() - INTERVAL '6 months'
WHERE v.id_venta IS NULL;