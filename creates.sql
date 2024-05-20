create database db;
use db;

create table cliente(
	id int not null auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    provincia varchar(50),
    localidad varchar(50),
    postal int,
    id_tipo int,
    numero_vendedor int,
    numero_region int,
    comentario varchar(255),
    primary key(id),
    foreign key(id_tipo) references Tipo_cliente(id),
    foreign key(numero_region) references Regiones(id)
);

create table Telefonos_cliente(
	id int not null auto_increment,
    telefono varchar(20),
    id_cliente int,
    primary key(id),
    foreign key(id_cliente) references cliente(id)
);

create table Tipo_cliente(
	id int not null auto_increment,
    desc_tipo varchar(20),
    primary key(id)
);

create table Regiones(
	id int not null auto_increment,
    nombre varchar(50),
    primary key(id)
);

create table Departamento(
	id int not null auto_increment,
    id_region int,
    nombre varchar(50),
    primary key(id),
    foreign key (id_region) references Regiones(id)
);

create table Empleados(
	id int  not null auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    nombre_user varchar(30),
    fecha_ingreso date,
    fecha_egreso date,
    id_departamento int,
    salario float,
    porcentaje_comision float,
    comentario varchar(255),
    primary key(id),
    foreign key(id_departamento) references Departamento(id)
);

create table Productos_almacen(
	id int not null auto_increment,
    id_almacen int,
    id_producto int,
    cantidad_stock int,
    stock_min int,
    stock_max int,
    comentario varchar(255),
    ult_fecha_almacenamiento date,
    primary key(id),
    foreign key(id_almacen) references Almacen(id),
    foreign key(id_producto) references Productos(id)
);

create table Productos(
	id int not null auto_increment,
    descripcion varchar(50),
    desc_corta varchar(30),
    precio float,
    primary key(id)
);

create table Almacen(
	id int not null auto_increment,
    id_region int,
    direccion varchar(50),
    provincia varchar(50),
    localidad varchar(50),
    cod_postal int,
    id_gerente int,
    primary key(id),
    foreign key(id_region) references Regiones(id)
);

create table Telefonos_almacen(
	id int not null auto_increment,
    id_almacen int,
    telefono varchar(20),
    primary key(id),
    foreign key(id_almacen) references Almacen(id)
);

create table Ordenes_pedido(
	id int not null auto_increment,
    id_cliente int,
    id_vendedor int,
    fecha_realizada date,
    fecha_entrega date,
    primary key(id),
    foreign key(id_cliente) references cliente(id)
);

create table Producto_orden(
	id int not null auto_increment,
    id_producto int,
    id_orden int,
    cant_solicitada int,
    primary key(id),
    foreign key(id_producto) references Productos(id),
    foreign key(id_orden) references Ordenes_pedido(id)
);

create table Orden_entrega(
	id int not null auto_increment,
    id_orden int,
    id_cliente int,
    fecha_inicio date,
    fecha_entrega date,
    id_vendedor int,
    monto_total float,
    id_tipo_pago int,
    completada char,
    cantidad_entregar int,
    primary key(id),
    foreign key(id_orden) references Ordenes_pedido(id),
    foreign key(id_cliente)  references cliente(id),
    foreign key(id_tipo_pago) references Tipos_pagos(id)
);

create table Tipos_pagos(
	id int not null auto_increment,
    descripcion varchar(20),
    primary key(id)
);
