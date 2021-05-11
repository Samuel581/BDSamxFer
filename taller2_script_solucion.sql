--****************************************************
-- Bases de datos: Base de datos de veterinaria
-- Autor: Erick Varela
-- Correspondencia: evarela@uca.edu.sv
-- Version: 1.0

-- IMPORTANTE: 
-- ANTES DE INICIAR: se recomiendo hacer el ejercicio 1 antes de insertar los datos
-- El orden de eventos deber�a ser:
--		1. Crear base de datos y configurar el lenguaje
--		2. Crear tablas
--		3. Hacer ejercicio 1
-- 		4. Insertar datos
--		5. Realizar el resto de ejercicios
-- Se debe llenar este archivo con la soluci�n del taller y subirlo en Moodle
-- Rellenar esta �rea con la secci�n, carnet y nombre de cada integrante
-- Integrante 1: (Ingresar secci�n, carnet y nombre)
-- Integrante 2: (Ingresar secci�n, carnet y nombre)
--****************************************************


-- Creando base de datos y seleccionandola para realizar consultas 
CREATE DATABASE VetManagementDB;	-- Omitir si se esta utilizando https://sqliteonline.com/
USE VetManagementDB; 				-- Omitir si se esta utilizando https://sqliteonline.com/
SET LANGUAGE us_english

-- Tables section.
CREATE TABLE CLIENTE(
	id INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(100),
	direccion VARCHAR(100),
	telefono CHAR(10),
	correo VARCHAR(50)
);

CREATE TABLE VETERINARIO(
	id INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(100),
	salario MONEY,
	fecha_contrato DATE
);

CREATE TABLE RAZA(
	id INT PRIMARY KEY IDENTITY,
	raza VARCHAR(50)
);

CREATE TABLE MASCOTA(
	id INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(50),
	id_cliente INT,
	id_raza INT,
	fecha_nacimiento DATE
);

CREATE TABLE CONSULTA(
	id INT PRIMARY KEY IDENTITY,
	id_mascota INT,
	id_veterinario INT,
	fecha DATE,
	precio MONEY
);

CREATE TABLE MEDICAMENTO(
	id INT PRIMARY KEY IDENTITY,
	nombre VARCHAR(50),
	precio MONEY
);

CREATE TABLE RECETA(
	id_medicamento INT NOT NULL,
	id_consulta INT NOT NULL,
	CONSTRAINT PK_receta PRIMARY KEY (id_medicamento,id_consulta)
);


-- Banco de datos RAZA
INSERT INTO raza VALUES('Jack Russell');
INSERT INTO raza VALUES('pit bull terrier');
INSERT INTO raza VALUES('beagle');
INSERT INTO raza VALUES('Terrier');
INSERT INTO RAZA VALUES('Bulldog');
INSERT INTO RAZA VALUES('Chihuahua');
INSERT INTO RAZA VALUES('Husky');
INSERT INTO RAZA VALUES('Pastor Alem�n');
INSERT INTO RAZA VALUES('Mestizo');

-- Banco de datos VETERINARIO
INSERT INTO VETERINARIO VALUES('Kasimir Bush',1559.00,'2014-09-04');
INSERT INTO VETERINARIO VALUES('Talon Page',1229.00,'2016-08-21');
INSERT INTO VETERINARIO VALUES('Brock Howard',1455.00,'2014-04-08');
INSERT INTO VETERINARIO VALUES('Ericka Kovosky',1300.00,'2015-07-23');

