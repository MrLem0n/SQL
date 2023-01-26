use mysql;

CREATE USER "prueba@localhost"  IDENTIFIED BY "nuevopassword";


GRANT ALL ON *.* TO "prueba@localhost";

ERROR : 23:42:10	GRANT ALL ON *.* TO "prueba@localhost"	Error Code: 1410. You are not allowed to create a user with GRANT	0.016 sec
