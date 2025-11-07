create database Laboratorio;
go

use Laboratorio;
go

create table Rol(
	Id_Rol int identity(1,1) primary key,
	Nombre_Rol varchar(20) check(Nombre_Rol in ('Investigador', 'Tecnico', 'Supervisor', 'Administrador')) not null
);
go
create table Empleado(
	Id_Empleado int identity(1,1) primary key,
	Primer_Nombre varchar (20) not null,
	Segundo_Nombre varchar(20) null,
	Primer_Apellido varchar (20) not null,
	Segundo_Apellido varchar (20) null,
	Documento varchar (20) unique not null,
	Telefono varchar(20) null,
	correo varchar(50) unique not null,
	Id_Rol int not null,
	foreign key(Id_Rol) references Rol (Id_Rol)
);
go 

create table Equipo(
	Id_Equipo int identity(1,1) primary key,
	Nombre_Equipo varchar (100) not null,
	Estado varchar(50) check (Estado in ('Disponible', 'Mantenimiento', 'Da�ado')) not null,
	Fecha_Ulti_Mantenimiento date not null,
	Fecha_Prox_Mantenimiento date not null
);

go

create table Reactivo(
	Id_Reactivo int identity(1,1) primary key,
	Nombre varchar(100) not null,
	Formula_Quimica varchar (100) not null,
	Fecha_Vencimiento date not null,
	Cantidad decimal(10,2) not null,
	Unidad varchar(10) check(Unidad in ('mg','g', 'kg', 'mL', 'L', 'kl')) not null,
	Precio decimal(10,2) not null
);

go
create table Nanomaterial(
	Id_Nanomaterial int identity (1,1) primary key,
	Nombre varchar (50) not null,
	Tipo varchar(100) not null,
	Descripcion varchar(200) not null
);

go
create table Orden_Sintesis(
	Id_Orden int identity(1,1) primary key,
	Fecha_Creacion date default getdate (),
	Id_Empleado int not null,
	Id_Nanomaterial int not null,
	Estado varchar(50) check(Estado in ('Pendiente', 'Proceso', 'Finalizada', 'Control de calidad', 'Aprobada', 'Rechazada', 'Cancelada')) not null,
	foreign key (Id_Empleado) references Empleado(Id_Empleado),
	foreign key (Id_Nanomaterial) references Nanomaterial(Id_Nanomaterial)
);

go
create table Inventario(
	Id_Inventario int identity(1,1) primary key,
	Id_Reactivo int not null,
	Ubicacion varchar (100) not null,
	Stock_Actual decimal(10,2) not null,
	Stock_Minimo decimal(10,2) not null,
	Fecha_Actualizacion datetime default getdate(),
	foreign key(Id_Reactivo) references Reactivo(Id_Reactivo)

);

go
create table Detalle_Orden_Reactivo(
	Id_Detalle int identity(1,1) primary key,
	Id_Orden int not null,
	Id_Reactivo int not null,
	Cantidad_Usada decimal (10,2) not null,
	Precio_Total decimal(10,2) not null,
	foreign key(Id_Orden) references Orden_Sintesis(Id_Orden),
	foreign key(Id_Reactivo) references Reactivo(Id_Reactivo)
);

go
create table Mantenimiento(
	Id_Mantenimiento int identity(1,1) primary key,
	Id_Equipo int not null,
	Fecha_Mantenimiento date not null,
	Tipo varchar(50) not null, 
	Descripcion varchar(200) not null,
	Id_Empleado int not null,
	foreign key(Id_Equipo) references Equipo(Id_Equipo),
	foreign key (Id_Empleado) references Empleado(Id_Empleado)
);

go
create table Control_Calidad(
	Id_Control int identity(1,1) primary key,
	Id_Orden int not null,
	Fecha_Analisis date default getdate(),
	Resultado varchar(100) not null,
	Aprobado bit default 0,
	foreign key (Id_Orden) references Orden_Sintesis(Id_Orden)
);

go
create table Auditoria_Inventario(
	Id_Auditoria int identity (1,1) primary key,
	Id_Reactivo int not null,
	Fecha_Cambio datetime default getdate(),
	Operacion varchar(50),
	Valor_Anterior decimal (10,2) not null,
	Valor_Nuevo decimal (10,2) not null,
	Id_Empleado int not null,
	foreign key (Id_Empleado) references Empleado (Id_Empleado),
	foreign key (Id_Reactivo) references Reactivo(Id_Reactivo)
);