-- Banco de datos CLIENTE
INSERT INTO CLIENTE VALUES('Julie Fleming','Ap #516-3204 Nulla Road','7996-8165','hendrerit@Vivamus.edu');
INSERT INTO CLIENTE VALUES('Avye Wiley','P.O. Box 319, 3154 Ornare Rd.','7683-9474','nisi.magna@enimsitamet.net');
INSERT INTO CLIENTE VALUES('Regan Greene','9943 Tincidunt Ave','7593-2558','Donec@malesuadamalesuada.com');
INSERT INTO CLIENTE VALUES('Karly Charles','P.O. Box 447, 2355 Euismod Rd.','7975-8486','Nam@nulla.com');
INSERT INTO CLIENTE VALUES('Melodie George','P.O. Box 257, 5814 Eu, St.','7298-3505','lobortis.risus.In@diamProin.com');
INSERT INTO CLIENTE VALUES('Dai Oneill','Ap #194-9317 Vel, Rd.','7283-5384','in.dolor.Fusce@vitae.ca');
INSERT INTO CLIENTE VALUES('Mari Cross','480-7023 Aliquet Rd.','7471-3990','pellentesque@Proin.co.uk');
INSERT INTO CLIENTE VALUES('TaShya Simpson','8170 Cursus Av.','7119-9480','risus.varius@velfaucibus.net');
INSERT INTO CLIENTE VALUES('Sonia Woodward','490-6531 Sem. St.','7342-0371','malesuada.fringilla@scelerisque.org');
INSERT INTO CLIENTE VALUES('Sonia Woodward','490-6531 Sem. St.','7342-0371','malesuada.fringilla@scelerisque.org');
INSERT INTO CLIENTE VALUES('Lee Chambers','733-1804 Parturient Avenue','7852-6526','vulputate@Cras.net');

-- Banco de datos MASCOTA
INSERT INTO MASCOTA VALUES('Callum',2,1,'2017-09-10');
INSERT INTO MASCOTA VALUES('Ray',4,7,'2018-05-02');
INSERT INTO MASCOTA VALUES('Dieter',1,3,'2016-10-11');
INSERT INTO MASCOTA VALUES('Malachi',2,9,'2016-11-07');
INSERT INTO MASCOTA VALUES('Rahim',5,6,'2018-04-28');
INSERT INTO MASCOTA VALUES('Ezra',3,9,'2017-06-30');
INSERT INTO MASCOTA VALUES('Gannon',6,7,'2018-11-11');
INSERT INTO MASCOTA VALUES('Griffin',1,6,'2017-02-07');
INSERT INTO MASCOTA VALUES('Francis',3,7,'2016-06-10');
INSERT INTO MASCOTA VALUES('Kareem',7,8,'2017-06-12');
INSERT INTO MASCOTA VALUES('Perry',1,6,'2018-05-23');
INSERT INTO MASCOTA VALUES('Troy',9,4,'2016-07-03');
INSERT INTO MASCOTA VALUES('Mason',2,5,'2018-04-20');
INSERT INTO MASCOTA VALUES('Vance',1,2,'2017-08-04');
INSERT INTO MASCOTA VALUES('Sylvester',4,4,'2017-09-23');
INSERT INTO MASCOTA VALUES('Colton',10,8,'2021-04-03');
INSERT INTO MASCOTA VALUES('Beau',3,8,'2016-03-18');
INSERT INTO MASCOTA VALUES('Ian',5,6,'2020-02-18');
INSERT INTO MASCOTA VALUES('Brenden',6,8,'2016-10-20');
INSERT INTO MASCOTA VALUES('Chancellor',3,7,'2021-01-19');
INSERT INTO MASCOTA VALUES('Hiram',9,6,'2021-01-16');
INSERT INTO MASCOTA VALUES('Kirk',6,3,'2019-12-23');
INSERT INTO MASCOTA VALUES('Denton',2,6,'2021-04-25');
INSERT INTO MASCOTA VALUES('Connor',4,4,'2016-07-04');
INSERT INTO MASCOTA VALUES('Avram',5,8,'2020-11-17');
INSERT INTO MASCOTA VALUES('Chadwick',1,5,'2018-01-11');
INSERT INTO MASCOTA VALUES('Wayne',3,2,'2019-09-09');
INSERT INTO MASCOTA VALUES('Ross',11,9,'2017-09-15');
INSERT INTO MASCOTA VALUES('Aladdin',4,2,'2019-08-28');
INSERT INTO MASCOTA VALUES('Gray',8,3,'2017-01-31');

