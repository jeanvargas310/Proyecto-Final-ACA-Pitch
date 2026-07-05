-- procedimiento para insertar un cliente

CREATE OR REPLACE PROCEDURE insertar_cliente(

    p_id NUMBER,
    p_nombre VARCHAR2,
    p_email VARCHAR2,
    p_telefono VARCHAR2

)

IS

BEGIN

    INSERT INTO clientes(
        id_cli,
        nombre,
        email,
        telefono
    )
    VALUES(
        p_id,
        p_nombre,
        p_email,
        p_telefono
    );

    COMMIT;

END;
/


-- este es el procedimiento para actualizar el stock

CREATE OR REPLACE PROCEDURE actualizar_stock(

    p_producto NUMBER,
    p_cantidad NUMBER

)

IS

BEGIN

    UPDATE productos

    SET stock = stock - p_cantidad

    WHERE id_prod = p_producto;

    COMMIT;

END;
/