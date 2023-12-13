-- Tabla T_producto
CREATE TABLE T_producto (
    id_producto nvarchar(50) PRIMARY KEY,
    nombre_producto nvarchar(50),
    tipo_producto nvarchar(50)
);

-- Tabla D_sucursal
CREATE TABLE D_sucursal (
    id_sucursal int PRIMARY KEY,
    nombre_sucursal nvarchar(50) ,
    nombre_region nvarchar(50) ,
    nombre_comuna nvarchar(50) ,
    nombre_ciudad nvarchar(50) 
);

-- Tabla D_cliente
CREATE TABLE D_cliente (
    id_cliente nvarchar(50) PRIMARY KEY,
    nombre_cliente nvarchar(50),
    edad int ,
    estado_civil nvarchar(50)
);

-- Tabla D_vendedor
CREATE TABLE D_vendedor (
    id_vendedor int PRIMARY KEY,
    nombre_vendedor nvarchar(50),
    tipo_capacitacion nvarchar(50) ,
    horas_capacitacion int 
);

-- Tabla D_tiempo
CREATE TABLE D_tiempo (
    id_tiempo nvarchar(50) PRIMARY KEY,
    mes int,
    año int 
);