-- Banco de datos MEDICAMENTO
INSERT INTO MEDICAMENTO VALUES('Aspirina', 8.26);
INSERT INTO MEDICAMENTO VALUES('Bromuros de potasio', 8.34);
INSERT INTO MEDICAMENTO VALUES('Carprofeno', 1.83);
INSERT INTO MEDICAMENTO VALUES('Cloruro de potasio', 2.50);
INSERT INTO MEDICAMENTO VALUES('Diazepam', 1.99);
INSERT INTO MEDICAMENTO VALUES('Digoxina', 22.85);
INSERT INTO MEDICAMENTO VALUES('Enalapril', 17.04);
INSERT INTO MEDICAMENTO VALUES('Fenbendazol', 9.50);
INSERT INTO MEDICAMENTO VALUES('Metronidazol', 8.99);
INSERT INTO MEDICAMENTO VALUES('Piroxicam',7.10);

-- Banco de datos CONSULTA
INSERT INTO CONSULTA VALUES(1,2,'2020-07-28',63.62);
INSERT INTO CONSULTA VALUES(6,3,'2020-11-12',41.23);
INSERT INTO CONSULTA VALUES(22,3,'2020-10-10',83.74);
INSERT INTO CONSULTA VALUES(25,3,'2020-12-15',132.09);
INSERT INTO CONSULTA VALUES(10,4,'2020-11-19',133.11);
INSERT INTO CONSULTA VALUES(4,2,'2020-10-13',81.45);
INSERT INTO CONSULTA VALUES(7,1,'2020-10-04',21.29);
INSERT INTO CONSULTA VALUES(12,4,'2020-08-23',127.91);
INSERT INTO CONSULTA VALUES(5,3,'2020-08-06',15.10);
INSERT INTO CONSULTA VALUES(23,4,'2020-07-07',97.76);
INSERT INTO CONSULTA VALUES(8,1,'2020-10-11',14.78);
INSERT INTO CONSULTA VALUES(8,3,'2020-11-05',74.28);
INSERT INTO CONSULTA VALUES(14,4,'2020-07-24',80.30);
INSERT INTO CONSULTA VALUES(14,4,'2020-08-14',144.82);
INSERT INTO CONSULTA VALUES(1,3,'2020-07-05',100.36);
INSERT INTO CONSULTA VALUES(3,1,'2020-08-07',20.91);
INSERT INTO CONSULTA VALUES(23,4,'2020-07-12',148.99);
INSERT INTO CONSULTA VALUES(26,4,'2020-10-28',90.54);
INSERT INTO CONSULTA VALUES(22,3,'2020-07-04',34.16);
INSERT INTO CONSULTA VALUES(24,3,'2020-11-08',99.85);
INSERT INTO CONSULTA VALUES(6,1,'2020-12-31',85.31);
INSERT INTO CONSULTA VALUES(19,2,'2020-10-06',80.88);
INSERT INTO CONSULTA VALUES(24,1,'2020-11-16',141.51);
INSERT INTO CONSULTA VALUES(19,1,'2020-07-24',145.46);
INSERT INTO CONSULTA VALUES(13,3,'2020-07-18',80.23);
INSERT INTO CONSULTA VALUES(24,3,'2020-09-20',120.80);
INSERT INTO CONSULTA VALUES(25,1,'2020-11-02',26.40);
INSERT INTO CONSULTA VALUES(27,3,'2020-07-07',101.07);
INSERT INTO CONSULTA VALUES(14,4,'2020-07-15',127.84);
INSERT INTO CONSULTA VALUES(16,2,'2020-12-09',85.07);
INSERT INTO CONSULTA VALUES(28,2,'2020-12-13',36.09);
INSERT INTO CONSULTA VALUES(5,1,'2020-08-15',41.64);
INSERT INTO CONSULTA VALUES(30,4,'2020-09-10',113.62);
INSERT INTO CONSULTA VALUES(18,4,'2020-10-28',18.45);
INSERT INTO CONSULTA VALUES(27,4,'2020-09-16',80.53);
INSERT INTO CONSULTA VALUES(6,2,'2020-07-12',16.84);
INSERT INTO CONSULTA VALUES(4,1,'2020-07-26',146.92);
INSERT INTO CONSULTA VALUES(24,2,'2020-11-21',43.60);
INSERT INTO CONSULTA VALUES(21,4,'2020-08-11',53.52);
INSERT INTO CONSULTA VALUES(12,2,'2020-08-27',29.13);
INSERT INTO CONSULTA VALUES(14,3,'2020-08-29',55.26);
INSERT INTO CONSULTA VALUES(4,2,'2020-09-27',135.35);
INSERT INTO CONSULTA VALUES(16,2,'2020-10-24',43.10);
INSERT INTO CONSULTA VALUES(3,3,'2020-07-12',145.88);
INSERT INTO CONSULTA VALUES(20,3,'2020-11-17',22.18);
INSERT INTO CONSULTA VALUES(22,3,'2020-09-01',94.39);
INSERT INTO CONSULTA VALUES(26,4,'2020-09-27',72.95);
INSERT INTO CONSULTA VALUES(12,1,'2020-12-16',91.04);
INSERT INTO CONSULTA VALUES(7,4,'2020-11-16',73.55);
INSERT INTO CONSULTA VALUES(8,3,'2020-08-15',122.85);
INSERT INTO CONSULTA VALUES(16,1,'2020-11-04',132.31);
INSERT INTO CONSULTA VALUES(18,2,'2020-08-28',69.69);
INSERT INTO CONSULTA VALUES(27,3,'2020-10-17',33.87);
INSERT INTO CONSULTA VALUES(20,1,'2020-09-19',123.16);
INSERT INTO CONSULTA VALUES(10,1,'2020-11-04',116.97);
INSERT INTO CONSULTA VALUES(8,1,'2020-09-17',142.45);
INSERT INTO CONSULTA VALUES(25,2,'2020-12-26',53.49);
INSERT INTO CONSULTA VALUES(9,4,'2020-07-11',80.61);
INSERT INTO CONSULTA VALUES(21,1,'2020-09-21',94.87);
INSERT INTO CONSULTA VALUES(4,4,'2020-07-06',88.20);

