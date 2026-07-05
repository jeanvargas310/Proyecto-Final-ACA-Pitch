--SE crean los indices para optimizar las consultas en la base de datos

-- indice para búsquedas por nombre del producto

CREATE INDEX idx_nombre_producto
ON productos(nombre_prod);


-- indice para búsquedas por correo

CREATE INDEX idx_email_cliente
ON clientes(email);


-- indice para la fecha de pedidos

CREATE INDEX idx_fecha_pedido
ON pedidos(fecha);


-- indice para el método de pago

CREATE INDEX idx_metodo_pago
ON pagos(metodo);