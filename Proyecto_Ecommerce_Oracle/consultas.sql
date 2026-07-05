
-- Mostramos todos los clientes
 
SELECT *
FROM clientes; 

-- Mostramos todos los productos
SELECT *
FROM productos;

-- Mostramos todas las categorias
SELECT *
FROM categorias;

-- Mostramos el producto más caro
SELECT

MAX(precio) AS producto_mas_caro

FROM productos;

-- Mostramos el producto más barato

SELECT

MIN(precio) AS producto_mas_barato

FROM productos;

-- Mostramos el precio promedio de los productos
SELECT

AVG(precio) AS precio_promedio

FROM productos;


-- JOIN de varias tablas: pedidos con cliente, detalle y producto
SELECT
    c.nombre AS cliente,
    p.id_ped AS pedido_id,
    pr.nombre_prod AS producto,
    dp.cantidad,
    pr.precio,
    (dp.cantidad * pr.precio) AS subtotal
FROM clientes c
JOIN pedidos p ON c.id_cli = p.id_cli
JOIN detalle_pedido dp ON p.id_ped = dp.id_ped
JOIN productos pr ON dp.id_prod = pr.id_prod
ORDER BY p.fecha DESC, c.nombre;

-- WHERE: productos por categoría y rango de precio
SELECT
    pr.id_prod,
    pr.nombre_prod,
    pr.precio,
    c.nombre_cat
FROM productos pr
JOIN categorias c ON pr.id_cat = c.id_cat
WHERE c.nombre_cat = 'Gaming'
  AND pr.precio BETWEEN 500000 AND 3000000
ORDER BY pr.precio ASC;

-- GROUP BY: total de ventas por cliente
SELECT
    c.id_cli,
    c.nombre,
    COUNT(p.id_ped) AS total_pedidos,
    SUM(dp.cantidad * pr.precio) AS valor_total_vendido
FROM clientes c
JOIN pedidos p ON c.id_cli = p.id_cli
JOIN detalle_pedido dp ON p.id_ped = dp.id_ped
JOIN productos pr ON dp.id_prod = pr.id_prod
GROUP BY c.id_cli, c.nombre
ORDER BY valor_total_vendido DESC;

-- HAVING: clientes con más de 2 pedidos
SELECT
    c.id_cli,
    c.nombre,
    COUNT(p.id_ped) AS pedidos_realizados
FROM clientes c
JOIN pedidos p ON c.id_cli = p.id_cli
GROUP BY c.id_cli, c.nombre
HAVING COUNT(p.id_ped) > 2
ORDER BY pedidos_realizados DESC;

-- JOIN y agregación: monto total pagado por método de pago
SELECT
    pay.metodo,
    COUNT(DISTINCT pay.id_ped) AS pedidos_pagados,
    SUM(pay.monto) AS monto_total
FROM pagos pay
JOIN pedidos p ON pay.id_ped = p.id_ped
WHERE p.estado = 'PAGADO'
GROUP BY pay.metodo
HAVING SUM(pay.monto) > 1000000
ORDER BY monto_total DESC;

-- Consulta con múltiples JOIN y filtro en cliente y estado de pedido
SELECT
    c.nombre AS cliente,
    p.id_ped AS pedido_id,
    p.estado,
    pr.nombre_prod,
    dp.cantidad,
    pay.metodo AS metodo_pago
FROM clientes c
JOIN pedidos p ON c.id_cli = p.id_cli
JOIN detalle_pedido dp ON p.id_ped = dp.id_ped
JOIN productos pr ON dp.id_prod = pr.id_prod
LEFT JOIN pagos pay ON p.id_ped = pay.id_ped
WHERE c.nombre LIKE 'M%'
  AND p.estado = 'PAGADO'
ORDER BY c.nombre, p.id_ped;

--Cliente con el mayor gasto total en pedidos
SELECT c.nombre,
       SUM(pa.monto) AS total_gastado
FROM clientes c
INNER JOIN pedidos p
ON c.id_cli=p.id_cli
INNER JOIN pagos pa
ON p.id_ped=pa.id_ped
GROUP BY c.nombre
ORDER BY total_gastado DESC;

--Producto más vendido
SELECT pr.nombre_prod,
       SUM(dp.cantidad) cantidad_vendida
FROM detalle_pedido dp
INNER JOIN productos pr
ON dp.id_prod=pr.id_prod
GROUP BY pr.nombre_prod
ORDER BY cantidad_vendida DESC;