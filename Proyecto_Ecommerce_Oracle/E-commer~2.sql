--Creamos el usaurio Admin
CREATE USER ecommerce_admin
IDENTIFIED BY Admin123;

---------------------------------------------

--Damos los permisos de Administrador
GRANT CREATE SESSION TO ecommerce_admin;

GRANT CONNECT, RESOURCE TO ecommerce_admin;

ALTER USER ecommerce_admin
QUOTA UNLIMITED ON USERS;


SELECT USER FROM dual;

GRANT DBA TO ecommerce_admin;




