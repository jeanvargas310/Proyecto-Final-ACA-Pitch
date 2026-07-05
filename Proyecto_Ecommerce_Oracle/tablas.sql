
--CREACIÓN DE TABLAS
-- TABLA CATEGORIAS

CREATE TABLE categorias (

    id_cat NUMBER PRIMARY KEY,

    nombre_cat VARCHAR2(50) NOT NULL UNIQUE

);



-- TABLA PRODUCTOS

CREATE TABLE productos (

    id_prod NUMBER PRIMARY KEY,

    nombre_prod VARCHAR2(100) NOT NULL,

    precio NUMBER(10,2) NOT NULL CHECK(precio>0),--este Check impide que al registrar el producto el precio sea negativo  

    stock NUMBER DEFAULT 0 CHECK(stock>=0),-- agregamos un stock en lugar de cantidad

    id_cat NUMBER NOT NULL,--id_cat es la clave foranea que hace referencia a la tabla categorias lo que nos permite relacionar cada producto con su categoria correspondiente 

    CONSTRAINT fk_producto_categoria
    FOREIGN KEY(id_cat)
    REFERENCES categorias(id_cat)

);



-- AQUI SE CREATABLA CLIENTES

CREATE TABLE clientes(

    id_cli NUMBER PRIMARY KEY,

    nombre VARCHAR2(100) NOT NULL,

    email VARCHAR2(100) UNIQUE NOT NULL,

    telefono VARCHAR2(20)

);


-- TABLA PEDIDOS

CREATE TABLE pedidos(

    id_ped NUMBER PRIMARY KEY,

    fecha DATE DEFAULT SYSDATE,

    estado VARCHAR2(20)
        DEFAULT 'PENDIENTE',

    id_cli NUMBER NOT NULL,

    CONSTRAINT fk_pedido_cliente

    FOREIGN KEY(id_cli)

    REFERENCES clientes(id_cli)

);


-- TABLA DETALLE PEDIDO

CREATE TABLE detalle_pedido(

    id_det NUMBER PRIMARY KEY,

    id_ped NUMBER NOT NULL,

    id_prod NUMBER NOT NULL,

    cantidad NUMBER NOT NULL CHECK(cantidad>0),

    CONSTRAINT fk_detalle_pedido

        FOREIGN KEY(id_ped)

        REFERENCES pedidos(id_ped),

    CONSTRAINT fk_detalle_producto

        FOREIGN KEY(id_prod)

        REFERENCES productos(id_prod)

);


-- TABLA PAGOS

CREATE TABLE pagos(

    id_pago NUMBER PRIMARY KEY,

    id_ped NUMBER NOT NULL,

    monto NUMBER(10,2) NOT NULL,

    metodo VARCHAR2(20),

    fecha_pago DATE DEFAULT SYSDATE,

    CONSTRAINT fk_pago_pedido

        FOREIGN KEY(id_ped)

        REFERENCES pedidos(id_ped)

);