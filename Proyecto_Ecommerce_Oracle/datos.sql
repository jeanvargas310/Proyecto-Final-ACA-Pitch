
--Aqui creamos las categorias
INSERT INTO categorias VALUES (1, 'Computadores');
INSERT INTO categorias VALUES (2, 'Celulares');
INSERT INTO categorias VALUES (3, 'Componentes');
INSERT INTO categorias VALUES (4, 'Periféricos');
INSERT INTO categorias VALUES (5, 'Monitores');
INSERT INTO categorias VALUES (6, 'Almacenamiento');
INSERT INTO categorias VALUES (7, 'Audio');
INSERT INTO categorias VALUES (8, 'Gaming');
INSERT INTO categorias VALUES (9, 'Redes');
INSERT INTO categorias VALUES (10, 'Accesorios');
INSERT INTO categorias VALUES (11, 'Impresoras');
INSERT INTO categorias VALUES (12, 'Software');
INSERT INTO categorias VALUES (13, 'Cámaras');
INSERT INTO categorias VALUES (14, 'Hogar');
INSERT INTO categorias VALUES (15, 'Wearables');


--Aqui se crean los productos
INSERT INTO productos
VALUES (1,'Ryzen 7 5700G',850000,15,3); 

INSERT INTO productos
VALUES (2,'RTX 5060 ASUS TUF',2100000,8,3);

INSERT INTO productos
VALUES (3,'SSD Kingston 1TB',320000,20,6);

INSERT INTO productos
VALUES (4,'Monitor LG 27"',890000,10,5);

INSERT INTO productos
VALUES (5,'Mouse Logitech G502',210000,25,4);

INSERT INTO productos
VALUES (6,'Teclado Mecánico Redragon',180000,18,4);

INSERT INTO productos
VALUES (7,'Laptop ASUS TUF A15',4200000,5,1);

INSERT INTO productos
VALUES (8,'iPhone 15',4300000,7,2);

INSERT INTO productos
VALUES (9,'Router TP-Link AX3000',350000,14,9);

INSERT INTO productos
VALUES (10,'Audífonos HyperX Cloud II',390000,12,7);

INSERT INTO productos
VALUES (11,'Impresora HP LaserJet',650000,7,11);

INSERT INTO productos
VALUES (12,'Office 365 Suscripción',180000,100,12);

INSERT INTO productos
VALUES (13,'Cámara GoPro Hero 12',1500000,9,13);

INSERT INTO productos
VALUES (14,'Smart TV Samsung 50"',2200000,6,14);

INSERT INTO productos
VALUES (15,'Pulsera Fitbit Charge 6',520000,14,15);

INSERT INTO productos
VALUES (16,'Tablet Samsung Galaxy Tab S9',1900000,8,1);

INSERT INTO productos
VALUES (17,'Disco Duro WD 2TB',420000,22,6);

INSERT INTO productos
VALUES (18,'Webcam Logitech C920',350000,30,4);

INSERT INTO productos
VALUES (19,'Teclado inalámbrico Microsoft',240000,18,4);

INSERT INTO productos
VALUES (20,'Audífonos Bose QuietComfort',1800000,11,7);


--Se crean los clientes

INSERT INTO clientes
VALUES (1,'Jean Victor Vargas','jean@email.com','3001112233');

INSERT INTO clientes
VALUES (2,'Laura Gómez','laura@email.com','3012223344');

INSERT INTO clientes
VALUES (3,'Carlos Ruiz','carlos@email.com','3023334455');

INSERT INTO clientes
VALUES (4,'Andrea Pérez','andrea@email.com','3034445566');

INSERT INTO clientes
VALUES (5,'Miguel Torres','miguel@email.com','3045556677');

INSERT INTO clientes
VALUES (6,'Sofía Martínez','sofia@email.com','3056667788');

INSERT INTO clientes
VALUES (7,'Daniela Rojas','daniela@email.com','3067778899');

INSERT INTO clientes
VALUES (8,'Andrés Fernández','andres@email.com','3078889900');

INSERT INTO clientes
VALUES (9,'Valentina Castillo','valentina@email.com','3089990011');

INSERT INTO clientes
VALUES (10,'Ricardo Salazar','ricardo@email.com','3090001122');

INSERT INTO clientes
VALUES (11,'Paula Morales','paula@email.com','3101112233');

INSERT INTO clientes
VALUES (12,'Fernando López','fernando@email.com','3112223344');

INSERT INTO clientes
VALUES (13,'Natalia Sánchez','natalia@email.com','3123334455');

INSERT INTO clientes
VALUES (14,'Miguel Ángel','miguelangel@email.com','3134445566');

INSERT INTO clientes
VALUES (15,'Camila Rivera','camila@email.com','3145556677');




