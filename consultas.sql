/*1.Consulta la facturación de un cliente en específico. */
SELECT * from FACTURAS WHERE id_cliente=1;


/*2.Consulta la facturación de un producto en específico. */        /*facprod=Tabla factura_producto, fac=tabla factura */
SELECT facprod.id_producto,fac.id as id_factura, fac.id_cliente,fac.impuesto,fac.descuento,fac.valor_total,  fac.fecha_creacion 
from FACTURAS as fac INNER JOIN FACTURA_PRODUCTO as facprod 
WHERE id_producto=1 AND id=id_factura;

SELECT facprod.id_producto,fac.id as id_factura, fac.id_cliente,fac.impuesto,fac.descuento,fac.valor_total,  fac.fecha_creacion 
from FACTURAS as fac INNER JOIN FACTURA_PRODUCTO as facprod 
WHERE id_producto=3 AND id=id_factura;


/*3.Consulta la facturación de un rango de fechas. */
SELECT * from FACTURAS WHERE fecha_creacion BETWEEN '2020-06-03' AND '2020-07-04';
SELECT * from FACTURAS WHERE fecha_creacion BETWEEN '2020-06-03' AND '2020-06-04';
SELECT * from FACTURAS WHERE fecha_creacion BETWEEN '2020-04-01' AND '2020-06-02';

/*4.De la facturación, consulta los clientes únicos (es decir, se requiere el listado de los clientes que 
han comprado por lo menos una vez, pero en el listado no se deben repetir los clientes) */ /*cli=Tabla clientes, fac=tabla factura */
SELECT DISTINCT cli.id,cli.nombre,cli.correo from CLIENTES as cli INNER JOIN FACTURAS as fac WHERE cli.id=fac.id_cliente; 



/*5.Cubo de información (opcional): Si tienes experiencia en cubos de información, 
diseña un cubo con la base de datos anterior donde se tenga toda la información de facturación. */