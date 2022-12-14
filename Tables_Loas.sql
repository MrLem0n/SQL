-- Crear database ()--

CREATE DATABASE Loas_shop_Lisandro_Martin;
use Loas_shop_Lisandro_Martin;

-- Tabla Productos--

CREATE TABLE Products (
	prod_id  INT  auto_increment primary key not null,
    prod_code INT not null,
    prod_name VARCHAR(60) not null,
    prod_stock INT not null,
    prod_cat VARCHAR(30)
);

-- Tabla Clientes--

CREATE TABLE Clients (
    client_id  INT  auto_increment primary key not null,
    client_name VARCHAR(30) not null,
    client_DNI INT not null,
    client_email VARCHAR(50) not null,
    client_address VARCHAR(50) not null,
    client_phone INT not null,
    client_order VARCHAR(50)
);

-- Tabla Proveedores --
CREATE TABLE Providers (
    prov_id  INT  auto_increment primary key not null,
    prov_name VARCHAR(30) not null,
    prov_email VARCHAR(50) not null,
    prov_address VARCHAR(50) not null,
    prov_phone INT not null
    
);

-- Tabla Pedidos --

CREATE TABLE Orders(
    order_id  INT  auto_increment primary key not null,
    order_note VARCHAR(100) not null,
    prod_id INT  not null,
    prod_name VARCHAR(60)  not null,
    prod_qty INT not null,
    client_id INT  not null,
    client_name VARCHAR(30)  not null,
    foreign key (prod_id) references products(prod_id),
    foreign key (prod_name) references products(prod_name),
    foreign key (client_id) references clients(client_id),
    foreign key (client_name) references clients(client_name)
);