CREATE OR REPLACE PACKAGE PKG_CAR_CENTER_PROJECT AS 

  /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_CLINTE_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla CLIENTE
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_NUM_IDENT_CLI               IN VARCHAR2         indica el numero de identificacion del cliente
    E_TIPO_IDENT_CLI              IN VARCHAR2         indica el tipo de identificacion del cliente (CC = CEDULA DE CIUDADANIA; CE = CEDULA DE EXTRANJERIA; 
                                                      NIT = NUMERO DE IDENTIFICACION TRIBUTARIA; TI = TARJETA DE IDENTIDAD; PAP =	PASAPORTE)
    E_PRIMER_NOMBRE               IN VARCHAR2         indica el primer nombre del cliente
    E_SEGUNDO_NOMBRE              IN VARCHAR2         indica el segundo nombre del cliente
    E_PRIMER_APELLIDO             IN VARCHAR2         indica el primer apellido del cliente
    E_SEGUNDO_APELLIDO            IN VARCHAR2         indica el segundo apellido del cliente
    E_NUMERO_CONTACTO             IN NUMBER           indica el numero de celular o contacto del cliente
    E_DIRECCION                   IN VARCHAR2         indica la direccion del cliente
    E_CORREO_ELECTRONICO          IN VARCHAR2         indica el correo electronico del cliente
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada 
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_CLINTE_CARCENTER  (E_V_ACCION           IN VARCHAR2,
                                          E_NUM_IDENT_CLI      IN VARCHAR2, 
                                          E_TIPO_IDENT_CLI     IN VARCHAR2, 
                                          E_PRIMER_NOMBRE      IN VARCHAR2, 
                                          E_SEGUNDO_NOMBRE     IN VARCHAR2,
                                          E_PRIMER_APELLIDO    IN VARCHAR2,
                                          E_SEGUNDO_APELLIDO   IN VARCHAR2,
                                          E_NUMERO_CONTACTO    IN NUMBER,
                                          E_DIRECCION          IN VARCHAR2,
                                          E_CORREO_ELECTRONICO IN VARCHAR2,
                                          S_CUR_CONSULTA_INFO  OUT SYS_REFCURSOR,
                                          S_N_COD_SAL          OUT NUMBER,
                                          S_V_MSJ_SAL          OUT VARCHAR2); 
  
  /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_MECAN_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla MECANICO_RESPONSABLE
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_NUM_IDENT_MEC               IN VARCHAR2         indica el numero de identificacion del mecanico responsable
    E_TIPO_IDENT_MEC              IN VARCHAR2         indica el tipo de identificacion del mecanico responsable (CC = CEDULA DE CIUDADANIA; CE = CEDULA DE EXTRANJERIA; 
                                                      NIT = NUMERO DE IDENTIFICACION TRIBUTARIA; TI = TARJETA DE IDENTIDAD; PAP =	PASAPORTE)
    E_PRIMER_NOMBRE               IN VARCHAR2         indica el primer nombre del mecanico responsable
    E_SEGUNDO_NOMBRE              IN VARCHAR2         indica el segundo nombre del mecanico responsable
    E_PRIMER_APELLIDO             IN VARCHAR2         indica el primer apellido del mecanico responsable
    E_SEGUNDO_APELLIDO            IN VARCHAR2         indica el segundo apellido del mecanico responsable
    E_NUMERO_CONTACTO             IN NUMBER           indica el numero de celular o contacto del mecanico responsable
    E_DIRECCION                   IN VARCHAR2         indica la direccion del mecanico responsable
    E_CORREO_ELECTRONICO          IN VARCHAR2         indica el correo electronico del mecanico responsable
    E_ESTADO_MECANICO_RESP        IN VARCHAR2         indica el estado actual del mecanico responsable (ACTIVO; INACTIVO)
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_MECAN_CARCENTER  (E_V_ACCION             IN VARCHAR2,
                                         E_NUM_IDENT_MEC        IN VARCHAR2, 
                                         E_TIPO_IDENT_MEC       IN VARCHAR2, 
                                         E_PRIMER_NOMBRE        IN VARCHAR2, 
                                         E_SEGUNDO_NOMBRE       IN VARCHAR2,
                                         E_PRIMER_APELLIDO      IN VARCHAR2,
                                         E_SEGUNDO_APELLIDO     IN VARCHAR2,
                                         E_NUMERO_CONTACTO      IN NUMBER,
                                         E_DIRECCION            IN VARCHAR2,
                                         E_CORREO_ELECTRONICO   IN VARCHAR2,
                                         E_ESTADO_MECANICO_RESP IN VARCHAR2,
                                         S_CUR_CONSULTA_INFO    OUT SYS_REFCURSOR,
                                         S_N_COD_SAL            OUT NUMBER,
                                         S_V_MSJ_SAL            OUT VARCHAR2); 
   
  /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_ALMACEN_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla ALMACEN
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_NOMBRE_ALMACEN              IN VARCHAR2         indica el nombre del almacen
    E_TELEFONO_CONTACTO           IN NUMBER           indica el numero de contacto del almacen
    E_DIRECCION                   IN VARCHAR2         indica la direccion del almacen
    E_CIUDAD                      IN VARCHAR2         indica la ciudad del almacen
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_ALMACEN_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                          E_NOMBRE_ALMACEN    IN VARCHAR2, 
                                          E_TELEFONO_CONTACTO IN VARCHAR2, 
                                          E_DIRECCION         IN VARCHAR2, 
                                          E_CIUDAD            IN VARCHAR2,
                                          S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                          S_N_COD_SAL         OUT NUMBER,
                                          S_V_MSJ_SAL         OUT VARCHAR2);  

    /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_PRODUCTO_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla PRODUCTO
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_NOMBRE_PRODUCTO             IN VARCHAR2         indica el nombre del producto
    E_VALOR_UNITARIO              IN NUMBER           indica el valor unitario del producto
    E_CANTIDAD_PROD               IN NUMBER           indica la cantidad de los productos en stock
    E_DESCUENTO                   IN NUMBER           indica el valor de descuento en el producto
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_PRODUCTO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_NOMBRE_PRODUCTO   IN VARCHAR2, 
                                           E_VALOR_UNITARIO    IN NUMBER, 
                                           E_CANTIDAD_PROD     IN NUMBER, 
                                           E_DESCUENTO         IN NUMBER,
                                           S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2); 

  /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_VEHICULO_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla VEHICULO
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_NOMBRE                      IN VARCHAR2         indica el nombre del vehiculo
    E_MODELO                      IN VARCHAR2         indica el modelo del vehiculo
    E_MARCA                       IN VARCHAR2         indica la marca del vehiculo
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_VEHICULO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_NOMBRE            IN VARCHAR2, 
                                           E_MODELO            IN VARCHAR2, 
                                           E_MARCA             IN VARCHAR2, 
                                           S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2); 
                                           
  /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_DESC_SERVI_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla DESCRIPCION_SERVICIO
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_VALOR_MANO_OBRA             IN NUMBER           indica el valor de la mano de obra del servicio
    E_DESCUENTO                   IN NUMBER           indica el valor de descuento del servicio
    E_OBSERVACION                 IN VARCHAR2         indica la observacion del sertvicio
    E_NOM_PRODUCTO                IN VARCHAR2         indica el nombre del producto
    E_CANT_VENDIDO                IN NUMBER           indica la cantidad de producto vendido
    E_NUM_IDENT_MEC               IN VARCHAR2         indica el numero de identificacion del mecanico responsable
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_DESC_SERVI_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                             E_VALOR_MANO_OBRA   IN NUMBER, 
                                             E_DESCUENTO         IN NUMBER, 
                                             E_OBSERVACION       IN VARCHAR2, 
                                             E_NOM_PRODUCTO      IN VARCHAR2,
                                             E_CANT_VENDIDO      IN NUMBER,
                                             E_NUM_IDENT_MEC     IN VARCHAR2,
                                             S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                             S_N_COD_SAL         OUT NUMBER,
                                             S_V_MSJ_SAL         OUT VARCHAR2);  

 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CRUD_FACTURA_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE) 
                               para la tabla FACTURA
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2           indica la accion a realizar (C = CREATE; R = READ; U = UPDATE)
    E_FECHA_FACTURA               IN DATE               indica la fecha de facturacion
    E_PLACA                       IN VARCHAR2           indica la placa del vehiculo para la facturacion
    E_FORMA_PAGO                  IN VARCHAR2           indica la forma de pago (CONTADO; CREDITO)
    E_MEDIO_PAGO                  IN VARCHAR2           indica el medio de pago (EFECTIVO; TARJETA DE CREDITO; TARJETA DE DEBITO; PSE)
    E_IVA                         IN NUMBER             indica el IVA de la facturacion
    E_VALOR_TOTAL_FACT            IN NUMBER             indica el valor total facturado
    E_NUM_IDENT_CLI               IN VARCHAR2           indica el numero de identificacion del cliente
    E_NUM_IDENT_MEC               IN VARCHAR2           indica el numero de identificacion del mecanico responsable
    E_NOMBRE_ALMACEN              IN VARCHAR2           indica el nombre del almacen
    E_NOMBRE_VEHICULO             IN VARCHAR2           indica el nombre del vehiculo
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR     indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_FACTURA_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                          E_FECHA_FACTURA     IN DATE,
                                          E_PLACA             IN VARCHAR2,
                                          E_FORMA_PAGO        IN VARCHAR2,
                                          E_MEDIO_PAGO        IN VARCHAR2,
                                          E_IVA               IN NUMBER,
                                          E_VALOR_TOTAL_FACT  IN NUMBER,
                                          E_NUM_IDENT_CLI     IN VARCHAR2,
                                          E_NUM_IDENT_MEC     IN VARCHAR2,
                                          E_NOMBRE_ALMACEN    IN VARCHAR2,
                                          E_NOMBRE_VEHICULO   IN VARCHAR2,
                                          S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                          S_N_COD_SAL         OUT NUMBER,
                                          S_V_MSJ_SAL         OUT VARCHAR2);

 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CONSULTA_COMPRAS_CLIENTE
    DESCRIPCION              : Procedimiento que permite realizar la consulta de los clientes que han comprado un 
                               acumulado $100.000 en los últimos 60 días 
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR     indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CONSULTA_COMPRAS_CLIENTE (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                            S_N_COD_SAL         OUT NUMBER,
                                            S_V_MSJ_SAL         OUT VARCHAR2);
    
 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CONSULTA_PRODUCTOS
    DESCRIPCION              : Procedimiento que permite realizar la consulta de los 100 productos más vendidos 
                               en los ultimos 30 dias 
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR     indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CONSULTA_PRODUCTOS (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                      S_N_COD_SAL         OUT NUMBER,
                                      S_V_MSJ_SAL         OUT VARCHAR2);

 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CONSULTA_ALMACENES
    DESCRIPCION              : Procedimiento que permite realizar la consulta de las tiendas que han vendido 
                               más de 100 unidades de los productoa en los últimos 60 días. 
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR     indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CONSULTA_ALMACENES (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                      S_N_COD_SAL         OUT NUMBER,
                                      S_V_MSJ_SAL         OUT VARCHAR2);

 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_CONSULTA_MANTENIMIENTOS
    DESCRIPCION              : Procedimiento que permite realizar la consulta de todos los clientes que han tenido 
                               mas de un (1) mantenimiento en los ultimos 30 dias. 
    AUTOR                    : Marielena Barrios Reinoso
    
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR     indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CONSULTA_MANTENIMIENTOS (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2);                                             
END PKG_CAR_CENTER_PROJECT;
/


