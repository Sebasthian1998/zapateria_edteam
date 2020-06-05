CREATE DATABASE EL_ZAPATO_ROTO;        /*Creación de la base de datos */
USE EL_ZAPATO_ROTO;                    /*Usar la instancia de base de datos para poder realizar operaciones */

CREATE TABLE PAISES(
    id CHAR(3) PRIMARY KEY,
    nombre varchar(40) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE PRODUCTOS(                 /*Creación de la tabla productos */ 
    id int PRIMARY KEY AUTO_INCREMENT,   /*Toda tabla necesita un identificador */          
    nombre  varchar(40) NOT NULL,        /* ATRIBUTOS PRINCIPALES, no pueden ser nulos o vacios */
    presentacion varchar(100) NOT NULL,  /*Nombre presentacion valor */
    valor float NOT NULL,               
    fecha_ingreso TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE CLIENTES(                   /*Creación de la tabla clientes */ 
    id  int PRIMARY KEY AUTO_INCREMENT,  /*Identificador unico */
    nombre  varchar(30) NOT NULL,       /*Atributos principales, no pueden ser nulos o vacios  Nombre, pais */
    apellido varchar(30),                /*Atributos secundarios pueden ser nulos */
    correo  varchar(50),                /*Apellidos, correo, edad*/
    edad int,
    id_pais char(3) NOT NULL,
    fecha_ingreso TIMESTAMP DEFAULT current_timestamp,
    CONSTRAINT FK_Cliente_Pais FOREIGN KEY (id_pais) REFERENCES PAISES(id)
);  

CREATE TABLE INVENTARIOS(               /*Creación de la tabla inventario */ 
    id int PRIMARY KEY AUTO_INCREMENT, /*Identificador unico */
    id_producto int ,                   /*Identificador de producto, es llave foranea*/
    tipo_mov char(3) ,                  /*Atributos principales id_producto,tipo movimiento fecha,cantidad*/  
    fecha_mov TIMESTAMP DEFAULT current_timestamp,
    cantidad int,
    CONSTRAINT FK_Inventario_Producto FOREIGN KEY (id_producto) REFERENCES PRODUCTOS(id)/*En la relacion 1 a 1 al implementar en la BD, se llevara el inventario el FK*/
);


CREATE TABLE FACTURAS(                    /*Creación de la tabla facturas */ 
    id  int PRIMARY KEY AUTO_INCREMENT,   /*Identificador unico */
    id_cliente int,                       /*Identificador de cliente, es llave foranea*/
    impuesto  float,                      /*Atributos principales productos,impuestos descuentos,valor total */
    descuento  float,   
    valor_total float,
    fecha_creacion TIMESTAMP DEFAULT current_timestamp,
    CONSTRAINT FK_Factura_Cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id)
);

CREATE TABLE FACTURA_PRODUCTO(            /*Tabla generada por la relacion muchos a muchos entre producto-factura */
    id_factura int NOT NULL,
    id_producto int NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT current_timestamp,
    cantidad_vendida int NOT NULL, /*Se agrega la cantidad que sale por producto*/
    PRIMARY KEY(id_factura,id_producto),
    CONSTRAINT FK_Factura_ProductoTable FOREIGN KEY (id_factura) REFERENCES FACTURAS(id),
    CONSTRAINT FK_Producto_FacturaTable FOREIGN KEY (id_producto) REFERENCES PRODUCTOS(id)
);
