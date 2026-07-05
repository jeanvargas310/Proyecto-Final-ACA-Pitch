-- funciones.sql
-- Aqui vamos a crear la funcion calcular_iva que nos permitira calcular el iva de un producto.
CREATE OR REPLACE FUNCTION calcular_iva(
    p_precio NUMBER -- Recibimos el precio del producto como parametro de entrada
)

RETURN NUMBER

IS

v_total NUMBER; -- Aqui creamos una variable v_total que nos permitira almacenar el precio del producto mas el iva.

BEGIN

v_total := p_precio * 1.19; --Hacemos el calculo del iva multiplicando el precio del producto por 1.19

RETURN v_total; --nos devolvemos el valor de v_total que es el precio del producto mas el iva.

END;
/

--Creamos la funcion aplicar_descuento que nos permitira aplicar un descuento del 10% al precio del producto.
CREATE OR REPLACE FUNCTION aplicar_descuento(

p_precio NUMBER -- Este es el parametro de entrada que nos permitira recibir el precio del producto al que se le aplicara el descuento.

)

RETURN NUMBER --Definimos que la funcion nos devolvera un valor de tipo NUMBER.

IS

v_descuento NUMBER; --Creamos una variable v_descuento que nos permitira almacenar el precio del producto con el descuento aplicado.

BEGIN

v_descuento:=p_precio*0.90;

RETURN v_descuento; --Nos devolvemos el valor de v_descuento que es el precio del producto con el descuento aplicado.

END;
/

--Vamos a crear una funcion que registre clientes

CREATE OR REPLACE PROCEDURE insertar_cliente(

p_id NUMBER,--

p_nombre VARCHAR2,

p_email VARCHAR2,

p_telefono VARCHAR2

)

IS

BEGIN

INSERT INTO clientes

VALUES(

p_id,

p_nombre,

p_email,

p_telefono

);

END;
/