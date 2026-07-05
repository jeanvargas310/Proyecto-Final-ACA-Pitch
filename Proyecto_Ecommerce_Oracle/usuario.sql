-- Crear un usuario

CREATE USER Prueba123
IDENTIFIED BY Admin1234;

-- Permisos básicos para el usuario admin

GRANT CREATE SESSION TO Prueba123;

GRANT CONNECT, RESOURCE TO Prueba123;

ALTER USER Prueba123
QUOTA UNLIMITED ON USERS;