--Registro de pedidos
INSERT INTO pedidos VALUES (1, SYSDATE-10, 'PAGADO', 1);--Sysdate-10 significa que el pedido se hizo hace 10 dias
INSERT INTO pedidos VALUES (2, SYSDATE-9, 'PAGADO', 2);
INSERT INTO pedidos VALUES (3, SYSDATE-8, 'PAGADO', 3);
INSERT INTO pedidos VALUES (4, SYSDATE-7, 'PAGADO', 4);
INSERT INTO pedidos VALUES (5, SYSDATE-6, 'PAGADO', 5);
INSERT INTO pedidos VALUES (6, SYSDATE-5, 'PAGADO', 1);
INSERT INTO pedidos VALUES (7, SYSDATE-4, 'PAGADO', 2);
INSERT INTO pedidos VALUES (8, SYSDATE-3, 'PAGADO', 3);
INSERT INTO pedidos VALUES (9, SYSDATE-2, 'PAGADO', 4);
INSERT INTO pedidos VALUES (10, SYSDATE-2, 'PAGADO', 6);
INSERT INTO pedidos VALUES (11, SYSDATE-1, 'PAGADO', 7);
INSERT INTO pedidos VALUES (12, SYSDATE-1, 'PAGADO', 8);
INSERT INTO pedidos VALUES (13, SYSDATE-1, 'PAGADO', 9);
INSERT INTO pedidos VALUES (14, SYSDATE, 'PAGADO', 10);
INSERT INTO pedidos VALUES (15, SYSDATE, 'PAGADO', 11);
INSERT INTO pedidos VALUES (16, SYSDATE, 'PAGADO', 12);
INSERT INTO pedidos VALUES (17, SYSDATE-11, 'PAGADO', 13);
INSERT INTO pedidos VALUES (18, SYSDATE-12, 'PAGADO', 14);
INSERT INTO pedidos VALUES (19, SYSDATE-13, 'PAGADO', 15);
INSERT INTO pedidos VALUES (20, SYSDATE-14, 'PAGADO', 1);



--detalle de los pedidos
INSERT INTO detalle_pedido VALUES (1,1,1,1);--values (id_detalle, id_pedido, id_producto, cantidad)
INSERT INTO detalle_pedido VALUES (2,1,2,1);

INSERT INTO detalle_pedido VALUES (3,2,4,2);

INSERT INTO detalle_pedido VALUES (4,3,5,1);
INSERT INTO detalle_pedido VALUES (5,3,6,1);

INSERT INTO detalle_pedido VALUES (6,4,8,1);

INSERT INTO detalle_pedido VALUES (7,5,3,2);
INSERT INTO detalle_pedido VALUES (8,5,9,1);

INSERT INTO detalle_pedido VALUES (9,6,7,1);

INSERT INTO detalle_pedido VALUES (10,7,10,2);
INSERT INTO detalle_pedido VALUES (11,8,1,1);

INSERT INTO detalle_pedido VALUES (12,9,11,1);
INSERT INTO detalle_pedido VALUES (13,9,1,1);

INSERT INTO detalle_pedido VALUES (14,10,12,1);

INSERT INTO detalle_pedido VALUES (15,11,2,1);
INSERT INTO detalle_pedido VALUES (16,11,15,1);

INSERT INTO detalle_pedido VALUES (17,12,3,1);
INSERT INTO detalle_pedido VALUES (18,12,18,1);

INSERT INTO detalle_pedido VALUES (19,13,4,1);
INSERT INTO detalle_pedido VALUES (20,13,20,1);

INSERT INTO detalle_pedido VALUES (21,14,5,2);

INSERT INTO detalle_pedido VALUES (22,15,6,1);
INSERT INTO detalle_pedido VALUES (23,15,7,1);

INSERT INTO detalle_pedido VALUES (24,16,8,1);
INSERT INTO detalle_pedido VALUES (25,16,9,1);

INSERT INTO detalle_pedido VALUES (26,17,13,1);
INSERT INTO detalle_pedido VALUES (27,17,14,1);

INSERT INTO detalle_pedido VALUES (28,18,16,1);
INSERT INTO detalle_pedido VALUES (29,18,17,2);

INSERT INTO detalle_pedido VALUES (30,19,19,1);
INSERT INTO detalle_pedido VALUES (31,19,11,1);

INSERT INTO detalle_pedido VALUES (32,20,10,2);
INSERT INTO detalle_pedido VALUES (33,20,12,1);

INSERT INTO detalle_pedido VALUES (34,14,18,1);
INSERT INTO detalle_pedido VALUES (35,15,20,1);



-- Registro de pagos
INSERT INTO pagos VALUES (1,1,2950000,'Tarjeta',SYSDATE-10);--values (id_pago, id_pedido, monto, metodo de pago, fecha_pago)
INSERT INTO pagos VALUES (2,2,1780000,'Nequi',SYSDATE-9);
INSERT INTO pagos VALUES (3,3,390000,'Efectivo',SYSDATE-8);
INSERT INTO pagos VALUES (4,5,670000,'PSE',SYSDATE-6);
INSERT INTO pagos VALUES (5,7,780000,'Tarjeta',SYSDATE-4);
INSERT INTO pagos VALUES (6,4,4200000,'Tarjeta',SYSDATE-7);
INSERT INTO pagos VALUES (7,6,4200000,'Nequi',SYSDATE-5);
INSERT INTO pagos VALUES (8,8,850000,'Efectivo',SYSDATE-3);
INSERT INTO pagos VALUES (9,9,1300000,'Tarjeta',SYSDATE-2);
INSERT INTO pagos VALUES (10,10,180000,'PSE',SYSDATE-2);
INSERT INTO pagos VALUES (11,11,2620000,'Nequi',SYSDATE-1);
INSERT INTO pagos VALUES (12,12,670000,'Tarjeta',SYSDATE-1);
INSERT INTO pagos VALUES (13,13,4100000,'Nequi',SYSDATE-1);
INSERT INTO pagos VALUES (14,14,4200000,'Tarjeta',SYSDATE);
INSERT INTO pagos VALUES (15,15,4620000,'Efectivo',SYSDATE);
INSERT INTO pagos VALUES (16,16,808000,'Tarjeta',SYSDATE);
INSERT INTO pagos VALUES (17,17,3700000,'PSE',SYSDATE-11);
INSERT INTO pagos VALUES (18,18,1300000,'Tarjeta',SYSDATE-12);
INSERT INTO pagos VALUES (19,19,2450000,'Nequi',SYSDATE-13);
INSERT INTO pagos VALUES (20,20,3900000,'Tarjeta',SYSDATE-14);