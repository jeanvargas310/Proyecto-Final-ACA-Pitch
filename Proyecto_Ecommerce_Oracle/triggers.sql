--Vamos a crear un trigger que se ejecute después de insertar un registro en la tabla pagos, y que actualice el estado del pedido correspondiente a 'PAGADO' en la tabla pedidos.
CREATE OR REPLACE TRIGGER trg_actualizar_estado

AFTER INSERT

ON pagos

FOR EACH ROW 

BEGIN

UPDATE pedidos -- Actualizamos el estado del pedido correspondiente a 'PAGADO' en la tabla pedidos.

SET estado='PAGADO'

WHERE id_ped=:NEW.id_ped;-- NEW hace referencia al registro que se acaba de insertar en la tabla pagos, y nos permite acceder a los valores de las columnas de ese registro.

END;
/