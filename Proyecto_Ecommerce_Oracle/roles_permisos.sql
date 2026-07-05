
-- Definición de roles y permisos de la aplicación.

--Vamos a crear un rol llamado "rol_vendedor" que tendrá permisos específicos para realizar operaciones en la base de datos relacionadas con la gestión de productos, pedidos y clientes.

-- Creamos un rol

CREATE ROLE rol_vendedor;

-- Le damos permisos para el rol

GRANT CREATE SESSION TO rol_vendedor;

GRANT SELECT, INSERT, UPDATE -- Permisos para gestionar productos
ON productos
TO rol_vendedor;

GRANT SELECT, INSERT -- Permisos para gestionar pedidos
ON pedidos
TO rol_vendedor;

GRANT SELECT -- Y los permisos para gestionar clientes
ON clientes
TO rol_vendedor;

-- Asignar el rol al usuario

GRANT rol_vendedor TO ecommerce_admin;-- le asignamos el rol al usuario ecommerce_admin, lo que le permitirá realizar las operaciones definidas en el rol.

--En el rol_vendedor, se le asignaron los permisos necesarios para la gestion de productos,
-- no se le permitio eliminar productos, ni modificar la estructura de la base de datos,
-- ya que esto podria afectar la integridad de la base de datos.