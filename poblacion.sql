USE EL_ZAPATO_ROTO;  /*Usar la instancia de base de datos para poder realizar operaciones */

/*Inserciones en la tabla paises*/
INSERT INTO PAISES(id,nombre)VALUES
    ('PER','Peru'),
    ('COL','Colombia'),
    ('BOL','Bolivia'),
    ('MEX','Mexico');

/*Inserciones para la tabla productos */
INSERT INTO PRODUCTOS(nombre,presentacion,valor) VALUES 
    ('betun','producto para sacar lustre a los zapatos',2.00),
    ('cordones','producto para poder amarrar los zapatos',0.50),
    ('tintes_calzado','producto para poder pintar los zapatos',4.50),
    ('plantillas_zapato','plantillas para distintos zapatos',3.00);


/*Inserciones para la tabla clientes */
INSERT INTO CLIENTES(nombre,apellido,correo,edad,id_pais) VALUES 
    ('Sebasthian','Ampuero','sebasthian.ampuero@unmsm.edu.pe',22,'PER'),
    ('Alvaro','Chavez','alvaro.felipe@edteam',35,'PER'),
    ('Alberto','Quiroga','alberto.quiroga@edteam',36,'BOL'),
    ('Alexys','Lozada','alexys.lozada@edteam',37,'COL'),
    ('Otoniel','Ramos','otoniel.ramos@edteam',23,'MEX'),
    ('Manuel','Rodriguez','manuel.rodriguez@edteam',30,'PER');

/*Inserciones para la tabla inventarios */
INSERT INTO INVENTARIOS(id_producto,tipo_mov,cantidad) VALUES 
    (1,'ENT',5),
    (2,'ENT',15),
    (3,'ENT',15),
    (4,'ENT',25),
    (2,'SAL',10),
    (4,'SAL',20);

/*Inserciones para la tabla facturas */
        /*Inserciones del dia */
INSERT INTO FACTURAS(id_cliente,impuesto,descuento,valor_total) VALUES 
    (1,10,12,50),
    (2,8.4,0,40),
    (3,15,15,32),
    (4,25,8,48);
        /*Inserciones anteriores  */
INSERT INTO FACTURAS(id_cliente,impuesto,descuento,valor_total,fecha_creacion) VALUES 
    (1,10,3.5,80,'2020-06-04'),
    (2,11,4.5,60,'2020-06-04'),
    (3,5,8,50,'2020-06-02'),
    (1,11,4.5,70,'2020-06-02');

/*Inserciones para la tabla Producto Factura */
        /*Inserciones del dia */
INSERT INTO FACTURA_PRODUCTO(id_factura,id_producto,cantidad_vendida) VALUES 
    (1,2,5),
    (1,3,4),
    (1,1,8),
    (2,2,2),
    (2,3,14),
    (3,1,13),
    (4,3,20);
        /*Inserciones anteriores  */
INSERT INTO FACTURA_PRODUCTO(id_factura,id_producto,cantidad_vendida,fecha_creacion) VALUES 
    (5,2,120,'2020-06-04'),
    (6,4,30,'2020-06-04'),
    (6,3,5,'2020-06-04'),
    (7,4,25,'2020-06-02'),
    (8,2,35,'2020-06-02');
