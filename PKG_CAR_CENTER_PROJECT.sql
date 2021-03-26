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
    PROGRAMA                 : PRC_CRUD_SUCURSAL_CARCENTER
    DESCRIPCION              : Procedimiento que permite realizar las diferentes acciones (C = CREATE; R = READ; U = UPDATE; D = DELETE) 
                               para la tabla SUCURSAL
    AUTOR                    : Marielena Barrios Reinoso
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_V_ACCION                    IN VARCHAR2         indica la accion a realizar (C = CREATE; R = READ; U = UPDATE; D = DELETE)
    E_COD_SUCURSAL                IN NUMBER           indica el codigo de la sucursal
    E_NOMBRE_SUCURSAL             IN VARCHAR2         indica el nombre de la sucursal
    E_TELEFONO_CONTACTO           IN NUMBER           indica el numero de contacto de la sucursal
    E_DIRECCION                   IN VARCHAR2         indica la direccion de la sucursal
    E_CIUDAD                      IN VARCHAR2         indica la ciudad de la sucursal
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_SUCURSAL_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_COD_SUCURSAL      IN NUMBER,
                                           E_NOMBRE_SUCURSAL   IN VARCHAR2, 
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
    E_COD_PRODUCTO                IN NUMBER           indica el codigo del producto
    E_NOMBRE_PRODUCTO             IN VARCHAR2         indica el nombre del producto
    E_VALOR_UNITARIO              IN NUMBER           indica el valor unitario del producto
    E_CANTIDAD_PROD               IN NUMBER           indica la cantidad de los productos en stock
    E_DESCUENTO                   IN NUMBER           indica el valor de descuento en el producto
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_PRODUCTO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_COD_PRODUCTO      IN NUMBER,
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
    E_PLACA                       IN VARCHAR2         indaca la placa del vehiculo
    E_TIPO_VEHICULO               IN VARCHAR2         indica el tipo del vehiculo
    E_MODELO                      IN VARCHAR2         indica el modelo del vehiculo
    E_MARCA                       IN VARCHAR2         indica la marca del vehiculo
    E_NUM_MOTOR                   IN VARCHAR2         indica el numero del motor
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_VEHICULO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                           E_PLACA             IN VARCHAR2,
                                           E_TIPO_VEHICULO     IN VARCHAR2, 
                                           E_MODELO            IN VARCHAR2, 
                                           E_MARCA             IN VARCHAR2,
                                           E_NUM_MOTOR         IN VARCHAR2,
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
    E_COD_SERVICIO                IN NUMBER           indica el codigo del servicio
    E_VALOR_MANO_OBRA             IN NUMBER           indica el valor de la mano de obra del servicio
    E_DESCUENTO                   IN NUMBER           indica el valor de descuento del servicio
    E_OBSERVACION                 IN VARCHAR2         indica la observacion del sertvicio
    E_NUM_IDENT_MEC               IN VARCHAR2         indica el numero de identificacion del mecanico responsable
    S_CUR_CONSULTA_INFO           OUT SYS_REFCURSOR   indica la informacion consultada
    S_N_COD_SAL                   OUT NUMBER          indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2        indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_CRUD_DESC_SERVI_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                             E_COD_SERVICIO      IN NUMBER,
                                             E_VALOR_MANO_OBRA   IN NUMBER, 
                                             E_DESCUENTO         IN NUMBER, 
                                             E_OBSERVACION       IN VARCHAR2, 
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
    E_NUM_IDENT_CLI               IN VARCHAR2           indica el numero de identificacion del cliente
    E_COD_SUCURSAL                IN NUMBER             indica el codigo de la sucursal
    E_VALOR_MINIMO                IN NUMBER             indica el valor minimo de la factura
    E_VALOR_MAXIMO                IN NUMBER             indica el valor maximo de la factura
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
                                          E_NUM_IDENT_CLI     IN VARCHAR2,
                                          E_COD_SUCURSAL      IN NUMBER,
                                          E_VALOR_MINIMO      IN NUMBER,
                                          E_VALOR_MAXIMO      IN NUMBER,
                                          S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                          S_N_COD_SAL         OUT NUMBER,
                                          S_V_MSJ_SAL         OUT VARCHAR2);
 /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_DETALLE_PROD_CARCENTER
    DESCRIPCION              : Procedimiento que permite almacenar el detalle de los productos y cantidad vendida
    AUTOR                    : Marielena Barrios Reinoso

    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_COD_PRODUCTO                IN NUMBER             indica el codigo del producto
    E_CAN_PRODUCTO_VENDIDO        IN NUMBER             indica la cantidad de productos vendidos
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_DETALLE_PROD_CARCENTER (E_COD_PRODUCTO         IN NUMBER,
                                          E_CAN_PRODUCTO_VENDIDO IN NUMBER,
                                          S_N_COD_SAL            OUT NUMBER,
                                          S_V_MSJ_SAL            OUT VARCHAR2);

    /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_DETALLE_SER_CARCENTER
    DESCRIPCION              : Procedimiento que permite almacenar el detalle de servicios
    AUTOR                    : Marielena Barrios Reinoso

    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_COD_SERVICIO                IN NUMBER             indica el codigo del servicio
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */
    PROCEDURE PRC_DETALLE_SER_CARCENTER (E_COD_SERVICIO IN NUMBER,
                                         S_N_COD_SAL    OUT NUMBER,
                                         S_V_MSJ_SAL    OUT VARCHAR2);

   /* ---------------------------------------------------------------------------------------------------------
    PROYECTO                 : CAR_CENTER_PROJECT
    FECHA CREACION           : 24 de MARZO de 2021
    PROGRAMA                 : PRC_VALOR_FIN_MANTENIMIENTO
    DESCRIPCION              : Procedimiento que permite realizar el calculo final de la factura
    AUTOR                    : Marielena Barrios Reinoso
    ---------------------------------------------------------------------------------------------------------
    NOMBRE                         TIPO                 DESCRIPCION
    ---------------------------------------------------------------------------------------------------------
    E_COD_SERVICIO                IN NUMBER             indica el codigo del servicio
    S_N_COD_SAL                   OUT NUMBER            indica el codigo de salida (0 = Exitoso, 0 <> Error).
    S_V_MSJ_SAL                   OUT VARCHAR2          indica la descripcion de la ejecucion.
    ------------------------------------------------------------------------------------------------------------ */

    PROCEDURE PRC_VALOR_FIN_MANTENIMIENTO (E_NUM_FACTURA IN NUMBER,
                                           S_N_COD_SAL   OUT NUMBER,
                                           S_V_MSJ_SAL   OUT VARCHAR2);   

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
      IF (E_V_ACCION IS NULL OR E_NUM_IDENT_CLI IS NULL OR E_TIPO_IDENT_CLI IS NULL OR E_PRIMER_NOMBRE IS NULL OR E_PRIMER_APELLIDO IS NULL OR 
          E_NUMERO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CORREO_ELECTRONICO IS NULL ) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;

      BEGIN
        INSERT INTO CLIENTE (NUM_IDENT_CLI, TIPO_IDENT_CLI, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO,
                             SEGUNDO_APELLIDO, NUMERO_CONTACTO, DIRECCION, CORREO_ELECTRONICO)
                     VALUES (V_NUM_IDENT_CLI, V_TIPO_IDENT_CLI, V_PRIMER_NOMBRE, V_SEGUNDO_NOMBRE, V_PRIMER_APELLIDO,   
                             V_SEGUNDO_APELLIDO, V_NUMERO_CONTACTO, V_DIRECCION, V_CORREO_ELECTRONICO);
        COMMIT;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

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

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

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
     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';

    END;
   END IF;

   IF V_TIPO_ACCION = 'D' THEN
     BEGIN

      IF (E_NUM_IDENT_CLI IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'Por favor ingrese el parametro E_NUM_IDENT_CLI para poder continuar con la eliminacion';
      END IF;

      DELETE FROM CLIENTE WHERE NUM_IDENT_CLI = E_NUM_IDENT_CLI;
      COMMIT;
      S_N_COD_SAL := 0;
      S_V_MSJ_SAL := 'Proceso Exitoso.';

    END;
   END IF;

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
          IF (E_V_ACCION IS NULL OR E_NUM_IDENT_MEC IS NULL OR E_TIPO_IDENT_MEC IS NULL OR E_PRIMER_NOMBRE IS NULL OR E_PRIMER_APELLIDO IS NULL OR 
              E_NUMERO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CORREO_ELECTRONICO IS NULL OR
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

            S_N_COD_SAL := 0;
            S_V_MSJ_SAL := 'Proceso Exitoso.';

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
            S_N_COD_SAL := 0;
            S_V_MSJ_SAL := 'Proceso Exitoso.';

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
         S_N_COD_SAL := 0;
         S_V_MSJ_SAL := 'Proceso Exitoso.';

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
          S_N_COD_SAL := 0;
          S_V_MSJ_SAL := 'Proceso Exitoso.'; 

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

  PROCEDURE PRC_CRUD_SUCURSAL_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                         E_COD_SUCURSAL      IN NUMBER,
                                         E_NOMBRE_SUCURSAL   IN VARCHAR2, 
                                         E_TELEFONO_CONTACTO IN VARCHAR2, 
                                         E_DIRECCION         IN VARCHAR2, 
                                         E_CIUDAD            IN VARCHAR2,
                                         S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                         S_N_COD_SAL         OUT NUMBER,
                                         S_V_MSJ_SAL         OUT VARCHAR2) AS

  V_TIPO_ACCION       VARCHAR2(1);
  V_SQL               VARCHAR2(4000);
  V_COD_SUCURSAL      SUCURSAL.COD_SUCURSAL%TYPE;     
  V_NOMBRE_SUCURSAL   SUCURSAL.NOMBRE_SUCURSAL%TYPE;   
  V_DIRECCION         SUCURSAL.DIRECCION%TYPE;        
  V_TELEFONO_CONTACTO SUCURSAL.TELEFONO_CONTACTO%TYPE;
  V_CIUDAD            SUCURSAL.CIUDAD%TYPE;

  BEGIN
   BEGIN

   --Validacion de mayusculas
    SELECT UPPER (E_V_ACCION), UPPER (E_COD_SUCURSAL), UPPER (E_NOMBRE_SUCURSAL), UPPER (E_TELEFONO_CONTACTO), UPPER (E_DIRECCION), UPPER (E_CIUDAD)
      INTO V_TIPO_ACCION, V_COD_SUCURSAL, V_NOMBRE_SUCURSAL, V_TELEFONO_CONTACTO, V_DIRECCION, V_CIUDAD
      FROM DUAL;

    --Validacion valores validos para las acciones validas
    IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
    END IF;

    -- Guardar informacion en la tabla CLIENTE
     IF V_TIPO_ACCION = 'C' THEN

        -- validaciones de parametros de entrada
        IF (E_V_ACCION IS NULL OR E_NOMBRE_SUCURSAL IS NULL OR E_TELEFONO_CONTACTO IS NULL OR E_DIRECCION IS NULL OR E_CIUDAD IS NULL) THEN
          S_N_COD_SAL := -2;
          S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
        END IF;

        BEGIN
          INSERT INTO SUCURSAL (COD_SUCURSAL, NOMBRE_SUCURSAL, DIRECCION, TELEFONO_CONTACTO, CIUDAD)
                        VALUES (SEQ_SUCURSAL.NEXTVAL, V_NOMBRE_SUCURSAL, V_DIRECCION, V_TELEFONO_CONTACTO, V_CIUDAD);
          COMMIT;

          S_N_COD_SAL := 0;
          S_V_MSJ_SAL := 'Proceso Exitoso.';

        EXCEPTION WHEN OTHERS THEN
        S_N_COD_SAL := -3;
        S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_SUCURSAL_CARCENTER.';
      END ;
     END IF;

      IF V_TIPO_ACCION = 'R' THEN
       BEGIN

         IF E_COD_SUCURSAL IS NOT NULL THEN
           V_SQL := 'SELECT COD_SUCURSAL,
                            NOMBRE_SUCURSAL,
                            DIRECCION,
                            TELEFONO_CONTACTO,
                            CIUDAD
                       FROM SUCURSAL 
                      WHERE COD_SUCURSAL = '|| E_COD_SUCURSAL;
         ELSE
           V_SQL := 'SELECT COD_SUCURSAL,
                            NOMBRE_SUCURSAL,
                            DIRECCION,
                            TELEFONO_CONTACTO,
                            CIUDAD
                       FROM SUCURSAL';
         END IF;
          OPEN S_CUR_CONSULTA_INFO FOR V_SQL;

          S_N_COD_SAL := 0;
          S_V_MSJ_SAL := 'Proceso Exitoso.';

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              S_N_COD_SAL := -4;
              S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_SUCURSAL_CARCENTER';
      END ;
     END IF;

     IF V_TIPO_ACCION = 'U' THEN
      BEGIN

        -- validaciones de parametros de entrada
        IF (E_COD_SUCURSAL IS NULL) THEN
          S_N_COD_SAL := -5;
          S_V_MSJ_SAL := 'Por favor ingrese E_COD_SUCURSAL para continuar con la actualizacion.';
        END IF;

          UPDATE SUCURSAL SET NOMBRE_SUCURSAL = V_NOMBRE_SUCURSAL, 
                              DIRECCION = V_DIRECCION, 
                              TELEFONO_CONTACTO = V_TELEFONO_CONTACTO, 
                              CIUDAD = V_CIUDAD    
                       WHERE COD_SUCURSAL = V_COD_SUCURSAL;

          IF SQL%ROWCOUNT = 0 THEN
           S_N_COD_SAL := -6;
           S_V_MSJ_SAL := 'No existe registro para actualizar!.';
          END IF;
       COMMIT;
       S_N_COD_SAL := 0;
       S_V_MSJ_SAL := 'Proceso Exitoso.';

      END ;
     END IF;

     IF V_TIPO_ACCION = 'D' THEN
       BEGIN

        -- validaciones de parametros de entrada
        IF (E_COD_SUCURSAL IS NULL) THEN
          S_N_COD_SAL := -7;
          S_V_MSJ_SAL := 'Por favor ingrese E_COD_SUCURSAL para continuar con la eliminacion.';
        END IF;

        DELETE FROM SUCURSAL WHERE COD_SUCURSAL = V_COD_SUCURSAL;
        COMMIT;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

      END ;
     END IF;

     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -8;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_SUCURSAL_CARCENTER';

      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
     END;

  END PRC_CRUD_SUCURSAL_CARCENTER;

  PROCEDURE PRC_CRUD_PRODUCTO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                         E_COD_PRODUCTO      IN NUMBER,
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
    SELECT UPPER (E_V_ACCION), UPPER(E_COD_PRODUCTO), UPPER (E_NOMBRE_PRODUCTO), UPPER (E_VALOR_UNITARIO), UPPER (E_CANTIDAD_PROD), UPPER (E_DESCUENTO)
      INTO V_TIPO_ACCION, V_COD_PRODUCTO, V_NOMBRE_PRODUCTO, V_VALOR_UNITARIO, V_CANTIDAD_PROD, V_DESCUENTO
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

          S_N_COD_SAL := 0;
          S_V_MSJ_SAL := 'Proceso Exitoso.';

        EXCEPTION WHEN OTHERS THEN
        S_N_COD_SAL := -3;
        S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_PRODUCTO_CARCENTER.';
      END ;
     END IF;

      IF V_TIPO_ACCION = 'R' THEN
       BEGIN

         IF E_COD_PRODUCTO IS NOT NULL THEN

           V_SQL := 'SELECT COD_PRODUCTO,
                            NOMBRE_PRODUCTO,
                            VALOR_UNITARIO,
                            CANTIDAD_PROD,
                            DESCUENTO
                       FROM PRODUCTO = '|| E_COD_PRODUCTO;
         ELSE
           V_SQL := 'SELECT COD_PRODUCTO,
                            NOMBRE_PRODUCTO,
                            VALOR_UNITARIO,
                            CANTIDAD_PROD,
                            DESCUENTO
                       FROM PRODUCTO';
         END IF;

          OPEN S_CUR_CONSULTA_INFO FOR V_SQL;

          S_N_COD_SAL := 0;
          S_V_MSJ_SAL := 'Proceso Exitoso.';

          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              S_N_COD_SAL := -4;
              S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_PRODUCTO_CARCENTER';
      END ;
     END IF;

     IF V_TIPO_ACCION = 'U' THEN
      BEGIN

        -- validaciones de parametros de entrada
        IF (E_COD_PRODUCTO IS NULL) THEN
          S_N_COD_SAL := -5;
          S_V_MSJ_SAL := 'Por favor ingrese E_COD_PRODUCTO para continuar con la actualizacion.';
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

       S_N_COD_SAL := 0;
       S_V_MSJ_SAL := 'Proceso Exitoso.';

      END ;
     END IF;

     IF V_TIPO_ACCION = 'D' THEN
       BEGIN

       -- validaciones de parametros de entrada
        IF (E_COD_PRODUCTO IS NULL) THEN
          S_N_COD_SAL := -5;
          S_V_MSJ_SAL := 'Por favor ingrese E_COD_PRODUCTO para continuar con la eliminacion.';
        END IF;

        DELETE FROM PRODUCTO WHERE COD_PRODUCTO = V_COD_PRODUCTO;
        COMMIT;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

      END ;
     END IF;

     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -8;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_PRODUCTO_CARCENTER';

      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
     END;

  END PRC_CRUD_PRODUCTO_CARCENTER;

  PROCEDURE PRC_CRUD_VEHICULO_CARCENTER (E_V_ACCION          IN VARCHAR2,
                                         E_PLACA             IN VARCHAR2,
                                         E_TIPO_VEHICULO     IN VARCHAR2, 
                                         E_MODELO            IN VARCHAR2, 
                                         E_MARCA             IN VARCHAR2,
                                         E_NUM_MOTOR         IN VARCHAR2,
                                         S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                         S_N_COD_SAL         OUT NUMBER,
                                         S_V_MSJ_SAL         OUT VARCHAR2) AS

  V_TIPO_ACCION   VARCHAR2(1);
  V_SQL           VARCHAR2(4000);
  V_PLACA         VEHICULO.PLACA%TYPE; 
  V_TIPO_VEHICULO VEHICULO.TIPO_VEHICULO%TYPE;
  V_MODELO        VEHICULO.MODELO%TYPE;
  V_MARCA         VEHICULO.MARCA%TYPE;
  V_NUM_MOTOR     VEHICULO.NUM_MOTOR%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER(E_PLACA), UPPER (E_TIPO_VEHICULO), UPPER (E_MODELO), UPPER (E_MARCA), UPPER (E_NUM_MOTOR)
    INTO V_TIPO_ACCION, V_PLACA, V_TIPO_VEHICULO, V_MODELO, V_MARCA, V_NUM_MOTOR
    FROM DUAL;

  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN

      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_PLACA IS NULL OR E_TIPO_VEHICULO IS NULL OR E_MODELO IS NULL OR E_MARCA IS NULL OR E_NUM_MOTOR IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;

      BEGIN
        INSERT INTO VEHICULO (PLACA, TIPO_VEHICULO, MODELO, MARCA, NUM_MOTOR)
                      VALUES (V_PLACA, V_TIPO_VEHICULO, V_MODELO, V_MARCA, V_NUM_MOTOR);
        COMMIT;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_VEHICULO_CARCENTER.';
    END ;
   END IF;

    IF V_TIPO_ACCION = 'R' THEN
     BEGIN

       IF E_PLACA IS NOT NULL THEN

           V_SQL := 'SELECT PLACA,
                            TIPO_VEHICULO, 
                            MODELO,
                            MARCA,
                            NUM_MOTOR
                       FROM VEHICULO
                      WHERE PLACA = '|| E_PLACA;
         ELSE
           V_SQL := 'SELECT PLACA,
                            TIPO_VEHICULO, 
                            MODELO,
                            MARCA,
                            NUM_MOTOR
                       FROM VEHICULO';
         END IF;


        OPEN S_CUR_CONSULTA_INFO FOR V_SQL;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            S_N_COD_SAL := -4;
            S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_VEHICULO_CARCENTER';
    END ;
   END IF;

   IF V_TIPO_ACCION = 'U' THEN
    BEGIN

        -- validaciones de parametros de entrada
        IF (E_PLACA IS NULL) THEN
          S_N_COD_SAL := -5;
          S_V_MSJ_SAL := 'Por favor ingrese E_PLACA para continuar con la actualizacion.';
        END IF;

        UPDATE VEHICULO SET TIPO_VEHICULO = V_TIPO_VEHICULO,
                            MODELO = V_MODELO,
                            MARCA = V_MARCA,
                            NUM_MOTOR = V_NUM_MOTOR
                      WHERE PLACA = V_PLACA;

        IF SQL%ROWCOUNT = 0 THEN
         S_N_COD_SAL := -6;
         S_V_MSJ_SAL := 'No existe registro para actualizar!.';
        END IF;
     COMMIT;

     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';

    END ;
   END IF;

   IF V_TIPO_ACCION = 'D' THEN
     BEGIN

      -- validaciones de parametros de entrada
      IF (E_PLACA IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'Por favor ingrese E_PLACA para continuar con la eliminacion.';
      END IF;

      DELETE FROM VEHICULO WHERE PLACA = V_PLACA;
      COMMIT;

      S_N_COD_SAL := 0;
      S_V_MSJ_SAL := 'Proceso Exitoso.';

    END ;
   END IF;

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
                                           E_COD_SERVICIO      IN NUMBER,
                                           E_VALOR_MANO_OBRA   IN NUMBER, 
                                           E_DESCUENTO         IN NUMBER, 
                                           E_OBSERVACION       IN VARCHAR2, 
                                           E_NUM_IDENT_MEC     IN VARCHAR2,
                                           S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                           S_N_COD_SAL         OUT NUMBER,
                                           S_V_MSJ_SAL         OUT VARCHAR2) AS

  V_TIPO_ACCION     VARCHAR2(1);
  V_SQL             VARCHAR2(4000);
  V_COD_SERVICIO    DESCRIPCION_SERVICIO.COD_SERVICIO%TYPE;
  V_VALOR_MANO_OBRA DESCRIPCION_SERVICIO.VALOR_MANO_OBRA%TYPE; 
  V_DESCUENTO       DESCRIPCION_SERVICIO.DESCUENTO%TYPE; 
  V_OBSERVACION     DESCRIPCION_SERVICIO.OBSERVACION%TYPE;  
  V_NUM_IDENT_MEC   MECANICO_RESPONSABLE.NUM_IDENT_MEC%TYPE;
  V_PORC_MANO_OBRA  NUMBER;
  V_NUM_FACTURA     FACTURA.NUM_FACTURA%TYPE;

BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_COD_SERVICIO), UPPER (E_VALOR_MANO_OBRA), UPPER (E_DESCUENTO), UPPER (E_OBSERVACION),
         UPPER (E_NUM_IDENT_MEC)
    INTO V_TIPO_ACCION, V_COD_SERVICIO, V_VALOR_MANO_OBRA, V_DESCUENTO, V_OBSERVACION, V_NUM_IDENT_MEC
    FROM DUAL;

  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' AND V_TIPO_ACCION <> 'U' AND  V_TIPO_ACCION <> 'D' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ; U = UPDATE; D = DELETE, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN

      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_VALOR_MANO_OBRA IS NULL OR E_DESCUENTO IS NULL OR E_OBSERVACION IS NULL OR E_NUM_IDENT_MEC IS NULL) THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;

      BEGIN
        INSERT INTO DESCRIPCION_SERVICIO (COD_SERVICIO, VALOR_MANO_OBRA, DESCUENTO, OBSERVACION, NUM_IDENT_MEC)
                                  VALUES (SEQ_DESCRIPCION_SERVICIO.NEXTVAL, V_VALOR_MANO_OBRA, V_DESCUENTO, V_OBSERVACION, V_NUM_IDENT_MEC);
        COMMIT;

        IF V_VALOR_MANO_OBRA >= 3000000 THEN

          SELECT MAX(COD_SERVICIO) COD_SERVICIO
            INTO V_COD_SERVICIO
            FROM DESCRIPCION_SERVICIO;

          SELECT TO_NUMBER(DS.VALOR_MANO_OBRA * ( 1 - 0.50)) PORC_MANO_OBRA
            INTO V_PORC_MANO_OBRA
            FROM DESCRIPCION_SERVICIO DS, FACTURA FA
           WHERE DS.COD_SERVICIO = V_COD_SERVICIO
             AND FA.NUM_FACTURA IN (SELECT MAX(F.NUM_FACTURA) 
                                      FROM FACTURA F);

          --Actualizar valor de mano de obra con el 50%  
          UPDATE DESCRIPCION_SERVICIO SET VALOR_MANO_OBRA = V_PORC_MANO_OBRA,
                                          DESCUENTO = 50
                                    WHERE COD_SERVICIO = V_COD_SERVICIO;

          COMMIT;

        END IF;

        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

      EXCEPTION WHEN OTHERS THEN
      S_N_COD_SAL := -3;
      S_V_MSJ_SAL := 'Error en la Insercion o registro ya existe. --PRC_CRUD_DESC_SERVI_CARCENTER.';

    END ;
   END IF;

    IF V_TIPO_ACCION = 'R' THEN
     BEGIN

       IF E_COD_SERVICIO IS NOT NULL THEN 
         V_SQL := 'SELECT COD_SERVICIO,
                          VALOR_MANO_OBRA,
                          DESCUENTO,
                          OBSERVACION, 
                          NUM_IDENT_MEC
                    FROM DESCRIPCION_SERVICIO
                   WHERE COD_SERVICIO = ' || V_COD_SERVICIO;
       ELSE
         V_SQL := 'SELECT COD_SERVICIO,
                          VALOR_MANO_OBRA,
                          DESCUENTO,
                          OBSERVACION,
                          NUM_IDENT_MEC
                     FROM DESCRIPCION_SERVICIO';
      END IF;
      OPEN S_CUR_CONSULTA_INFO FOR V_SQL;

      S_N_COD_SAL := 0;
      S_V_MSJ_SAL := 'Proceso Exitoso.';

      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -4;
          S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_DESC_SERVI_CARCENTER';
    END ;
   END IF;

   IF V_TIPO_ACCION = 'U' THEN
    BEGIN

      -- validaciones de parametros de entrada
      IF (E_COD_SERVICIO IS NULL) THEN
        S_N_COD_SAL := -5;
        S_V_MSJ_SAL := 'Por favor ingrese E_COD_SERVICIO para continuar con la actualizacion.';
      END IF;

      UPDATE DESCRIPCION_SERVICIO SET VALOR_MANO_OBRA = V_VALOR_MANO_OBRA,
                                      DESCUENTO = V_DESCUENTO,
                                      OBSERVACION = V_OBSERVACION
                                WHERE COD_SERVICIO = V_COD_SERVICIO;

      IF SQL%ROWCOUNT = 0 THEN
       S_N_COD_SAL := -6;
       S_V_MSJ_SAL := 'No existe registro para actualizar!.';
      END IF;

     COMMIT;

     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';

    END;
   END IF;

   IF V_TIPO_ACCION = 'D' THEN

     BEGIN  
      -- validaciones de parametros de entrada
      IF (E_COD_SERVICIO IS NULL) THEN
        S_N_COD_SAL := -7;
        S_V_MSJ_SAL := 'Por favor ingrese E_COD_SERVICIO para continuar con la eliminacion.';
      END IF;

      -- Eliminacion   
      DELETE FROM DESCRIPCION_SERVICIO WHERE COD_SERVICIO = V_COD_SERVICIO;
      COMMIT;
      S_N_COD_SAL := 0;
      S_V_MSJ_SAL := 'Proceso Exitoso.';

    END ;
   END IF;

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
                                        E_NUM_IDENT_CLI     IN VARCHAR2,
                                        E_COD_SUCURSAL      IN NUMBER,
                                        E_VALOR_MINIMO      IN NUMBER,
                                        E_VALOR_MAXIMO      IN NUMBER,
                                        S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                        S_N_COD_SAL         OUT NUMBER,
                                        S_V_MSJ_SAL         OUT VARCHAR2) AS

  V_TIPO_ACCION      VARCHAR2(1);
  V_SQL              VARCHAR2(4000);
  V_VALOR_MINIMO     NUMBER;
  V_VALOR_MAXIMO     NUMBER;
  V_FECHA_FACTURA    FACTURA.FECHA_FACTURA%TYPE;
  V_PLACA            FACTURA.PLACA%TYPE;
  V_FORMA_PAGO       FACTURA.FORMA_PAGO%TYPE;
  V_MEDIO_PAGO       FACTURA.MEDIO_PAGO%TYPE;
  V_IVA              FACTURA.IVA%TYPE;
  V_VALOR_TOTAL_FACT FACTURA.VALOR_TOTAL_FACT%TYPE;
  V_NUM_IDENT_CLI    CLIENTE.NUM_IDENT_CLI%TYPE;
  V_VALOR_MANO_OBRA  DESCRIPCION_SERVICIO.VALOR_MANO_OBRA%TYPE;
  V_COD_SUCURSAL     SUCURSAL.COD_SUCURSAL%TYPE;  
  V_NUM_IDENT_MEC    DESCRIPCION_SERVICIO.NUM_IDENT_MEC%TYPE;