CREATE OR REPLACE PACKAGE BODY PKG_CAR_CENTER_PROJECT AS

  PROCEDURE PRC_CRUD_CLINTE_CARCENTER  (E_V_ACCION           IN VARCHAR2,
                                        E_NUM_IDENT_CLI      IN VARCHAR2, 
                                        E_TIPO_IDENT_CLI     IN VARCHAR2, 
                                        E_PRIMER_NOMBRE      IN VARCHAR2, 
                                        E_SEGUNDO_NOMBRE     IN VARCHAR2,
                                        E_PRIMER_APELLIDO    IN VARCHAR2,
                                        E_SEGUNDO_APELLIDO   IN VARCHAR2,
                                        E_NUMERO_CONTACTO    IN NUMBER,
                                        E_DIRECCION          IN VARCHAR2,
                                        E_CORREO_ELECTRONICO IN VARCHAR2,
                                        S_CUR_CONSULTA_INFO  OUT SYS_REFCURSOR,
                                        S_N_COD_SAL          OUT NUMBER,
                                        S_V_MSJ_SAL          OUT VARCHAR2) AS
                                        
  V_TIPO_ACCION        VARCHAR2(1);
  V_SQL                VARCHAR2(4000);
  V_NUM_IDENT_CLI      CLIENTE.NUM_IDENT_CLI%TYPE;     
  V_TIPO_IDENT_CLI     CLIENTE.TIPO_IDENT_CLI%TYPE;    
  V_PRIMER_NOMBRE      CLIENTE.PRIMER_NOMBRE%TYPE;     
  V_SEGUNDO_NOMBRE     CLIENTE.SEGUNDO_NOMBRE%TYPE;    
  V_PRIMER_APELLIDO    CLIENTE.PRIMER_APELLIDO%TYPE;   
  V_SEGUNDO_APELLIDO   CLIENTE.SEGUNDO_APELLIDO%TYPE;  
  V_NUMERO_CONTACTO    CLIENTE.NUMERO_CONTACTO%TYPE;   
  V_DIRECCION          CLIENTE.DIRECCION%TYPE;         
  V_CORREO_ELECTRONICO CLIENTE.CORREO_ELECTRONICO%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_NUM_IDENT_CLI), UPPER (E_TIPO_IDENT_CLI), UPPER (E_PRIMER_NOMBRE),       
         UPPER (E_SEGUNDO_NOMBRE), UPPER (E_PRIMER_APELLIDO), UPPER (E_SEGUNDO_APELLIDO), UPPER (E_NUMERO_CONTACTO),    
         UPPER (E_DIRECCION), UPPER (E_CORREO_ELECTRONICO)
    INTO V_TIPO_ACCION, V_NUM_IDENT_CLI, V_TIPO_IDENT_CLI, V_PRIMER_NOMBRE,
         V_SEGUNDO_NOMBRE, V_PRIMER_APELLIDO, V_SEGUNDO_APELLIDO, V_NUMERO_CONTACTO,   
         V_DIRECCION, V_CORREO_ELECTRONICO
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_NUM_IDENT_CLI IS NULL OR E_TIPO_IDENT_CLI IS NULL OR E_PRIMER_NOMBRE IS NULL OR E_SEGUNDO_NOMBRE IS NULL OR
          E_PRIMER_APELLIDO IS NULL OR E_SEGUNDO_APELLIDO IS NULL OR E_NUMERO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CORREO_ELECTRONICO IS NULL ) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      BEGIN
        INSERT INTO CLIENTE (NUM_IDENT_CLI, TIPO_IDENT_CLI, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO,
                             SEGUNDO_APELLIDO, NUMERO_CONTACTO, DIRECCION, CORREO_ELECTRONICO)
                     VALUES (V_NUM_IDENT_CLI, V_TIPO_IDENT_CLI, V_PRIMER_NOMBRE, V_SEGUNDO_NOMBRE, V_PRIMER_APELLIDO,   
                             V_SEGUNDO_APELLIDO, V_NUMERO_CONTACTO, V_DIRECCION, V_CORREO_ELECTRONICO);
        COMMIT;
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_CLINTE_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       IF E_NUM_IDENT_CLI IS NOT NULL THEN
       
         V_SQL := 'SELECT NUM_IDENT_CLI,
                          TIPO_IDENT_CLI,
                          PRIMER_NOMBRE,
                          SEGUNDO_NOMBRE,
                          PRIMER_APELLIDO,
                          SEGUNDO_APELLIDO,
                          NUMERO_CONTACTO,
                          DIRECCION,
                          CORREO_ELECTRONICO
                     FROM CLIENTE
                    WHERE NUM_IDENT_CLI = ' || E_NUM_IDENT_CLI;
        ELSE
           V_SQL := 'SELECT NUM_IDENT_CLI,
                            TIPO_IDENT_CLI,
                            PRIMER_NOMBRE,
                            SEGUNDO_NOMBRE,
                            PRIMER_APELLIDO,
                            SEGUNDO_APELLIDO,
                            NUMERO_CONTACTO,
                            DIRECCION,
                            CORREO_ELECTRONICO
                       FROM CLIENTE';  
        END IF;
        OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
        
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            S_N_COD_SAL := -4;
            S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_CLINTE_CARCENTER';
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'U' THEN
    BEGIN
       IF (E_NUM_IDENT_CLI IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'Por favor ingrese el parametro E_NUM_IDENT_CLI para poder continuar la actualizacion';
       END IF;
  
        UPDATE CLIENTE SET TIPO_IDENT_CLI = V_TIPO_IDENT_CLI, 
                           PRIMER_NOMBRE = V_PRIMER_NOMBRE, 
                           SEGUNDO_NOMBRE = V_SEGUNDO_NOMBRE, 
                           PRIMER_APELLIDO = V_PRIMER_APELLIDO,
                           SEGUNDO_APELLIDO = V_SEGUNDO_APELLIDO, 
                           NUMERO_CONTACTO = V_NUMERO_CONTACTO, 
                           DIRECCION = V_DIRECCION, 
                           CORREO_ELECTRONICO = V_CORREO_ELECTRONICO  
                     WHERE NUM_IDENT_CLI = V_NUM_IDENT_CLI;
        
        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'D' THEN
     BEGIN
     
      IF (E_NUM_IDENT_CLI IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'Por favor ingrese el parametro E_NUM_IDENT_CLI para poder continuar con la eliminacion';
      END IF;
      
      DELETE FROM CLIENTE WHERE NUM_IDENT_CLI = E_NUM_IDENT_CLI;
      COMMIT;
       
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -8;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_CLINTE_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;

  END PRC_CRUD_CLINTE_CARCENTER;

  PROCEDURE PRC_CRUD_MECAN_CARCENTER  (E_V_ACCION             IN VARCHAR2,
                                       E_NUM_IDENT_MEC        IN VARCHAR2, 
                                       E_TIPO_IDENT_MEC       IN VARCHAR2, 
                                       E_PRIMER_NOMBRE        IN VARCHAR2, 
                                       E_SEGUNDO_NOMBRE       IN VARCHAR2,
                                       E_PRIMER_APELLIDO      IN VARCHAR2,
                                       E_SEGUNDO_APELLIDO     IN VARCHAR2,
                                       E_NUMERO_CONTACTO      IN NUMBER,
                                       E_DIRECCION            IN VARCHAR2,
                                       E_CORREO_ELECTRONICO   IN VARCHAR2,
                                       E_ESTADO_MECANICO_RESP IN VARCHAR2,
                                       S_CUR_CONSULTA_INFO    OUT SYS_REFCURSOR,
                                       S_N_COD_SAL            OUT NUMBER,
                                       S_V_MSJ_SAL            OUT VARCHAR2) AS
                                       
  V_TIPO_ACCION          VARCHAR2(1);
  V_SQL                  VARCHAR2(4000);
  V_NUM_IDENT_MEC        MECANICO_RESPONSABLE.NUM_IDENT_MEC%TYPE;     
  V_TIPO_IDENT_MEC       MECANICO_RESPONSABLE.TIPO_IDENT_MEC%TYPE;    
  V_PRIMER_NOMBRE        MECANICO_RESPONSABLE.PRIMER_NOMBRE%TYPE;     
  V_SEGUNDO_NOMBRE       MECANICO_RESPONSABLE.SEGUNDO_NOMBRE%TYPE;    
  V_PRIMER_APELLIDO      MECANICO_RESPONSABLE.PRIMER_APELLIDO%TYPE;   
  V_SEGUNDO_APELLIDO     MECANICO_RESPONSABLE.SEGUNDO_APELLIDO%TYPE;  
  V_NUMERO_CONTACTO      MECANICO_RESPONSABLE.NUMERO_CONTACTO%TYPE;   
  V_DIRECCION            MECANICO_RESPONSABLE.DIRECCION%TYPE;         
  V_CORREO_ELECTRONICO   MECANICO_RESPONSABLE.CORREO_ELECTRONICO%TYPE;
  V_ESTADO_MECANICO_RESP MECANICO_RESPONSABLE.ESTADO_MECANICO_RESP%TYPE;

  BEGIN
     BEGIN
    
     --Validacion de mayusculas
      SELECT UPPER (E_V_ACCION), UPPER (E_NUM_IDENT_MEC), UPPER (E_TIPO_IDENT_MEC), UPPER (E_PRIMER_NOMBRE),       
             UPPER (E_SEGUNDO_NOMBRE), UPPER (E_PRIMER_APELLIDO), UPPER (E_SEGUNDO_APELLIDO), UPPER (E_NUMERO_CONTACTO),    
             UPPER (E_DIRECCION), UPPER (E_CORREO_ELECTRONICO), UPPER(E_ESTADO_MECANICO_RESP)
        INTO V_TIPO_ACCION, V_NUM_IDENT_MEC, V_TIPO_IDENT_MEC, V_PRIMER_NOMBRE,
             V_SEGUNDO_NOMBRE, V_PRIMER_APELLIDO, V_SEGUNDO_APELLIDO, V_NUMERO_CONTACTO,   
             V_DIRECCION, V_CORREO_ELECTRONICO, V_ESTADO_MECANICO_RESP
        FROM DUAL;
      
      --Validacion valores validos para las acciones validas
      IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
          S_N_COD_SAL := -1;
          S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
      END IF;
    
      -- Guardar informacion en la tabla CLIENTE
       IF V_TIPO_ACCION = 'C' THEN
       
          -- validaciones de parametros de entrada
          IF (E_V_ACCION IS NULL OR E_NUM_IDENT_MEC IS NULL OR E_TIPO_IDENT_MEC IS NULL OR E_PRIMER_NOMBRE IS NULL OR E_SEGUNDO_NOMBRE IS NULL OR
              E_PRIMER_APELLIDO IS NULL OR E_SEGUNDO_APELLIDO IS NULL OR E_NUMERO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CORREO_ELECTRONICO IS NULL OR
              E_ESTADO_MECANICO_RESP IS NULL) THEN
            S_N_COD_SAL := -2;
            S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
          END IF;
          
          BEGIN
            INSERT INTO MECANICO_RESPONSABLE (NUM_IDENT_MEC, TIPO_IDENT_MEC, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO,
                                              SEGUNDO_APELLIDO, NUMERO_CONTACTO, DIRECCION, CORREO_ELECTRONICO, ESTADO_MECANICO_RESP)
                                      VALUES (V_NUM_IDENT_MEC, V_TIPO_IDENT_MEC, V_PRIMER_NOMBRE, V_SEGUNDO_NOMBRE, V_PRIMER_APELLIDO,     
                                              V_SEGUNDO_APELLIDO, V_NUMERO_CONTACTO, V_DIRECCION, V_CORREO_ELECTRONICO, V_ESTADO_MECANICO_RESP);
            COMMIT;
          EXCEPTION WHEN OTHERS THEN
          S_N_COD_SAL := -3;
          S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_MECAN_CARCENTER.';
        END ;
       END IF;
       
        IF V_TIPO_ACCION = 'R' THEN
         BEGIN
           
           IF E_NUM_IDENT_MEC IS NOT NULL THEN
           
             V_SQL := 'SELECT NUM_IDENT_MEC,
                              TIPO_IDENT_MEC,
                              PRIMER_NOMBRE,
                              SEGUNDO_NOMBRE,
                              PRIMER_APELLIDO,
                              SEGUNDO_APELLIDO,
                              NUMERO_CONTACTO,
                              DIRECCION,
                              CORREO_ELECTRONICO,
                              ESTADO_MECANICO_RESP
                         FROM MECANICO_RESPONSABLE
                        WHERE NUM_IDENT_MEC = ' || E_NUM_IDENT_MEC;
            ELSE
               V_SQL := 'SELECT NUM_IDENT_MEC,
                                TIPO_IDENT_MEC,
                                PRIMER_NOMBRE,
                                SEGUNDO_NOMBRE,
                                PRIMER_APELLIDO,
                                SEGUNDO_APELLIDO,
                                NUMERO_CONTACTO,
                                DIRECCION,
                                CORREO_ELECTRONICO,
                                ESTADO_MECANICO_RESP
                           FROM MECANICO_RESPONSABLE';  
            END IF;
            OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
            
            EXCEPTION
              WHEN NO_DATA_FOUND THEN
                S_N_COD_SAL := -4;
                S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_MECAN_CARCENTER';
        END ;
       END IF;
       
       IF V_TIPO_ACCION = 'U' THEN
        BEGIN
        
           IF (E_NUM_IDENT_MEC IS NULL) THEN
            S_N_COD_SAL := -5;
            S_V_MSJ_SAL := 'Por favor ingrese el parametro E_NUM_IDENT_CLI para poder continuar la actualizacion';
           END IF;
      
            UPDATE MECANICO_RESPONSABLE SET TIPO_IDENT_MEC = V_TIPO_IDENT_MEC, 
                                            PRIMER_NOMBRE = V_PRIMER_NOMBRE, 
                                            SEGUNDO_NOMBRE = V_SEGUNDO_NOMBRE, 
                                            PRIMER_APELLIDO = V_PRIMER_APELLIDO,
                                            SEGUNDO_APELLIDO = V_SEGUNDO_APELLIDO, 
                                            NUMERO_CONTACTO = V_NUMERO_CONTACTO, 
                                            DIRECCION = V_DIRECCION, 
                                            CORREO_ELECTRONICO = V_CORREO_ELECTRONICO, 
                                            ESTADO_MECANICO_RESP = V_ESTADO_MECANICO_RESP
                                      WHERE NUM_IDENT_MEC = V_NUM_IDENT_MEC;
            
            IF SQL%ROWCOUNT = 0 THEN
             S_N_COD_SAL := -6;
             S_V_MSJ_SAL := 'No existe registro para actualizar!.';
            END IF;
         COMMIT;
        END ;
       END IF;
       
       IF V_TIPO_ACCION = 'D' THEN
         BEGIN
         
          IF (E_NUM_IDENT_MEC IS NULL) THEN
            S_N_COD_SAL := -7;
            S_V_MSJ_SAL := 'Por favor ingrese el parametro E_NUM_IDENT_MEC para poder continuar con la eliminacion';
          END IF;
          
          UPDATE MECANICO_RESPONSABLE SET ESTADO_MECANICO_RESP = 'INACTIVO'
                                    WHERE NUM_IDENT_MEC = E_NUM_IDENT_MEC;
          
          IF SQL%ROWCOUNT = 0 THEN
            S_N_COD_SAL := -8;
            S_V_MSJ_SAL := 'No existe registro para actualizar!.';
          END IF;
          COMMIT;
           
        END ;
       END IF;
       
       S_N_COD_SAL := 0;
       S_V_MSJ_SAL := 'Proceso Exitoso.';
      
       EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -9;
          S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_MECAN_CARCENTER';
          
        WHEN OTHERS THEN
          S_N_COD_SAL := -99;
          S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
       END;

  END PRC_CRUD_MECAN_CARCENTER;

  PROCEDURE PRC_CRUD_ALMACEN_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                        E_NOMBRE_ALMACEN    IN VARCHAR2, 
                                        E_TELEFONO_CONTACTO IN VARCHAR2, 
                                        E_DIRECCION         IN VARCHAR2, 
                                        E_CIUDAD            IN VARCHAR2,
                                        S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                        S_N_COD_SAL         OUT NUMBER,
                                        S_V_MSJ_SAL         OUT VARCHAR2) AS
                                        
  V_TIPO_ACCION       VARCHAR2(1);
  V_SQL               VARCHAR2(4000);
  V_COD_SUCURSAL      ALMACEN.COD_SUCURSAL%TYPE;     
  V_NOMBRE_ALMACEN    ALMACEN.NOMBRE_ALMACEN%TYPE;   
  V_DIRECCION         ALMACEN.DIRECCION%TYPE;        
  V_TELEFONO_CONTACTO ALMACEN.TELEFONO_CONTACTO%TYPE;
  V_CIUDAD            ALMACEN.CIUDAD%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_NOMBRE_ALMACEN), UPPER (E_TELEFONO_CONTACTO), UPPER (E_DIRECCION), UPPER (E_CIUDAD)
    INTO V_TIPO_ACCION, V_NOMBRE_ALMACEN, V_TELEFONO_CONTACTO, V_DIRECCION, V_CIUDAD
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_NOMBRE_ALMACEN IS NULL OR E_TELEFONO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CIUDAD IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      BEGIN
        INSERT INTO ALMACEN (COD_SUCURSAL, NOMBRE_ALMACEN, DIRECCION, TELEFONO_CONTACTO, CIUDAD)
                     VALUES (SEQ_ALMACEN.NEXTVAL, V_NOMBRE_ALMACEN, V_DIRECCION, V_TELEFONO_CONTACTO, V_CIUDAD);
        COMMIT;
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_ALMACEN_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       V_SQL := 'SELECT COD_SUCURSAL,
                        NOMBRE_ALMACEN,
                        DIRECCION,
                        TELEFONO_CONTACTO,
                        CIUDAD
                   FROM ALMACEN';

        OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
        
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            S_N_COD_SAL := -4;
            S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_ALMACEN_CARCENTER';
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'U' THEN
    BEGIN
        
       -- Consultar codigo sucursal
       SELECT COD_SUCURSAL
         INTO V_COD_SUCURSAL
         FROM ALMACEN
        WHERE NOMBRE_ALMACEN = V_NOMBRE_ALMACEN;
       
       IF (V_COD_SUCURSAL IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar la actualizacion';
       END IF;
  
        UPDATE ALMACEN SET NOMBRE_ALMACEN = V_NOMBRE_ALMACEN, 
                           DIRECCION = V_DIRECCION, 
                           TELEFONO_CONTACTO = V_TELEFONO_CONTACTO, 
                           CIUDAD = V_CIUDAD    
                     WHERE COD_SUCURSAL = V_COD_SUCURSAL;
        
        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'D' THEN
     BEGIN
     
      -- Consultar codigo sucursal
       SELECT COD_SUCURSAL
         INTO V_COD_SUCURSAL
         FROM ALMACEN
        WHERE NOMBRE_ALMACEN = V_NOMBRE_ALMACEN;
        
      IF (V_COD_SUCURSAL IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar con la eliminacion';
      END IF;
      
      DELETE FROM ALMACEN WHERE COD_SUCURSAL = V_COD_SUCURSAL;
      COMMIT;
       
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -8;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_ALMACEN_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;

  END PRC_CRUD_ALMACEN_CARCENTER;

  PROCEDURE PRC_CRUD_PRODUCTO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                         E_NOMBRE_PRODUCTO   IN VARCHAR2, 
                                         E_VALOR_UNITARIO    IN NUMBER, 
                                         E_CANTIDAD_PROD     IN NUMBER, 
                                         E_DESCUENTO         IN NUMBER,
                                         S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                         S_N_COD_SAL         OUT NUMBER,
                                         S_V_MSJ_SAL         OUT VARCHAR2) AS
                                         
  V_TIPO_ACCION     VARCHAR2(1);
  V_SQL             VARCHAR2(4000);
  V_COD_PRODUCTO    PRODUCTO.COD_PRODUCTO%TYPE; 
  V_NOMBRE_PRODUCTO PRODUCTO.NOMBRE_PRODUCTO%TYPE; 
  V_VALOR_UNITARIO  PRODUCTO.VALOR_UNITARIO%TYPE; 
  V_CANTIDAD_PROD   PRODUCTO.CANTIDAD_PROD%TYPE; 
  V_DESCUENTO       PRODUCTO.DESCUENTO%TYPE; 

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_NOMBRE_PRODUCTO), UPPER (E_VALOR_UNITARIO), UPPER (E_CANTIDAD_PROD), UPPER (E_DESCUENTO)
    INTO V_TIPO_ACCION, V_NOMBRE_PRODUCTO, V_VALOR_UNITARIO, V_CANTIDAD_PROD, V_DESCUENTO
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_NOMBRE_PRODUCTO IS NULL OR E_VALOR_UNITARIO IS NULL OR E_CANTIDAD_PROD IS NULL OR E_DESCUENTO IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      BEGIN
        INSERT INTO PRODUCTO (COD_PRODUCTO, NOMBRE_PRODUCTO, VALOR_UNITARIO, CANTIDAD_PROD,DESCUENTO)
                      VALUES (SEQ_PRODUCTO.NEXTVAL, V_NOMBRE_PRODUCTO, V_VALOR_UNITARIO, V_CANTIDAD_PROD, V_DESCUENTO);
        COMMIT;
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_PRODUCTO_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       V_SQL := 'SELECT COD_PRODUCTO,
                        NOMBRE_PRODUCTO,
                        VALOR_UNITARIO,
                        CANTIDAD_PROD,
                        DESCUENTO
                   FROM PRODUCTO';

        OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
        
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            S_N_COD_SAL := -4;
            S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_PRODUCTO_CARCENTER';
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'U' THEN
    BEGIN
        
       -- Consultar codigo sucursal
       SELECT COD_PRODUCTO
         INTO V_COD_PRODUCTO
         FROM PRODUCTO
        WHERE NOMBRE_PRODUCTO = V_NOMBRE_PRODUCTO;
       
       IF (V_COD_PRODUCTO IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar la actualizacion';
       END IF;
  
        UPDATE PRODUCTO SET NOMBRE_PRODUCTO = V_NOMBRE_PRODUCTO,
                            VALOR_UNITARIO = V_VALOR_UNITARIO,
                            CANTIDAD_PROD = V_CANTIDAD_PROD,
                            DESCUENTO = V_DESCUENTO  
                     WHERE COD_PRODUCTO = V_COD_PRODUCTO;
        
        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'D' THEN
     BEGIN
     
      -- Consultar codigo sucursal
      SELECT COD_PRODUCTO
        INTO V_COD_PRODUCTO
        FROM PRODUCTO
       WHERE NOMBRE_PRODUCTO = V_NOMBRE_PRODUCTO;
        
      IF (V_COD_PRODUCTO IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar con la eliminacion';
      END IF;
      
      DELETE FROM PRODUCTO WHERE COD_PRODUCTO = V_COD_PRODUCTO;
      COMMIT;
       
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -8;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_ALMACEN_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;

  END PRC_CRUD_PRODUCTO_CARCENTER;

  PROCEDURE PRC_CRUD_VEHICULO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                         E_NOMBRE            IN VARCHAR2, 
                                         E_MODELO            IN VARCHAR2, 
                                         E_MARCA             IN VARCHAR2, 
                                         S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                         S_N_COD_SAL         OUT NUMBER,
                                         S_V_MSJ_SAL         OUT VARCHAR2) AS
                                         
  V_TIPO_ACCION  VARCHAR2(1);
  V_SQL          VARCHAR2(4000);
  V_COD_VEHICULO VEHICULO.COD_VEHICULO%TYPE; 
  V_NOMBRE       VEHICULO.NOMBRE%TYPE;
  V_MODELO       VEHICULO.MODELO%TYPE;
  V_MARCA        VEHICULO.MARCA%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_NOMBRE), UPPER (E_MODELO), UPPER (E_MARCA)
    INTO V_TIPO_ACCION, V_NOMBRE, V_MODELO, V_MARCA
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_NOMBRE IS NULL OR E_MODELO IS NULL OR E_MARCA IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      BEGIN
        INSERT INTO VEHICULO (COD_VEHICULO, NOMBRE, MODELO, MARCA)
                      VALUES (SEQ_VEHICULO.NEXTVAL, V_NOMBRE, V_MODELO, V_MARCA);
        COMMIT;
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_VEHICULO_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       V_SQL := 'SELECT COD_VEHICULO,
                        NOMBRE, 
                        MODELO,
                        MARCA
                   FROM VEHICULO';

        OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
        
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            S_N_COD_SAL := -4;
            S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_VEHICULO_CARCENTER';
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'U' THEN
    BEGIN
        
       -- Consultar codigo vehiculo
       SELECT COD_VEHICULO
         INTO V_COD_VEHICULO
         FROM VEHICULO
        WHERE NOMBRE = V_NOMBRE;
       
       IF (V_COD_VEHICULO IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar la actualizacion';
       END IF;
  
        UPDATE VEHICULO SET NOMBRE = V_NOMBRE,
                            MODELO = V_MODELO,
                            MARCA = V_MARCA 
                     WHERE COD_VEHICULO = V_COD_VEHICULO;
        
        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'D' THEN
     BEGIN
     
      -- Consultar codigo vehiculo
       SELECT COD_VEHICULO
         INTO V_COD_VEHICULO
         FROM VEHICULO
        WHERE NOMBRE = V_NOMBRE;
        
      IF (V_COD_VEHICULO IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar con la eliminacion';
      END IF;
      
      DELETE FROM VEHICULO WHERE COD_VEHICULO = V_COD_VEHICULO;
      COMMIT;
       
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -8;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_VEHICULO_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;

  END PRC_CRUD_VEHICULO_CARCENTER;

  PROCEDURE PRC_CRUD_DESC_SERVI_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_VALOR_MANO_OBRA   IN NUMBER, 
                                           E_DESCUENTO         IN NUMBER, 
                                           E_OBSERVACION       IN VARCHAR2, 
                                           E_NOM_PRODUCTO      IN VARCHAR2,
                                           E_CANT_VENDIDO      IN NUMBER,
                                           E_NUM_IDENT_MEC     IN VARCHAR2,
                                           S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2) AS
                                           
  V_TIPO_ACCION     VARCHAR2(1);
  V_SQL             VARCHAR2(4000);
  V_VALOR_MANO_OBRA DESCRIPCION_SERVICIO.VALOR_MANO_OBRA%TYPE; 
  V_DESCUENTO       DESCRIPCION_SERVICIO.DESCUENTO%TYPE; 
  V_OBSERVACION     DESCRIPCION_SERVICIO.OBSERVACION%TYPE; 
  V_COD_PRODUCTO    DESCRIPCION_SERVICIO.COD_PRODUCTO%TYPE;  
  V_NOM_PRODUCTO    PRODUCTO.NOMBRE_PRODUCTO%TYPE;
  V_CANT_VENDIDO    DESCRIPCION_SERVICIO.CAN_PRODUCTO_VENDIDO%TYPE;
  V_NUM_IDENT_MEC   MECANICO_RESPONSABLE.NUM_IDENT_MEC%TYPE;
  V_PORC_MANO_OBRA  NUMBER;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_VALOR_MANO_OBRA), UPPER (E_DESCUENTO), UPPER (E_OBSERVACION), UPPER (E_NOM_PRODUCTO),
         UPPER(E_CANT_VENDIDO), UPPER (E_NUM_IDENT_MEC)
    INTO V_TIPO_ACCION, V_VALOR_MANO_OBRA, V_DESCUENTO, V_OBSERVACION, V_NOM_PRODUCTO, V_CANT_VENDIDO, V_NUM_IDENT_MEC
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_VALOR_MANO_OBRA IS NULL OR E_DESCUENTO IS NULL OR E_OBSERVACION IS NULL OR E_NOM_PRODUCTO IS NULL OR 
          E_NUM_IDENT_MEC IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      --Consultar informacion
      SELECT COD_PRODUCTO
        INTO V_COD_PRODUCTO
        FROM PRODUCTO
       WHERE NOMBRE_PRODUCTO = V_NOM_PRODUCTO;
      
      BEGIN
        INSERT INTO DESCRIPCION_SERVICIO (COD_SERVICIO, VALOR_MANO_OBRA, DESCUENTO, OBSERVACION, COD_PRODUCTO, NUM_IDENT_MEC, CAN_PRODUCTO_VENDIDO)
                                  VALUES (SEQ_DESCRIPCION_SERVICIO.NEXTVAL, V_VALOR_MANO_OBRA, V_DESCUENTO, V_OBSERVACION,
                                          V_COD_PRODUCTO, V_NUM_IDENT_MEC, V_CANT_VENDIDO);
        
        COMMIT;
                                          
        IF V_VALOR_MANO_OBRA >= 3000000 THEN
        
          SELECT TO_NUMBER(DS.VALOR_MANO_OBRA * ( 1 - 0.5)) AS PORC_MANO_OBRA
            INTO V_PORC_MANO_OBRA
            FROM DESCRIPCION_SERVICIO DS, FACTURA FA
           WHERE DS.COD_SERVICIO = FA.COD_SERVICIO
             AND FA.NUM_FACTURA IN (SELECT MAX(F.NUM_FACTURA) 
                                      FROM FACTURA F);
          
            
          UPDATE DESCRIPCION_SERVICIO SET VALOR_MANO_OBRA = V_PORC_MANO_OBRA,
                                          DESCUENTO = 50
                                    WHERE NUM_IDENT_MEC = V_NUM_IDENT_MEC;
          COMMIT;
          
        END IF;
        
        
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_DESC_SERVI_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       IF E_NUM_IDENT_MEC IS NOT NULL THEN 
         V_SQL := 'SELECT COD_SERVICIO,
                   VALOR_MANO_OBRA,
                   DESCUENTO,
                   OBSERVACION, 
                   COD_PRODUCTO,
                   NUM_IDENT_MEC,
                   CAN_PRODUCTO_VENDIDO
              FROM DESCRIPCION_SERVICIO
             WHERE NUM_IDENT_MEC = ' || V_NUM_IDENT_MEC;
       ELSE
         V_SQL := 'SELECT COD_SERVICIO,
                          VALOR_MANO_OBRA,
                          DESCUENTO,
                          OBSERVACION, 
                          COD_PRODUCTO,
                          NUM_IDENT_MEC,
                          CAN_PRODUCTO_VENDIDO
                     FROM DESCRIPCION_SERVICIO';
      END IF;
      OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
      
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -4;
          S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_DESC_SERVI_CARCENTER';
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'U' THEN
    BEGIN
             
       IF (E_NUM_IDENT_MEC IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar la actualizacion';
       END IF;
       
        UPDATE DESCRIPCION_SERVICIO SET VALOR_MANO_OBRA = V_VALOR_MANO_OBRA,
                                        DESCUENTO = V_DESCUENTO,
                                        OBSERVACION = V_OBSERVACION
                                  WHERE NUM_IDENT_MEC = V_NUM_IDENT_MEC;
        
        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;
    END ;
   END IF;
   
   IF V_TIPO_ACCION = 'D' THEN
     BEGIN
        
      IF (E_NUM_IDENT_MEC IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'No se encontro la informacion para poder continuar con la eliminacion';
      END IF;
      
      DELETE FROM DESCRIPCION_SERVICIO WHERE NUM_IDENT_MEC = E_NUM_IDENT_MEC;
      COMMIT;
       
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -8;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_DESC_SERVI_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;
   
  END PRC_CRUD_DESC_SERVI_CARCENTER;

  PROCEDURE PRC_CRUD_FACTURA_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                        E_FECHA_FACTURA     IN DATE,
                                        E_PLACA             IN VARCHAR2,
                                        E_FORMA_PAGO        IN VARCHAR2,
                                        E_MEDIO_PAGO        IN VARCHAR2,
                                        E_IVA               IN NUMBER,
                                        E_VALOR_TOTAL_FACT  IN NUMBER,
                                        E_NUM_IDENT_CLI     IN VARCHAR2,
                                        E_NUM_IDENT_MEC     IN VARCHAR2,
                                        E_NOMBRE_ALMACEN    IN VARCHAR2,
                                        E_NOMBRE_VEHICULO   IN VARCHAR2,
                                        S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                        S_N_COD_SAL         OUT NUMBER,
                                        S_V_MSJ_SAL         OUT VARCHAR2) AS
                                        
  V_TIPO_ACCION      VARCHAR2(1);
  V_SQL              VARCHAR2(4000);
  V_FECHA_FACTURA    FACTURA.FECHA_FACTURA%TYPE;
  V_PLACA            FACTURA.PLACA%TYPE;
  V_FORMA_PAGO       FACTURA.FORMA_PAGO%TYPE;
  V_MEDIO_PAGO       FACTURA.MEDIO_PAGO%TYPE;
  V_IVA              FACTURA.IVA%TYPE;
  V_VALOR_TOTAL_FACT FACTURA.VALOR_TOTAL_FACT%TYPE;
  V_NUM_IDENT_CLI    CLIENTE.NUM_IDENT_CLI%TYPE;
  V_COD_SERVICIO     DESCRIPCION_SERVICIO.COD_SERVICIO%TYPE; -- Se consulta por V_NUM_IDENT_MEC
  V_COD_SUCURSAL     ALMACEN.COD_SUCURSAL%TYPE; -- Se consulta por V_NOMBRE_ALMACEN 
  V_COD_VEHICULO     VEHICULO.COD_VEHICULO%TYPE; -- Se valida por V_NOMBRE_VEHICULO
  V_NUM_IDENT_MEC    DESCRIPCION_SERVICIO.NUM_IDENT_MEC%TYPE;
  V_NOMBRE_ALMACEN   ALMACEN.NOMBRE_ALMACEN%TYPE;
  V_NOMBRE_VEHICULO  VEHICULO.NOMBRE%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_FECHA_FACTURA), UPPER (E_PLACA), UPPER (E_FORMA_PAGO), UPPER (E_MEDIO_PAGO), UPPER (E_IVA),
         UPPER (E_VALOR_TOTAL_FACT), UPPER (E_NUM_IDENT_CLI), UPPER (E_NUM_IDENT_MEC), UPPER (E_NOMBRE_ALMACEN), UPPER (E_NOMBRE_VEHICULO)
    INTO V_TIPO_ACCION, V_FECHA_FACTURA, V_PLACA, V_FORMA_PAGO, V_MEDIO_PAGO, V_IVA, V_VALOR_TOTAL_FACT, V_NUM_IDENT_CLI, 
         V_NUM_IDENT_MEC, V_NOMBRE_ALMACEN, V_NOMBRE_VEHICULO
    FROM DUAL;
  
  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_FECHA_FACTURA IS NULL OR E_PLACA IS NULL OR E_FORMA_PAGO IS NULL OR E_MEDIO_PAGO IS NULL OR E_IVA IS NULL OR 
          E_VALOR_TOTAL_FACT IS NULL OR E_NUM_IDENT_CLI IS NULL OR E_NUM_IDENT_MEC IS NULL OR E_NOMBRE_ALMACEN IS NULL)  THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;
      
      --Consultar informacion
      SELECT COD_SERVICIO
        INTO V_COD_SERVICIO
        FROM DESCRIPCION_SERVICIO
       WHERE NUM_IDENT_MEC = V_NUM_IDENT_MEC;
       
      SELECT COD_SUCURSAL
        INTO V_COD_SUCURSAL
        FROM ALMACEN 
       WHERE NOMBRE_ALMACEN = V_NOMBRE_ALMACEN;
       
       SELECT COD_VEHICULO
         INTO V_COD_VEHICULO
         FROM VEHICULO 
        WHERE NOMBRE = V_NOMBRE_VEHICULO;
      
      BEGIN
        INSERT INTO FACTURA (NUM_FACTURA, FECHA_FACTURA, PLACA, FORMA_PAGO, MEDIO_PAGO, IVA, VALOR_TOTAL_FACT,
                             NUM_IDENT_CLI, COD_SERVICIO, COD_SUCURSAL, COD_VEHICULO)
                      VALUES (SEQ_FACTURA.NEXTVAL, V_FECHA_FACTURA, V_PLACA, V_FORMA_PAGO, V_MEDIO_PAGO, V_IVA, V_VALOR_TOTAL_FACT,
                              V_NUM_IDENT_CLI, V_COD_SERVICIO, V_COD_SUCURSAL, V_COD_VEHICULO);
        COMMIT;
      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_FACTURA_CARCENTER.';
    END ;
   END IF;
   
    IF V_TIPO_ACCION = 'R' THEN
     BEGIN
       
       IF E_PLACA IS NOT NULL THEN 
         V_SQL := 'SELECT NUM_FACTURA,
                          FECHA_FACTURA,
                          PLACA,
                          FORMA_PAGO,
                          MEDIO_PAGO,
                          IVA,
                          VALOR_TOTAL_FACT,
                          NUM_IDENT_CLI,
                          COD_SERVICIO,
                          COD_SUCURSAL,
                          COD_VEHICULO
                     FROM FACTURA
                    WHERE PLACA = ' || V_PLACA;
       ELSE
         V_SQL := 'SELECT NUM_FACTURA,
                          FECHA_FACTURA,
                          PLACA,
                          FORMA_PAGO,
                          MEDIO_PAGO,
                          IVA,
                          VALOR_TOTAL_FACT,
                          NUM_IDENT_CLI,
                          COD_SERVICIO,
                          COD_SUCURSAL,
                          COD_VEHICULO
                     FROM FACTURA';
      END IF;
      OPEN S_CUR_CONSULTA_INFO FOR V_SQL;
      
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -4;
          S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_FACTURA_CARCENTER';
    END ;
   END IF;
   
   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
  
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -5;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_FACTURA_CARCENTER';
      
    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;
   
  END PRC_CRUD_FACTURA_CARCENTER;
  
  PROCEDURE PRC_CONSULTA_COMPRAS_CLIENTE (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                          S_N_COD_SAL         OUT NUMBER,
                                          S_V_MSJ_SAL         OUT VARCHAR2) AS
    
    BEGIN
      OPEN S_CUR_CONSULTA_INFO FOR 
        SELECT CL.NUM_IDENT_CLI,
               CL.TIPO_IDENT_CLI,
               CL.PRIMER_NOMBRE,
               CL.SEGUNDO_NOMBRE,
               CL.PRIMER_APELLIDO,
               CL.SEGUNDO_APELLIDO
          FROM CLIENTE CL, FACTURA FA
         WHERE CL.NUM_IDENT_CLI = FA.NUM_IDENT_CLI
           AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-60,'DD/MM/YYYY') 
           AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
         GROUP BY CL.NUM_IDENT_CLI, CL.TIPO_IDENT_CLI, CL.PRIMER_NOMBRE,
               CL.SEGUNDO_NOMBRE, CL.PRIMER_APELLIDO, CL.SEGUNDO_APELLIDO
        HAVING SUM(FA.VALOR_TOTAL_FACT) = 100000; 
        
     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';
  
     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_COMPRAS_CLIENTE';
        
      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
      
  END PRC_CONSULTA_COMPRAS_CLIENTE;

  PROCEDURE PRC_CONSULTA_PRODUCTOS (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                    S_N_COD_SAL         OUT NUMBER,
                                    S_V_MSJ_SAL         OUT VARCHAR2) AS
  BEGIN
    OPEN S_CUR_CONSULTA_INFO FOR 
       SELECT PRD.COD_PRODUCTO, PRD.NOMBRE_PRODUCTO
         FROM PRODUCTO PRD, DESCRIPCION_SERVICIO DS, FACTURA FA
        WHERE PRD.COD_PRODUCTO = DS.COD_PRODUCTO
          AND DS.COD_SERVICIO = FA.COD_SERVICIO
          AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-30,'DD/MM/YYYY') 
          AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
        GROUP BY PRD.COD_PRODUCTO, PRD.NOMBRE_PRODUCTO 
       HAVING SUM(DS.CAN_PRODUCTO_VENDIDO) = 100; 
        
     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';
  
     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_COMPRAS_CLIENTE';
        
      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
        
  END PRC_CONSULTA_PRODUCTOS;
                                    
  PROCEDURE PRC_CONSULTA_ALMACENES (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                    S_N_COD_SAL         OUT NUMBER,
                                    S_V_MSJ_SAL         OUT VARCHAR2) AS
  BEGIN
    OPEN S_CUR_CONSULTA_INFO FOR 
       SELECT AL.NOMBRE_ALMACEN, AL.DIRECCION, AL.CIUDAD
         FROM PRODUCTO PRD, DESCRIPCION_SERVICIO DS, FACTURA FA, ALMACEN AL
        WHERE PRD.COD_PRODUCTO = DS.COD_PRODUCTO
          AND DS.COD_SERVICIO = FA.COD_SERVICIO
          AND FA.COD_SUCURSAL = AL.COD_SUCURSAL
          AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-60,'DD/MM/YYYY') 
          AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
        GROUP BY AL.NOMBRE_ALMACEN, AL.DIRECCION, AL.CIUDAD 
       HAVING SUM(DS.CAN_PRODUCTO_VENDIDO) >= 100; 
        
     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';
  
     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_COMPRAS_CLIENTE';
        
      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
        
  END PRC_CONSULTA_ALMACENES;
  
  PROCEDURE PRC_CONSULTA_MANTENIMIENTOS (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2) AS
  BEGIN
      OPEN S_CUR_CONSULTA_INFO FOR 
        SELECT CL.NUM_IDENT_CLI,
               CL.TIPO_IDENT_CLI,
               CL.PRIMER_NOMBRE,
               CL.SEGUNDO_NOMBRE,
               CL.PRIMER_APELLIDO,
               CL.SEGUNDO_APELLIDO
          FROM CLIENTE CL, FACTURA FA
         WHERE CL.NUM_IDENT_CLI = FA.NUM_IDENT_CLI
           AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-30,'DD/MM/YYYY') 
           AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
         GROUP BY CL.NUM_IDENT_CLI, CL.TIPO_IDENT_CLI, CL.PRIMER_NOMBRE,
               CL.SEGUNDO_NOMBRE, CL.PRIMER_APELLIDO, CL.SEGUNDO_APELLIDO
        HAVING COUNT(FA.NUM_FACTURA) > 1;
        
     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';
  
     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_COMPRAS_CLIENTE';
        
      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
        
  END PRC_CONSULTA_MANTENIMIENTOS; 
  
  
  
END PKG_CAR_CENTER_PROJECT;
/
