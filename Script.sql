create database SIV;
use SIV;

create table Proveedores(
	id_proveedor int primary key,
    nombre_proveedor varchar(20),
    direccion_proveedor varchar(50),
    email_proveedor varchar(80),
    telefono_proveedor int
)ENGINE = InnoDB DEFAULT CHARSET=latin1;

create table Productos(
	id_producto int primary key,
    -- foranea
    id_proveedor int,
    nombre_producto varchar (100),
    
    foreign key (id_producto) references Proveedores (id_proveedor)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table Entradas(
	id_entrada int primary key,
    -- foranea
    id_producto int,
    cantidad_entrada int,
    fecha_entrada date,
    
    foreign key	(id_producto) references Productos (id_producto)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table Salidas(
	id_salida int primary key,
    
    -- foranea
    id_producto int,
    cantidad_salida int,
    fecha_salida date,
    
    foreign key (id_producto) references Productos(id_producto)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


create table Stock(
	id_stock int primary key,
    -- foranea
    id_producto int,
    cantidad_actual int,
    
    foreign key (id_producto) references Productos(id_producto)
    
)ENGINE=InnoDB DEFAULT CHARSET=latin1;