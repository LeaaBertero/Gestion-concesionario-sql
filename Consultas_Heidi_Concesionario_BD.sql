sys/*Consultas de todos los datos de cada una de las entidades*/

SELECT * FROM autos;
SELECT * FROM color;
SELECT * FROM concesionario;
SELECT * FROM localidades;
SELECT * FROM marcas;
SELECT * FROM modelos;
SELECT * FROM provincias;
SELECT * FROM sucursales;

/*Consultas ejemplo*/
SELECT Nombre FROM localidades;
SELECT Cp FROM localidades;
/*Consultas ejemplo*/

/*Ingreso de datos de la entidad - Provincias*/
INSERT INTO provincias (Nombre) VALUES ('Buenos Aires');
INSERT INTO provincias (Nombre) VALUES ('Catamarca');
INSERT INTO provincias (Nombre) VALUES ('Chaco');
INSERT INTO provincias (Nombre) VALUES ('Chubut');
INSERT INTO provincias (Nombre) VALUES ('Córdoba');
INSERT INTO provincias (Nombre) VALUES ('Corrientes');
INSERT INTO provincias (Nombre) VALUES ('Entre Rios');
INSERT INTO provincias (Nombre) VALUES ('Formosa');
INSERT INTO provincias (Nombre) VALUES ('Jujuy');
INSERT INTO provincias (Nombre) VALUES ('La Pampa');
INSERT INTO provincias (Nombre) VALUES ('La Rioja');
INSERT INTO provincias (Nombre) VALUES ('Mendoza');
INSERT INTO provincias (Nombre) VALUES ('Misiones');
INSERT INTO provincias (Nombre) VALUES ('Neuquén');
INSERT INTO provincias (Nombre) VALUES ('Rio Negro');
INSERT INTO provincias (Nombre) VALUES ('Salta');
INSERT INTO provincias (Nombre) VALUES ('San Juan');
INSERT INTO provincias (Nombre) VALUES ('San Luis');
INSERT INTO provincias (Nombre) VALUES ('Santa Cruz');
INSERT INTO provincias (Nombre) VALUES ('Santa Fe');
INSERT INTO provincias (Nombre) VALUES ('Santiago del Estero');
INSERT INTO provincias (Nombre) VALUES ('Tierra del Fuego, Antártida e Islas del Atlantico Sur');
INSERT INTO provincias (Nombre) VALUES ('Tucumán');

/*Ordenamieto de datos de la entodad Provincia*/
SELECT * FROM provincias ORDER BY (Nombre) ASC;
SELECT * FROM provincias ORDER BY Nombre DESC;


/*Ingreso de datos de la Entidad - Marcas*/
INSERT INTO marcas (Nombre) VALUES ('Ford');
INSERT INTO marcas (Nombre) VALUES ('Fiat');
INSERT INTO marcas (Nombre) VALUES ('Renault');
INSERT INTO marcas (Nombre) VALUES ('Chevrolet');
INSERT INTO marcas (Nombre) VALUES ('Peugeot');
INSERT INTO marcas (Nombre) VALUES ('Toyota');

/*Ingreso de datos de la entidad Color*/
INSERT INTO color (Nombre) VALUES ('Rojo Bermellón');
INSERT INTO color (Nombre) VALUES ('Azul francia');
INSERT INTO color (Nombre) VALUES ('Negro azabache');
INSERT INTO color (Nombre) VALUES ('Gris plata');
INSERT INTO color (Nombre) VALUES ('Verde grava');
INSERT INTO color (Nombre) VALUES ('Blanco tiza');

/*Ingreso de datos Localidades*/
INSERT INTO localidades (Nombre, Cp) VALUES ('La Calera','X5151ABC');
INSERT INTO localidades (Nombre, Cp) VALUES ('Villa Carlos Paz', 'X5152CBA');
INSERT INTO localidades (Nombre, Cp) VALUES ('Río Tercero','X5850ACV');
INSERT INTO localidades (Nombre, Cp) VALUES ('Cosquín','X5166BCA');
INSERT INTO localidades (Nombre, Cp) VALUES ('Capilla del Monte','X5184JPG');
INSERT INTO localidades (Nombre, Cp) VALUES ('Villa Allende','X5105GBA');

/*Ingreso de datos entidad Concesionario*/
INSERT INTO concesionario (Nombre, Cuit) VALUES ('Automotors ITSC','30545334546');

/*Ingreso de datos - Entidad Modelo*/
INSERT INTO modelos (Detalle, Precio) VALUES ('Ford Ecosport',1000000);
INSERT INTO modelos (Detalle, Precio) VALUES ('Fiat Cronos', 2000000);
INSERT INTO modelos (Detalle, Precio) VALUES ('Renault Duster', 3000000);
INSERT INTO modelos (Detalle, precio) VALUES ('Chevrolet Cruze', 3500000);
INSERT INTO modelos (Detalle, Precio) VALUES ('Peugeot 208', 4000000);
INSERT INTO modelos (Detalle, Precio) VALUES ('Toyota Jarys', 5000000);

/*Ingreso de datos - Entidad Sucursales*/
INSERT INTO sucursales (Nombre, Domicilio, Telefono, Email, IdLocalidad) VALUES 
('Automotores Cosquín', 'Av.San Martín 2530', '03541-458110', 'Cosquín@automotrsitsc.com.ar' ,4);

