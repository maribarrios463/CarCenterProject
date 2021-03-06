/* ---------------------------------------------------------------------------------------------------------
  PROYECTO      : CAR_CENTER_PROJECT
  FECHA CREACION: 24 de MARZO de 2021
  DESCRIPCION   : Creaccion de las tablas del modelo 
  AUTOR         : Marielena Barrios Reinoso
--------------------------------------------------------------------------------------------------------- */
  --ELIMINAR TABLAS
  /*
    DROP SEQUENCE SEQ_FACTURA; 
    DROP SEQUENCE SEQ_DESCRIPCION_SERVICIO;
    DROP SEQUENCE SEQ_PRODUCTO;
    DROP SEQUENCE SEQ_SUCURSAL;
    DROP TABLE DETALLE_PRODUCTO CASCADE CONSTRAINTS;
    DROP TABLE DETALLE_DES_SERVICIO CASCADE CONSTRAINTS;
    DROP TABLE FACTURA CASCADE CONSTRAINTS;
    DROP TABLE DESCRIPCION_SERVICIO CASCADE CONSTRAINTS;
    DROP TABLE VEHICULO CASCADE CONSTRAINTS;
    DROP TABLE PRODUCTO CASCADE CONSTRAINTS;
    DROP TABLE SUCURSAL CASCADE CONSTRAINTS;
    DROP TABLE MECANICO_RESPONSABLE CASCADE CONSTRAINTS;
    DROP TABLE CLIENTE CASCADE CONSTRAINTS;
  */
  -- TABLA CLIENTE
  CREATE TABLE CLIENTE(
    TIPO_IDENT_CLI VARCHAR2(20),
    NUM_IDENT_CLI VARCHAR2(20),
    PRIMER_NOMBRE VARCHAR2(50),
    SEGUNDO_NOMBRE VARCHAR2(50),
    PRIMER_APELLIDO VARCHAR2(50),
    SEGUNDO_APELLIDO VARCHAR2(50),
    NUMERO_CONTACTO NUMBER,
    DIRECCION VARCHAR2(100),
    CORREO_ELECTRONICO VARCHAR2(100)
    );
  ALTER TABLE CLIENTE ADD CONSTRAINT PK_NUM_IDENT_CLI PRIMARY KEY (NUM_IDENT_CLI);      
  
  -- TABLA MECANICO_RESPONSABLE
  CREATE TABLE MECANICO_RESPONSABLE(
    TIPO_IDENT_MEC VARCHAR2(20),
    NUM_IDENT_MEC VARCHAR2(20),
    PRIMER_NOMBRE VARCHAR2(50),
    SEGUNDO_NOMBRE VARCHAR2(50),
    PRIMER_APELLIDO VARCHAR2(50),
    SEGUNDO_APELLIDO VARCHAR2(50),
    NUMERO_CONTACTO NUMBER,
    DIRECCION VARCHAR2(100),
    CORREO_ELECTRONICO VARCHAR2(100),
    ESTADO_MECANICO_RESP VARCHAR2(20)
    );
  ALTER TABLE MECANICO_RESPONSABLE ADD CONSTRAINT PK_NUM_IDENT_MEC PRIMARY KEY (NUM_IDENT_MEC);      
    
  -- TABLA SUCURSAL
  CREATE TABLE SUCURSAL(
    COD_SUCURSAL NUMBER,
    NOMBRE_SUCURSAL VARCHAR2(50),
    DIRECCION VARCHAR2(100),
    TELEFONO_CONTACTO NUMBER,
    CIUDAD VARCHAR2(50)
    );
  ALTER TABLE SUCURSAL ADD CONSTRAINT PK_COD_SUCURSAL PRIMARY KEY (COD_SUCURSAL);
  CREATE SEQUENCE SEQ_SUCURSAL MINVALUE 1 START WITH 1 INCREMENT BY 1 NOCACHE;
  
  -- TABLA PRODUCTO
  CREATE TABLE PRODUCTO(
    COD_PRODUCTO NUMBER,
    NOMBRE_PRODUCTO VARCHAR2(50),
    VALOR_UNITARIO NUMBER,
    CANTIDAD_PROD NUMBER,
    DESCUENTO NUMBER
  );
  ALTER TABLE PRODUCTO ADD CONSTRAINT PK_COD_PRODUCTO PRIMARY KEY (COD_PRODUCTO);      
  CREATE SEQUENCE SEQ_PRODUCTO MINVALUE 1 START WITH 1 INCREMENT BY 1 NOCACHE;
  
  CREATE TABLE VEHICULO(
    PLACA VARCHAR2(50),
    TIPO_VEHICULO VARCHAR2(50),
    MODELO VARCHAR2(50),
    MARCA VARCHAR2(50),
    NUM_MOTOR VARCHAR2(50)
  );
  ALTER TABLE VEHICULO ADD CONSTRAINT PK_PLACA PRIMARY KEY (PLACA); 
    
  CREATE TABLE DESCRIPCION_SERVICIO(
    COD_SERVICIO NUMBER,
    VALOR_MANO_OBRA NUMBER,
    DESCUENTO NUMBER,
    OBSERVACION VARCHAR2(1500),
    NUM_IDENT_MEC VARCHAR2(20)
  );
  ALTER TABLE DESCRIPCION_SERVICIO ADD CONSTRAINT PK_COD_SERVICIO PRIMARY KEY (COD_SERVICIO);
  ALTER TABLE DESCRIPCION_SERVICIO ADD CONSTRAINT FK_NUM_IDENT_MEC FOREIGN KEY(NUM_IDENT_MEC) REFERENCES MECANICO_RESPONSABLE (NUM_IDENT_MEC);      
  CREATE SEQUENCE SEQ_DESCRIPCION_SERVICIO MINVALUE 1 START WITH 1 INCREMENT BY 1 NOCACHE;
  
  
  CREATE TABLE FACTURA(
    NUM_FACTURA NUMBER,
    FECHA_FACTURA DATE,
    PLACA VARCHAR2(50),
    FORMA_PAGO VARCHAR2(50),
    MEDIO_PAGO VARCHAR2(50),
    IVA NUMBER,
    VALOR_TOTAL_FACT NUMBER,
    NUM_IDENT_CLI VARCHAR2(20),
    COD_SUCURSAL NUMBER
  );
  ALTER TABLE FACTURA ADD CONSTRAINT PK_NUM_FACTURA PRIMARY KEY (NUM_FACTURA);      
  ALTER TABLE FACTURA ADD CONSTRAINT FK_NUM_IDENT_CLI FOREIGN KEY(NUM_IDENT_CLI) REFERENCES CLIENTE (NUM_IDENT_CLI);
  ALTER TABLE FACTURA ADD CONSTRAINT FK_COD_SUCURSAL FOREIGN KEY(COD_SUCURSAL) REFERENCES SUCURSAL (COD_SUCURSAL);
  ALTER TABLE FACTURA ADD CONSTRAINT FK_PLACA_FAC FOREIGN KEY(PLACA) REFERENCES VEHICULO (PLACA);
  CREATE SEQUENCE SEQ_FACTURA MINVALUE 1 START WITH 1 INCREMENT BY 1 NOCACHE;
  
  CREATE TABLE DETALLE_DES_SERVICIO (
    COD_SERVICIO NUMBER,
    NUM_FACTURA NUMBER
  );
  ALTER TABLE DETALLE_DES_SERVICIO ADD CONSTRAINT FK_COD_SERVICIO FOREIGN KEY(COD_SERVICIO) REFERENCES DESCRIPCION_SERVICIO (COD_SERVICIO);
  ALTER TABLE DETALLE_DES_SERVICIO ADD CONSTRAINT FK_NUM_FACTURA_DS FOREIGN KEY(NUM_FACTURA) REFERENCES FACTURA (NUM_FACTURA);
  
  CREATE TABLE DETALLE_PRODUCTO (
    COD_PRODUCTO NUMBER,
    NUM_FACTURA NUMBER,
    CAN_PRODUCTO_VENDIDO NUMBER
  );
  ALTER TABLE DETALLE_PRODUCTO ADD CONSTRAINT FK_COD_PRODUCTO FOREIGN KEY(COD_PRODUCTO) REFERENCES PRODUCTO (COD_PRODUCTO);
  ALTER TABLE DETALLE_PRODUCTO ADD CONSTRAINT FK_NUM_FACTURA_DP FOREIGN KEY(NUM_FACTURA) REFERENCES FACTURA (NUM_FACTURA);
  