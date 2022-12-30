create view nombre_mail
as
SELECT client_name, client_email from clients;

create view nombre_dni
as
SELECT client_name, client_dni from clients;

create view id_nombre
as
SELECT client_id, client_name from clients;

create view prod_code_name
as
SELECT prod_code, prod_name from products;

create view prod_name_stock
as
SELECT prod_name, prod_stock from products;