BEGIN
 BEGIN

 --Validacion de mayusculas
  SELECT UPPER (E_V_ACCION), UPPER (E_FECHA_FACTURA), UPPER (E_PLACA), UPPER (E_FORMA_PAGO), UPPER (E_MEDIO_PAGO), UPPER (E_IVA),
         UPPER (E_NUM_IDENT_CLI), UPPER (E_COD_SUCURSAL), UPPER (E_VALOR_MINIMO), UPPER (E_VALOR_MAXIMO)
    INTO V_TIPO_ACCION, V_FECHA_FACTURA, V_PLACA, V_FORMA_PAGO, V_MEDIO_PAGO, V_IVA, 
         V_NUM_IDENT_CLI, V_COD_SUCURSAL, V_VALOR_MINIMO, V_VALOR_MAXIMO
    FROM DUAL;

  --Validacion valores validos para las acciones validas
  IF( V_TIPO_ACCION <> 'C' AND  V_TIPO_ACCION <> 'R' ) THEN
      S_N_COD_SAL := -1;
      S_V_MSJ_SAL := 'La Accion a realizar debe ser C = CREATE; R = READ, por favor verifique.';
  END IF;

  -- Guardar informacion en la tabla CLIENTE
   IF V_TIPO_ACCION = 'C' THEN
   
	  IF E_FECHA_FACTURA IS NULL THEN
         V_FECHA_FACTURA := TRUNC(SYSDATE);
      END IF;

      -- validaciones de parametros de entrada
      IF (E_V_ACCION IS NULL OR E_FECHA_FACTURA IS NULL OR E_PLACA IS NULL OR E_FORMA_PAGO IS NULL OR E_MEDIO_PAGO IS NULL OR E_IVA IS NULL OR 
          E_NUM_IDENT_CLI IS NULL OR E_COD_SUCURSAL IS NULL)  THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;

      BEGIN

        INSERT INTO FACTURA (NUM_FACTURA, FECHA_FACTURA, PLACA, FORMA_PAGO, MEDIO_PAGO, IVA, NUM_IDENT_CLI, COD_SUCURSAL)
                     VALUES (SEQ_FACTURA.NEXTVAL, V_FECHA_FACTURA, V_PLACA, V_FORMA_PAGO, V_MEDIO_PAGO, V_IVA,
                             V_NUM_IDENT_CLI, V_COD_SUCURSAL);

        COMMIT;
        
       S_N_COD_SAL := 0;
       S_V_MSJ_SAL := 'Proceso Exitoso.';
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
                          NUM_IDENT_CLI,
                          COD_SUCURSAL,
                          VALOR_TOTAL_FACT
                     FROM FACTURA
                    WHERE PLACA = ' || V_PLACA;
       ELSE
         V_SQL := 'SELECT NUM_FACTURA,
                          FECHA_FACTURA,
                          PLACA,
                          FORMA_PAGO,
                          MEDIO_PAGO,
                          IVA, 
                          NUM_IDENT_CLI,
                          COD_SUCURSAL,
                          VALOR_TOTAL_FACT
                     FROM FACTURA';
      END IF;
      OPEN S_CUR_CONSULTA_INFO FOR V_SQL;

   S_N_COD_SAL := 0;
   S_V_MSJ_SAL := 'Proceso Exitoso.';
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -4;
          S_V_MSJ_SAL := 'Error consultando la informacion de la tabla cliente. --PRC_CRUD_FACTURA_CARCENTER';
    END ;
   END IF;
   
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
      S_N_COD_SAL := -5;
      S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CRUD_FACTURA_CARCENTER';

    WHEN OTHERS THEN
      S_N_COD_SAL := -99;
      S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
   END;

  END PRC_CRUD_FACTURA_CARCENTER;


  PROCEDURE PRC_DETALLE_PROD_CARCENTER (E_COD_PRODUCTO         IN NUMBER,
                                        E_CAN_PRODUCTO_VENDIDO IN NUMBER,
                                        S_N_COD_SAL            OUT NUMBER,
                                        S_V_MSJ_SAL            OUT VARCHAR2) AS  

  V_NUM_FACTURA FACTURA.NUM_FACTURA%TYPE;

  BEGIN
    BEGIN

      -- validaciones de parametros de entrada
      IF (E_COD_PRODUCTO IS NULL OR E_CAN_PRODUCTO_VENDIDO IS NULL)  THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
      END IF;

      SELECT MAX(FA.NUM_FACTURA)
        INTO V_NUM_FACTURA
        FROM FACTURA FA;

      INSERT INTO DETALLE_PRODUCTO (COD_PRODUCTO, NUM_FACTURA, CAN_PRODUCTO_VENDIDO)
                            VALUES (E_COD_PRODUCTO, V_NUM_FACTURA, E_CAN_PRODUCTO_VENDIDO);
      COMMIT;
      S_N_COD_SAL := 0;
      S_V_MSJ_SAL := 'Proceso Exitoso.';

      EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -2;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_DETALLE_PROD_CARCENTER';

      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
     END;

  END PRC_DETALLE_PROD_CARCENTER;

  PROCEDURE PRC_DETALLE_SER_CARCENTER (E_COD_SERVICIO IN NUMBER,
                                       S_N_COD_SAL    OUT NUMBER,
                                       S_V_MSJ_SAL    OUT VARCHAR2) AS 

    V_NUM_FACTURA FACTURA.NUM_FACTURA%TYPE;

    BEGIN
      BEGIN

        -- validaciones de parametros de entrada
        IF (E_COD_SERVICIO IS NULL)  THEN
          S_N_COD_SAL := -1;
          S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
        END IF;

        SELECT MAX(FA.NUM_FACTURA)
          INTO V_NUM_FACTURA
          FROM FACTURA FA;

        INSERT INTO DETALLE_DES_SERVICIO (COD_SERVICIO, NUM_FACTURA)
                                  VALUES (E_COD_SERVICIO, V_NUM_FACTURA);
        COMMIT;
        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -2;
          S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_DETALLE_SER_CARCENTER';

        WHEN OTHERS THEN
          S_N_COD_SAL := -99;
          S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
       END;

  END PRC_DETALLE_SER_CARCENTER;

   PROCEDURE PRC_VALOR_FIN_MANTENIMIENTO (E_NUM_FACTURA IN NUMBER,
                                          S_N_COD_SAL   OUT NUMBER,
                                          S_V_MSJ_SAL   OUT VARCHAR2) AS

    V_VALOR_TOTAL_FACT  FACTURA.VALOR_TOTAL_FACT%TYPE;
    V_VALOR_TOTAL_PROD  PRODUCTO.VALOR_UNITARIO%TYPE;
    V_VALOR_MANO_OBRA   DESCRIPCION_SERVICIO.VALOR_MANO_OBRA%TYPE;
    V_VALOR_PARCIAL_FAC NUMBER;

    BEGIN
      BEGIN

        -- validaciones de parametros de entrada
        IF (E_NUM_FACTURA IS NULL)  THEN
          S_N_COD_SAL := -1;
          S_V_MSJ_SAL := 'Por favor ingrese todos los parametros de entrada para continuar con la insercion.';
        END IF;

        SELECT SUM(VALOR_MANO_OBRA) VALOR_MANO_OBRA
          INTO V_VALOR_MANO_OBRA
          FROM DESCRIPCION_SERVICIO DS, DETALLE_DES_SERVICIO DT, FACTURA FA
         WHERE DS.COD_SERVICIO = DT.COD_SERVICIO
           AND DT.NUM_FACTURA = E_NUM_FACTURA;

        SELECT SUM(P.VALOR_UNITARIO * DP.CAN_PRODUCTO_VENDIDO) VALOR_TOTAL_PROD
          INTO V_VALOR_TOTAL_PROD
          FROM PRODUCTO P, DETALLE_PRODUCTO DP, FACTURA FA
         WHERE P.COD_PRODUCTO = DP.COD_PRODUCTO
           AND DP.NUM_FACTURA = E_NUM_FACTURA;

         V_VALOR_PARCIAL_FAC := V_VALOR_MANO_OBRA + V_VALOR_TOTAL_PROD;

        SELECT TO_NUMBER(V_VALOR_PARCIAL_FAC * (FA.IVA / 100) + V_VALOR_PARCIAL_FAC)
          INTO V_VALOR_TOTAL_FACT
          FROM FACTURA FA
         WHERE FA.NUM_FACTURA = E_NUM_FACTURA;

         UPDATE FACTURA SET VALOR_TOTAL_FACT = V_VALOR_TOTAL_FACT
                      WHERE NUM_FACTURA = E_NUM_FACTURA;        
        COMMIT;
        S_N_COD_SAL := 0;
        S_V_MSJ_SAL := 'Proceso Exitoso.';

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
          S_N_COD_SAL := -2;
          S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_VALOR_FIN_MANTENIMIENTO';

        WHEN OTHERS THEN
          S_N_COD_SAL := -99;
          S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);
       END;
  END PRC_VALOR_FIN_MANTENIMIENTO;

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
         FROM PRODUCTO PRD, DETALLE_PRODUCTO DP, FACTURA FA
        WHERE PRD.COD_PRODUCTO = DP.COD_PRODUCTO
          AND DP.NUM_FACTURA = FA.NUM_FACTURA
          AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-30,'DD/MM/YYYY') 
          AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
        GROUP BY PRD.COD_PRODUCTO, PRD.NOMBRE_PRODUCTO 
        HAVING SUM(DP.CAN_PRODUCTO_VENDIDO) = 100; 

     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';

     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_PRODUCTOS';

      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);

  END PRC_CONSULTA_PRODUCTOS;

  PROCEDURE PRC_CONSULTA_ALMACENES (S_CUR_CONSULTA_INFO OUT SYS_REFCURSOR,
                                    S_N_COD_SAL         OUT NUMBER,
                                    S_V_MSJ_SAL         OUT VARCHAR2) AS
  BEGIN
     OPEN S_CUR_CONSULTA_INFO FOR 
       SELECT AL.NOMBRE_SUCURSAL, AL.DIRECCION, AL.CIUDAD
         FROM PRODUCTO PRD, FACTURA FA, SUCURSAL AL, DETALLE_PRODUCTO DP
        WHERE PRD.COD_PRODUCTO = DP.COD_PRODUCTO
          AND FA.COD_SUCURSAL = AL.COD_SUCURSAL
          AND TRUNC(FA.FECHA_FACTURA) >= TO_CHAR(SYSDATE-60,'DD/MM/YYYY') 
          AND TRUNC(FA.FECHA_FACTURA) <= TO_CHAR(SYSDATE,'DD/MM/YYYY') 
        GROUP BY AL.NOMBRE_SUCURSAL, AL.DIRECCION, AL.CIUDAD 
       HAVING SUM(DP.CAN_PRODUCTO_VENDIDO) >= 100; 

     S_N_COD_SAL := 0;
     S_V_MSJ_SAL := 'Proceso Exitoso.';

     EXCEPTION
      WHEN NO_DATA_FOUND THEN
        S_N_COD_SAL := -1;
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_ALMACENES';

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
        S_V_MSJ_SAL := 'PKG_CAR_CENTER_PROJECT.PRC_CONSULTA_MANTENIMIENTOS';

      WHEN OTHERS THEN
        S_N_COD_SAL := -99;
        S_V_MSJ_SAL := SUBSTR(SQLERRM, 1, 200);

  END PRC_CONSULTA_MANTENIMIENTOS; 

END PKG_CAR_CENTER_PROJECT;
/
