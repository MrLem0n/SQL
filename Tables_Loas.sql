-- Crear database (Products,Clientes,Proveedores,Pedido)--

CREATE DATABASE loas_shop;
use loas_shop;

-- Tabla Productos--

CREATE TABLE products (
	prod_id  INT  auto_increment primary key not null,
    prod_code INT not null,
    prod_name VARCHAR(60) not null,
    prod_stock INT not null,
    prod_cat VARCHAR(30)
);

-- Tabla Clientes--

CREATE TABLE clients (
    client_id  INT  auto_increment primary key not null,
    client_name VARCHAR(30) not null,
    client_dni INT not null,
    client_email VARCHAR(50) not null,
    client_address VARCHAR(50) not null,
    client_phone INT not null,
    client_order VARCHAR(50)
);

-- Tabla Proveedores --
CREATE TABLE providers (
    prov_id  INT  auto_increment primary key not null,
    prov_name VARCHAR(30) not null,
    prov_email VARCHAR(50) not null,
    prov_address VARCHAR(50) not null,
    prov_phone INT not null
    
) ;

-- Tabla Pedidos --

CREATE TABLE orders(
    order_id  INT  auto_increment primary key not null,
    order_note VARCHAR(100) not null,
    prod_id INT  not null,
    prod_name VARCHAR(60)  not null,
    prod_qty INT not null,
    client_id INT  not null,
    client_name VARCHAR(30)  not null,
    foreign key (prod_id) references products(prod_id),
    foreign key (client_id) references clients(client_id)
);