-- Banco de datos RECETA
INSERT INTO RECETA VALUES (5,2);
INSERT INTO RECETA VALUES (10,52);
INSERT INTO RECETA VALUES (6,25);
INSERT INTO RECETA VALUES (8,29);
INSERT INTO RECETA VALUES (8,35);
INSERT INTO RECETA VALUES (8,3);
INSERT INTO RECETA VALUES (10,53);
INSERT INTO RECETA VALUES (2,36);
INSERT INTO RECETA VALUES (9,1);
INSERT INTO RECETA VALUES (3,19);
INSERT INTO RECETA VALUES (3,50);
INSERT INTO RECETA VALUES (6,22);
INSERT INTO RECETA VALUES (9,60);
INSERT INTO RECETA VALUES (9,21);
INSERT INTO RECETA VALUES (2,46);
INSERT INTO RECETA VALUES (4,30);
INSERT INTO RECETA VALUES (6,48);
INSERT INTO RECETA VALUES (3,10);
INSERT INTO RECETA VALUES (7,45);
INSERT INTO RECETA VALUES (7,17);
INSERT INTO RECETA VALUES (5,9);
INSERT INTO RECETA VALUES (4,26);
INSERT INTO RECETA VALUES (5,47);
INSERT INTO RECETA VALUES (5,43);
INSERT INTO RECETA VALUES (5,58);
INSERT INTO RECETA VALUES (9,24);
INSERT INTO RECETA VALUES (5,21);
INSERT INTO RECETA VALUES (6,31);
INSERT INTO RECETA VALUES (1,15);
INSERT INTO RECETA VALUES (9,48);
INSERT INTO RECETA VALUES (4,11);
INSERT INTO RECETA VALUES (5,4);
INSERT INTO RECETA VALUES (1,24);
INSERT INTO RECETA VALUES (6,41);
INSERT INTO RECETA VALUES (4,43);
INSERT INTO RECETA VALUES (9,28);
INSERT INTO RECETA VALUES (4,50);
INSERT INTO RECETA VALUES (7,8);
INSERT INTO RECETA VALUES (5,14);
INSERT INTO RECETA VALUES (5,13);
INSERT INTO RECETA VALUES (10,58);
INSERT INTO RECETA VALUES (10,43);
INSERT INTO RECETA VALUES (7,16);
INSERT INTO RECETA VALUES (9,51);
INSERT INTO RECETA VALUES (9,18);
INSERT INTO RECETA VALUES (5,24);
INSERT INTO RECETA VALUES (8,25);
INSERT INTO RECETA VALUES (9,29);
INSERT INTO RECETA VALUES (6,51);
INSERT INTO RECETA VALUES (10,40);
INSERT INTO RECETA VALUES (5,31);
INSERT INTO RECETA VALUES (10,42);
INSERT INTO RECETA VALUES (7,48);
INSERT INTO RECETA VALUES (5,40);
INSERT INTO RECETA VALUES (6,26);
INSERT INTO RECETA VALUES (1,46);
INSERT INTO RECETA VALUES (7,41);
INSERT INTO RECETA VALUES (4,1);
INSERT INTO RECETA VALUES (2,58);
INSERT INTO RECETA VALUES (5,23);
INSERT INTO RECETA VALUES (2,24);
INSERT INTO RECETA VALUES (7,31);
INSERT INTO RECETA VALUES (7,23);
INSERT INTO RECETA VALUES (9,7);
INSERT INTO RECETA VALUES (1,2);
INSERT INTO RECETA VALUES (8,57);
INSERT INTO RECETA VALUES (7,6);
INSERT INTO RECETA VALUES (10,15);
INSERT INTO RECETA VALUES (9,19);
INSERT INTO RECETA VALUES (9,14);
INSERT INTO RECETA VALUES (4,46);
INSERT INTO RECETA VALUES (3,57);
INSERT INTO RECETA VALUES (5,17);
INSERT INTO RECETA VALUES (10,36);
INSERT INTO RECETA VALUES (4,48);
INSERT INTO RECETA VALUES (10,20);
INSERT INTO RECETA VALUES (4,55);
INSERT INTO RECETA VALUES (5,27);
INSERT INTO RECETA VALUES (2,20);
INSERT INTO RECETA VALUES (6,45);
INSERT INTO RECETA VALUES (6,1);
INSERT INTO RECETA VALUES (3,41);
INSERT INTO RECETA VALUES (10,19);
INSERT INTO RECETA VALUES (8,32);
INSERT INTO RECETA VALUES (3,51);
INSERT INTO RECETA VALUES (10,21);
INSERT INTO RECETA VALUES (10,24);
INSERT INTO RECETA VALUES (4,3);
INSERT INTO RECETA VALUES (9,15);
INSERT INTO RECETA VALUES (2,44);
INSERT INTO RECETA VALUES (6,53);
INSERT INTO RECETA VALUES (7,49);
INSERT INTO RECETA VALUES (9,31);
INSERT INTO RECETA VALUES (1,53);
INSERT INTO RECETA VALUES (5,6);
INSERT INTO RECETA VALUES (1,20);
INSERT INTO RECETA VALUES (5,20);
INSERT INTO RECETA VALUES (2,53);
INSERT INTO RECETA VALUES (6,11);
INSERT INTO RECETA VALUES (4,53);
INSERT INTO RECETA VALUES (9,2);
INSERT INTO RECETA VALUES (3,25);
INSERT INTO RECETA VALUES (5,3);
INSERT INTO RECETA VALUES (1,21);
INSERT INTO RECETA VALUES (10,32);
INSERT INTO RECETA VALUES (10,23);
INSERT INTO RECETA VALUES (7,30);
INSERT INTO RECETA VALUES (9,40);
INSERT INTO RECETA VALUES (9,56);
INSERT INTO RECETA VALUES (2,54);
INSERT INTO RECETA VALUES (3,46);
INSERT INTO RECETA VALUES (2,25);
INSERT INTO RECETA VALUES (3,3);
INSERT INTO RECETA VALUES (2,45);
INSERT INTO RECETA VALUES (1,55);
INSERT INTO RECETA VALUES (8,39);
INSERT INTO RECETA VALUES (3,24);
INSERT INTO RECETA VALUES (7,21);
INSERT INTO RECETA VALUES (10,22);
INSERT INTO RECETA VALUES (4,33);

