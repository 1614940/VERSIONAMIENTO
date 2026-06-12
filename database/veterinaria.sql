CREATE DATABASE IF NOT EXISTS veterinaria;
USE veterinaria;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    rol VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS CLIENTES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    dni VARCHAR(20),
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    especie VARCHAR(50),
    raza VARCHAR(50),
    edad VARCHAR(20),
    sexo VARCHAR(20),
    propietario VARCHAR(100),
    foto VARCHAR(255),
    estado VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS doctores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100),
    especialidad VARCHAR(100),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    horario VARCHAR(100),
    estado VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS operadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255),
    rol VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota VARCHAR(100),
    propietario VARCHAR(100),
    doctor VARCHAR(100),
    fecha VARCHAR(20),
    hora VARCHAR(20),
    motivo VARCHAR(255),
    estado VARCHAR(50),
    costo FLOAT
);

CREATE TABLE IF NOT EXISTS historial_clinico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota VARCHAR(100),
    doctor VARCHAR(100),
    diagnostico TEXT,
    tratamiento TEXT,
    observaciones TEXT,
    peso VARCHAR(20),
    temperatura VARCHAR(20),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nombre, email, password, rol)
VALUES ('Administrador', 'admin@veterinaria.com', '123456', 'admin')
ON DUPLICATE KEY UPDATE nombre = VALUES(nombre), password = VALUES(password), rol = VALUES(rol);