ALTER TABLE sucursales CHANGE `E-mail` Email VARCHAR (100);
DESCRIBE sucursales;

INSERT INTO sucursales (Nombre, Domicilio, Telefono, Email, IdLocalidad) VALUES 
('Automotores Rio Tercero', 'Av.Vélez Sarsfield 1260', '03571-412211', 'rio3@automotrsitsc.com.ar', 3);

/*Ingreso de datos - Entidad Autos*/
INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms) 
VALUES ('ABD1478624', '123456789', 'AA123BB', 2021, 77375); /*Actualizar IdCorrespondiente*/

/*Actualización IdAuto = 1 --> (IdSucursal -- IdColor -- IdModelo)*/
UPDATE Autos SET IdSucursal = 1, IdColor = 6, IdModelo = 6 WHERE IdAuto = 1;

/*Actualización de la entidad - MODELOS*/
UPDATE modelos SET Precio = Precio * 1.10;

/*Actualizacion entidad -  SUCURSALES*/
UPDATE sucursales SET Email = 'infocosquin@automotrsitsc.com.ar' WHERE IdSucursal = 1; 
UPDATE sucursales SET Email = 'infor3@automotrsitsc.com.ar' WHERE IdSucursal = 2;

/*Actualización entidad - COLOR*/
UPDATE Color SET Nombre = 'Blanco Marmol' WHERE IdColor = 6; 
UPDATE color SET Nombre = 'Rojo Sangre' WHERE IdColor = 1;
UPDATE color SET Nombre = 'Gris grafito' WHERE IdColor = 4;

/*Actualizacion Entidad - MODELOS (Precios) */
UPDATE modelos SET Precio = 1500000 WHERE IdModelo = 1;
UPDATE modelos SET Precio = 2350000 WHERE IdModelo = 2;
UPDATE modelos SET Precio = 3175500 WHERE IdModelo = 3;
UPDATE modelos SET Precio = 3250550 WHERE IdModelo = 4;
UPDATE modelos SET Precio = 3850000 WHERE IdModelo = 5;
UPDATE modelos SET Precio = 4775600 WHERE IdModelo = 6;


INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms, IdSucursal, IdColor, IdModelo) 
VALUES ('258AVG6685', '987456321', 'BB321AA' ,2017 ,82020, 1, 5, 2);

INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms, IdSucursal, IdColor, IdModelo) 
VALUES ('369ERT2593', '321456987', 'CC213AB',2019, 62370, 2, 2, 5);

INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms, IdSucursal, IdColor, IdModelo) 
VALUES ('654POI789S', '369258147', 'DD312BA', 2018, 104375, 1, 1, 3);

/*Auto agregado*/
INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms, IdSucursal, IdColor, IdModelo)
VALUES ('LKJ741POI8', '159357456', 'EE132AA', 2019, 75180, 2, 3, 1);

INSERT INTO autos (NroChasis, NroMotor, Dominio, Anio, Kms, IdSucursal, IdColor, IdModelo)
VALUES ('MNB543098F', '741852963', 'FF231BB', 2019, 75180, 2, 4, 4); 


/*--------------------------------------------------------------------------------------------------------*/



/* --- NUEVAS CONSULTAS  - (Modo Práctica) - Entidad Modelos */
SELECT detalle FROM modelos;

/*consulta nombre y precio de cada modelo de los autos*/
SELECT detalle, precio FROM modelos;

/*Consulta select entidad Autos (Dominio, Anio, Kms) */
SELECT dominio, anio, kms FROM autos;

SELECT domicilio, telefono, email, nombre FROM sucursales;

SELECT * FROM modelos;

/*Consulta que no modifica los datos ingresados
- aparecen como resultado de la vista generada por SELECT*/
SELECT detalle, precio * 1.21 FROM modelos;

SELECT detalle, precio, precio * 1.21 AS 'precio C/IVA' FROM modelos;

SELECT detalle, precio FROM modelos WHERE precio < 3000000;

SELECT dominio, kms, anio FROM autos WHERE anio > 2018;

SELECT dominio, Anio FROM autos WHERE kms <= 75000;

SELECT detalle, precio FROM modelos WHERE IdMarca = 'Toyota';  /*Consultar bien como es la sintaxis*/

DELETE FROM modelos WHERE IdModelo = 3; /*Delete Renault*/

DELETE FROM modelos WHERE precio < 2000000;

DELETE FROM autos WHERE (2026 - Anio) > 6;

SELECT detalle, precio FROM modelos 
WHERE precio >= 2000000 AND precio <= 3500000;

SELECT dominio, anio, kms FROM autos WHERE anio >= 2020 OR anio <= 2018;

/*Actualizacón entidad localidades (IDLocalidad)*/

UPDATE localidades 
SET IdProvincia = 4 
WHERE Nombre IN ('La Calera', 'Villa Carlos Paz', 'Río Tercero', 'Cosquín', 'Capilla del Monte', 'Villa Allende');


/*Consultas select --Concesionario a modo de practica*/


SELECT L.Nombre AS Localidad, L.Cp, P.Nombre AS Provincia
FROM localidades L
INNER JOIN provincias P ON L.IdProvincia = P.IdProvincia WHERE P.IdProvincia = 4;