--Ejercicio 1. Abrir el archivo. Notar� que NO se encuentra la definici�n de llaves for�neas, 
--por lo que se deben modificar todas las tablas necesarias para que el diagrama quede como en la figura 1. 

ALTER TABLE RECETA ADD FOREIGN KEY (id_medicamento) REFERENCES MEDICAMENTO(id);
ALTER TABLE RECETA ADD FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id);
ALTER TABLE CONSULTA ADD FOREIGN KEY (id_mascota) REFERENCES MASCOTA(id);
ALTER TABLE CONSULTA ADD FOREIGN KEY (id_veterinario) REFERENCES VETERINARIO(id);
ALTER TABLE MASCOTA
ADD CONSTRAINT fk_mascota_cliente
FOREIGN KEY(id_cliente) REFERENCES CLIENTE(id);

ALTER TABLE MASCOTA
ADD CONSTRAINT fk_mascota_raza
FOREIGN KEY(id_raza) REFERENCES RAZA(id);

--Crear el diagrama en SQL Server para asegurar que se ha llegado a la misma soluci�n de la figura 1.

-- Ejercicio 2. Mostrar todas las columnas de la tabla MASCOTA

SELECT id AS 'id mascota', nombre AS 'nombre mascota', id_cliente AS 'fk cliente', id_raza AS 'fk_raza', fecha_nacimiento AS 'fecha nacimiento'
FROM MASCOTA;

