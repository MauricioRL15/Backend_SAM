create database Inventario_2023;
use Inventario_2023;

 create table Tb_Roles(
    id int auto_increment primary key,
    tipo enum('Administrador', 'Director', 'Docente', 'Laboratorista')
    );
    
     insert  into  Tb_Roles (tipo) values
    ('Administrador'),
    ('Director'),
    ('Docente'),
    ('Laboratorista');
    
    create table Tb_UbicacionArea(
    id int auto_increment primary key,
    nombre  varchar(50),
    observaciones varchar(255)
    );
    
    insert  into  Tb_UbicacionArea (nombre, observaciones) values
    ('Laboratorio 1', 'Docencia 1, planta alta'),
    ('Laboratorio 2', 'Docencia 1, planta alta'),
    ('Laboratorio 3', 'Docencia 1, planta alta'),
    ('Laboratorio 4', 'Pesado 2'),
    ('Laboratorio 5', 'Pesado 2'),
    ('Laboratorio 6', 'Docencia 1, planta baja'),
    ('TIC', 'Docencia 1, planta alta');
    
    create table Tb_Trabajadores(
    id int auto_increment primary key,
    nombre varchar(25),
    apellidos varchar(40),
    numero_trabajador int,
    id_area int,
    estatus boolean,
    foreign key (id_area) references Tb_UbicacionArea (id)
    );
    
     insert into Tb_Trabajadores (nombre, apellidos, numero_trabajador, id_area, estatus) values
    ('Hector', 'Gonzalez Valderrabano', 276353, 7, true),
    ('Ivan Eduardo', 'Garcia Quintero', 764135, 7, true),
    ('Marco', 'Hernandez Gonzalez', 654190, 3, true),
    ('Almayaret', 'Sanchez Lopez', 864703, 1, true),
    ('Elizabeth', 'Mendez Santos', 836543, 5, true),
    ('Eduardo', 'Vite Ramirez', 752148, 7, true);
    
    
    create table Tb_Usuarios(
    id int auto_increment primary key,
    id_rol int,
    usuario varchar(10),
    contraseña varchar(50),
    id_trabajador int,
    estatus boolean,
    foreign key (id_rol) references Tb_Roles (id),
    foreign key (id_trabajador) references Tb_Trabajadores (id)
    );
    
     insert into Tb_Usuarios (id_rol, usuario, contraseña, id_trabajador, estatus) values
    (3, 'HEGV', '12345', 1, true),
    (4, 'MAHG', '12345', 3, true);
    
	create table Tb_Inventariado(
    id int auto_increment primary key,
    numero_serie varchar(25),
    descripcion varchar(255),
    marca varchar(20),
    color varchar(10),
    observaciones varchar(255),
    numero_etiqueta int,
    tipo enum('EquipoComputo','Mobiliario', 'Cosumible'),
    estatus boolean
    );
    
     insert into Tb_Inventariado (numero_serie, descripcion, marca, color, observaciones, numero_etiqueta, tipo, estatus) values
    ('GGRRYYH643464', 'PCAIO', 'Lenovo', 'Negro', 'NULL', 11, 'EquipoComputo', true),
    ('KJHGTYUKNBGTG', 'Mouse', 'Logitech', 'Negro', 'NULL', 11, 'EquipoComputo', true);
    
    
    create table Tb_Resguardos(
    id_usuario int,
    id_recurso int,
    foreign key (id_usuario) references Tb_Usuarios (id),
    foreign key (id_recurso) references Tb_Inventariado (id)
    );
    
      insert into Tb_Resguardos (id_usuario, id_recurso) values
    (1,1),
    (1,2);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    