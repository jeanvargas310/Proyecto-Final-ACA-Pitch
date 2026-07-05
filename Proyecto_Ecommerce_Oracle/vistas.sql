 --VISTAS

CREATE OR REPLACE VIEW vw_pedidos_clientes AS --cambiamos el JOIN por SELECT para que nos muestre todos los pedidos y los clientes correspondientes, incluso si no hay coincidencias en la tabla clientes.

SELECT

p.id_ped,

c.nombre,

p.fecha,

p.estado

FROM pedidos p

INNER JOIN clientes c

ON p.id_cli=c.id_cli;