-- Ejercicio 3. Mostrar la lista de mascotas con su fecha de nacimiento, el nombre del cliente y la raza. 

SELECT M.nombre AS nombre_mascota, R.raza AS raza_mascota, M.fecha_nacimiento, C.nombre AS nombre_cliente
FROM MASCOTA M, CLIENTE C, RAZA R
WHERE M.id_cliente = C.id 
AND M.id_raza = R.id;

-- Ejercicio 4. Mostrar la lista de mascotas del cliente llamado "Regan Greene". 


SELECT MASCOTA.NOMBRE, CLIENTE.nombre
FROM MASCOTA
INNER JOIN CLIENTE ON MASCOTA.id_cliente=CLIENTE.id
WHERE CLIENTE.nombre LIKE '%Regan Greene%';


-- Ejercicio 5. Mostrar el registro de consultas, incluir el nombre del cliente, la mascota atendida 
-- y el veterinario que realiz� la consulta. 

	SELECT C.id, C.fecha, C.precio, CL.nombre AS 'cliente', M.nombre AS 'mascota atendida',  V.nombre AS 'veterinario'
	FROM CONSULTA C
	INNER JOIN MASCOTA M
	ON M.id = C.id_mascota
	INNER JOIN CLIENTE CL
	ON CL.id = M.id_cliente
	INNER JOIN VETERINARIO V
	ON V.id = C.id_veterinario;

-- Ejercicio 6. Mostrar el registro de consultas realizadas a la mascota llamada "Malachi" del cliente "Avye Wiley". 

-- Ejercicio 7. �Qu� medicina se le ha recetado a "Malachi" en las consultas? 

-- Ejercicio 8. Muestre la lista de consultas de revisi�n, es decir, que no se ha recetado ning�n medicamento. 

-- Ejercicio 9. Muestre la lista de consultas de revisi�n, es decir, que no se ha recetado ning�n medicamento. 
-- Incluya el nombre de la mascota atendida y el veterinario encargado de la revisi�n. 
