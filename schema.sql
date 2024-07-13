Create database usuarioadministradorworkbench;
use usuarioadministradorworkbench;
CREATE TABLE registrousuarios(
id INT auto_increment primary key, 
nombre varchar(255), 
apellido Varchar(50),
email VARCHAR(255) UNIQUE, 
password VARCHAR(255), 
fechaNacimiento DATE,
pais VARCHAR(255));
SELECT*from registrousuarios;
create table login(
id int auto_increment primary key, 
email Varchar (50), 
contrasena varchar (50));
insert into login(email, contrasena) values('admin@prueba.com', 'admin');
select* from login;
INSERT INTO registroUsuarios (nombre, apellido, email, password, fechaNacimiento, pais)
VALUES
('Juanita', 'Pérez', 'juan.perez@gmail.com', 'pass', '1985-05-15', 'Argentina'),
('Maríana', 'Gómez', 'maria.gomez@gmail.com', 'pass2', '1990-08-20', 'Bolivia'),
('Carloncho', 'Silva','carlos.silva@gmail.com', 'pass3', '1982-12-01', 'Brasil');

Select * from login;
