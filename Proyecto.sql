
/*==============================================================*/
/* Table: ANUNCIO                                               */
/*==============================================================*/
create table ANUNCIO (
   COD_ANUNCIO          NUMBER(15)            not null,
   ANUNCIO              varchar2(300)         not null,
   FECHA_INICIO         DATE                  not null,
   FECHA_FIN            DATE                  not null,
   constraint PK_ANUNCIO primary key (COD_ANUNCIO)
);

Create Sequence SQC_ANUNCIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: ASIGNAR_ROL                                           */
/*==============================================================*/
create table ASIGNAR_ROL (
   COD_ROL              NUMBER(3)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   constraint PK_ASIGNAR_ROL primary key (COD_EMPLEADO, COD_ROL)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   COD_CLIENTE          NUMBER(15)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   constraint PK_CLIENTE primary key (COD_CLIENTE)
);

Create Sequence SQC_CLIENTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   DEPARTAMENTO         varchar2(100)         not null,
   constraint PK_DEPARTAMENTO primary key (COD_DEPARTAMENTO)
);

Create Sequence SQC_DEPARTAMENTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   COD_DETALLE          NUMBER(15)            not null,
   NO_FACTURA           NUMBER(15)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_INVENTARIO       NUMBER(15)            not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_PRODUCTO         NUMBER(15)            not null,
   INV_COD_SUCURSAL     NUMBER(3)             not null,
   CANTIDAD             NUMBER(10)            not null,
   PRECIO               NUMBER(10,2)          not null,
   constraint PK_DETALLE_FACTURA primary key (COD_DETALLE, NO_FACTURA, COD_SUCURSAL)
);

Create Sequence SQC_DETALLE_FACTURA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   COD_DIRECCION        NUMBER(15)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   DIRECCION            varchar2(500)         not null,
   constraint PK_DIRECCION primary key (COD_PERSONA, COD_DIRECCION)
);

Create Sequence SQC_DIRECCION
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   FECHA_INGRESO        DATE                  not null,
   COD_EMP_EMPLEADO     NUMBER(10),
   constraint PK_EMPLEADO primary key (COD_EMPLEADO) Enable
);

Create Sequence SQC_EMPLEADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: EMPLEADO_SUCURSAL                                     */
/*==============================================================*/
create table EMPLEADO_SUCURSAL (
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   constraint PK_EMPLEADO_SUCURSAL primary key (COD_EMPLEADO, COD_SUCURSAL)
);

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table ESTADO (
   COD_ESTADO           NUMBER(10)             not null,
   ESTADO               Varchar2(50)          not null,
   constraint PK_ESTADO primary key (COD_ESTADO)
);

Create Sequence SQC_ESTADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   NO_FACTURA           NUMBER(15)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   SERIE                varchar2(50)          not null,
   FECHA_EMISION        DATE                  not null,
   COD_CLIENTE          NUMBER(15)            not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_ESTADO           NUMBER(1)             not null,
   constraint PK_FACTURA primary key (COD_EMPLEADO, COD_SUCURSAL, NO_FACTURA)
);

Create Sequence SQC_FACTURA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   COD_GENERO           NUMBER(1)             not null,
   GENERO               varchar2(15)          not null,
   constraint PK_GENERO primary key (COD_GENERO)
);

Create Sequence SQC_GENERO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   COD_INVENTARIO       NUMBER(15)            not null,
   COD_PRODUCTO         NUMBER(15)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   CANTIDAD             NUMBER(5,2)           not null,
   PRECIO               NUMBER(6,2)           not null,
   COD_ESTADO           NUMBER(1)             not null,
   constraint PK_INVENTARIO primary key (COD_INVENTARIO, COD_PRODUCTO, COD_SUCURSAL)
);

Create Sequence SQC_INVENTARIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table MENU (
   COD_MENU             NUMBER(2)             not null,
   MENU                 varchar2(100)         not null,
   constraint PK_MENU primary key (COD_MENU)
);

Create Sequence SQC_MENU
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: MENU_ROL                                              */
/*==============================================================*/
create table MENU_ROL (
   COD_MENU             NUMBER(2)             not null,
   COD_ROL              NUMBER(3)             not null,
   constraint PK_MENU_ROL primary key (COD_ROL, COD_MENU)
);


/*==============================================================*/
/* Table: MOVIMIENTO_INVENTARIO                                 */
/*==============================================================*/
create table MOVIMIENTO_INVENTARIO (
   ID_MOVIMIENTO        NUMBER(15)            not null,
   FECHA                DATE                  not null,
   COD_MOVIMIENTO       NUMBER(2)             not null,
   COD_PRODUCTO         NUMBER(15)            not null,
   CANTIDAD             NUMBER(15)            not null,
   PRECIO               NUMBER(6,2)           not null,
   constraint PK_MOVIMIENTO_INVENTARIO primary key (COD_MOVIMIENTO, COD_PRODUCTO, ID_MOVIMIENTO)
);

Create Sequence SQC_MOVIMIENTO_INVENTARIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO (
   COD_MUNICIPIO        NUMBER(3)             not null,
   COD_DEPARTAMENTO     NUMBER(3)             not null,
   MUNICIPIO            varchar2(100)         not null,
   constraint PK_MUNICIPIO primary key (COD_MUNICIPIO)
);

Create Sequence SQC_MUNICIPIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   COD_PERSONA          NUMBER(15)            not null,
   NO_IDENTIFICACION    varchar2(15)          not null,
   COD_IDENTIFICACION   NUMBER(3)             not null,
   COD_SEXO             NUMBER(3)             not null,
   COD_GENERO           NUMBER(1)             not null,
   NOMBRE_1             varchar2(75)          not null,
   NOMBRE_2             varchar2(75),
   APELLIDO_1           varchar2(75)          not null,
   APELLIDO_2           varchar2(75),
   APELLIDO_CASADA      varchar2(75),
   FECHA_NACIMIENTO     DATE                  not null,
   constraint PK_PERSONA primary key (COD_PERSONA)
);

Create Sequence SQC_PERSONA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   COD_PRODUCTO         NUMBER(15)            not null,
   PRODUCTO             varchar2(300)         not null,
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   COD_ESTADO           NUMBER(1)             not null,
   constraint PK_PRODUCTO primary key (COD_PRODUCTO)
);

Create Sequence SQC_PRODUCTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   COD_ROL              NUMBER(3)             not null,
   ROL                  varchar2(100)         not null,
   constraint PK_ROL primary key (COD_ROL)
);

Create Sequence SQC_ROL
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
create table SEXO (
   COD_SEXO             NUMBER(3)             not null,
   SEXO                 varchar2(100)         not null,
   constraint PK_SEXO primary key (COD_SEXO)
);

Create Sequence SQC_SEXO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   COD_SUCURSAL         NUMBER(3)             not null,
   COD_MUNICIPIO        NUMBER(3)             not null,
   NOMBRE_SUCURSAL      varchar2(200)         not null,
   constraint PK_SUCURSAL primary key (COD_SUCURSAL)
);

Create Sequence SQC_SUCURSAL
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   COD_TELEFONO         NUMBER(15)            not null,
   COD_PERSONA          NUMBER(15)            not null,
   TELEFONO             varchar2(15)          not null,
   constraint PK_TELEFONO primary key (COD_PERSONA, COD_TELEFONO)
);

Create Sequence SQC_TELEFONO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TIPO_IDENTIFICACION                                   */
/*==============================================================*/
create table TIPO_IDENTIFICACION (
   COD_IDENTIFICACION   NUMBER(3)             not null,
   TIPO_IDENTIFICACION  varchar2(100)         not null,
   constraint PK_TIPO_IDENTIFICACION primary key (COD_IDENTIFICACION)
);

Create Sequence SQC_TIPO_IDENTIFICACION
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TIPO_MOVIMIENTO                                       */
/*==============================================================*/

create table TIPO_MOVIMIENTO (
   COD_MOVIMIENTO       NUMBER(2)             not null,
   TIPO_MOVIMIENTO      varchar2(100)         not null,
   constraint PK_TIPO_MOVIMIENTO primary key (COD_MOVIMIENTO)
);

Create Sequence SQC_TIPO_MOVIMIENTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TURNO                                                 */
/*==============================================================*/
create table TURNO (
   COD_TURNO            NUMBER(1)             not null,
   TURNO                varchar2(20)          not null,
   constraint PK_TURNO primary key (COD_TURNO)
);

Create Sequence SQC_TURNO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TURNO_EMPLEADO                                        */
/*==============================================================*/
create table TURNO_EMPLEADO (
   COD_TURNO            NUMBER(1)             not null,
   COD_EMPLEADO         NUMBER(10)            not null,
   COD_SUCURSAL         NUMBER(3)             not null,
   constraint PK_TURNO_EMPLEADO primary key (COD_EMPLEADO, COD_SUCURSAL, COD_TURNO)
);

/*==============================================================*/
/* Table: UNIDAD_MEDIDA                                         */
/*==============================================================*/
create table UNIDAD_MEDIDA (
   COD_UNIDAD_MEDIDA    NUMBER(3)             not null,
   UNIDAD_MEDIDA        varchar2(100)         not null,
   constraint PK_UNIDAD_MEDIDA primary key (COD_UNIDAD_MEDIDA)
);

Create Sequence SQC_UNIDAD_MEDIDA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* ALTERS:                                                      */
/*==============================================================*/

alter table EMPLEADO
   add constraint FK_EMPLEADO_EMPLEADO foreign key (COD_EMP_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO) Enable; 

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_ROL foreign key (COD_ROL)
      references ROL (COD_ROL);

alter table ASIGNAR_ROL
   add constraint FK_ASIGNAR_EMPLEADO foreign key (COD_EMPLEADO, COD_SUCURSAL)
      references EMPLEADO_SUCURSAL (COD_EMPLEADO, COD_SUCURSAL);

alter table CLIENTE
   add constraint FK_CLIENTE_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_INVENTAR foreign key (COD_INVENTARIO, COD_PRODUCTO, INV_COD_SUCURSAL)
      references INVENTARIO (COD_INVENTARIO, COD_PRODUCTO, COD_SUCURSAL);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE_FACTURA foreign key (COD_EMPLEADO, COD_SUCURSAL, NO_FACTURA)
      references FACTURA (COD_EMPLEADO, COD_SUCURSAL, NO_FACTURA);

alter table DIRECCION
   add constraint FK_DIRECCIO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table EMPLEADO_SUCURSAL
   add constraint FK_EMPLEADO_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table EMPLEADO_SUCURSAL
   add constraint FK_EMPLEADO_SUCURSAL_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);

alter table FACTURA
   add constraint FK_FACTURA_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table FACTURA
   add constraint FK_FACTURA_ESTADO foreign key (COD_ESTADO)
      references ESTADO (COD_ESTADO);

alter table FACTURA
   add constraint FK_FACTURA_EMPLEADO foreign key (COD_EMPLEADO, COD_SUCURSAL)
      references EMPLEADO_SUCURSAL (COD_EMPLEADO, COD_SUCURSAL);

alter table INVENTARIO
   add constraint FK_INVENTAR_PRODUCTO foreign key (COD_PRODUCTO)
      references PRODUCTO (COD_PRODUCTO);

alter table INVENTARIO
   add constraint FK_INVENTAR_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table INVENTARIO
   add constraint FK_INVENTAR_ESTADO foreign key (COD_ESTADO)
      references ESTADO (COD_ESTADO);

alter table MENU_ROL
   add constraint FK_MENU_ROL_MENU foreign key (COD_MENU)
      references MENU (COD_MENU);

alter table MENU_ROL
   add constraint FK_MENU_ROL_ROL foreign key (COD_ROL)
      references ROL (COD_ROL);

alter table MOVIMIENTO_INVENTARIO
   add constraint FK_MOVIMIENTO_PRODUCTO foreign key (COD_PRODUCTO)
      references PRODUCTO (COD_PRODUCTO);

alter table MOVIMIENTO_INVENTARIO
   add constraint FK_MOVIMIENTO_TIPO_MOVIMIENTO foreign key (COD_MOVIMIENTO)
      references TIPO_MOVIMIENTO (COD_MOVIMIENTO);

alter table MUNICIPIO
   add constraint FK_MUNICIPIO_DEPARTAMENTO foreign key (COD_DEPARTAMENTO)
      references DEPARTAMENTO (COD_DEPARTAMENTO);

alter table PERSONA
   add constraint FK_PERSONA_TIPO_IDENTIFICACION foreign key (COD_IDENTIFICACION)
      references TIPO_IDENTIFICACION (COD_IDENTIFICACION);

alter table PERSONA
   add constraint FK_PERSONA_SEXO foreign key (COD_SEXO)
      references SEXO (COD_SEXO);

alter table PERSONA
   add constraint FK_PERSONA_GENERO foreign key (COD_GENERO)
      references GENERO (COD_GENERO);

alter table PRODUCTO
   add constraint FK_PRODUCTO_UNIDAD_MEDIDA foreign key (COD_UNIDAD_MEDIDA)
      references UNIDAD_MEDIDA (COD_UNIDAD_MEDIDA);

alter table PRODUCTO
   add constraint FK_PRODUCTO_ESTADO foreign key (COD_ESTADO)
      references ESTADO (COD_ESTADO);

alter table SUCURSAL
   add constraint FK_SUCURSAL_MUNICIPIO foreign key (COD_MUNICIPIO)
      references MUNICIPIO (COD_MUNICIPIO);

alter table TELEFONO
   add constraint FK_TELEFONO_PERSONA foreign key (COD_PERSONA)
      references PERSONA (COD_PERSONA);

alter table TURNO_EMPLEADO
   add constraint FK_TURNO_EMPLEADO foreign key (COD_EMPLEADO, COD_SUCURSAL)
      references EMPLEADO_SUCURSAL (COD_EMPLEADO, COD_SUCURSAL);

alter table TURNO_EMPLEADO
   add constraint FK_TURNO_TURNO foreign key (COD_TURNO)
      references TURNO (COD_TURNO);


/*==============================================================*/
/* Insercion de datos manual                                    */
/*==============================================================*/


insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Alta Verapaz');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Baja Verapaz');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Chimaltenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Chiquimula');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'El Progreso');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Escuintla');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Guatemala');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Huehuetenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Izabal');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Jalapa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Jutiapa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Peten');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Quetzaltenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Retalhuleu');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Sacatepequez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'San Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Rosa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Solola');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Suchitepequez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Totonicapan');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Zacapa');


/*==============================================================*/
/* Inserccion de Municipios                                    */
/*==============================================================*/

-----------------ALTA VERAPAZ--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Coban');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Santa Cruz Verapaz');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'San Cristobal Verapaz');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Tactic');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Tamahu');

-----------------BAJA VERAPAZ------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Salama');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'San Miguel Chija');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Rabinal');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Cubulto');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Granados');

-----------------Chimaltenango-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Chimaltenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Tecpan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Patzun');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Zaragoza');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'El Tejar');

-----------------Chiquimula-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Jocotan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Camotan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Olapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Ipala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Esquipulas');

------------------El PROGRESO-------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Guastatoya');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Sanarate');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Morazan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'El Jicaro');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Sansare');

------------------ESCUINTLA-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Siqunala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'La Gomera');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Palin');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Nueva Concepcion');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Puerto San Jose');

-----------------GUATEMALA-------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'San Jose Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Santa Catarina Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Fraijanes');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Mixco');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Villa Nueva');

------------------HUHUETENANANGO--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Chiantla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'La Libertad');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Santa Eulalia');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Santa Barbara');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Colotenango');


-------------------IZABAL----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Puerto Barrios');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Livingston');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'El Estor');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Morales');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Los Amates');

--------------------JALAPA---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Pedro Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'Monjas');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'Mataquescuintla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Luis Jilotepeque');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Manuel Chaparron');

--------------------JUTIAPA--------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Jutiapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'El Progreso');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Agua Blanca');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Asuncion Mita');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Jalpatagua');

---------------------PETEN---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Flores');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'San Benito');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'La Libertad');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Poptun');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Melchor de Mencos');

-------------------Quetzaltenango--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Salcaja');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Caantel');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Colomba');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Coatepeque');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Genova');

-------------------RETALHULEU--------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'Champerico');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Sebastian');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Carlos');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Felipe');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'Santa Cruz');

------------------SACATEPEQUEZ-----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Antigua Guatemala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Sumpago');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Ciudad Vieja');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'San Lucas Sacatepequez');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Santa Lucia Milpas Altas');

--------------------San Marcos-----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'San Pedro Sacatepequez');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'Tacana');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'Malacatan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'San Antonio');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'El Tumbador');

-------------------Santa Rosa------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Cuilapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Barberena');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Chiquimulilla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Pueblo Nuevo Viñas');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Taxisco');

------------------Solola---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Nahuala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Santiago Atitlan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Panajachel');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'San Pedro la Laguna');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'San Lucas Toliman');

-------------------Suchitepequez---------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Mazatenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Patulul');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Chicacao');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'San Bernandino');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Santo Domingo');

--------------------Totonicapan----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Francisco el Alto');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'Momostenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Cristobal');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Bartolo');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'La Reforma');

------------------Zacapa-------------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Estanzuela');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Rio Hondo');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Teculutan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Gualan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Cabañas');

insert into ANUNCIO (COD_ANUNCIO, ANUNCIO, FECHA_INICIO, FECHA_FIN) values (SQC_ANUNCIO.Nextval, 'Primer anuncio de proyecto', Sysdate, to_date ('01-01-2021','dd-mm-yy'));


insert into ESTADO (COD_ESTADO, ESTADO) values (SQC_ESTADO.Nextval, 'EN STOCK');
insert into ESTADO (COD_ESTADO, ESTADO) values (SQC_ESTADO.Nextval, 'AGOTADO');


insert into GENERO (COD_GENERO, GENERO) values (SQC_GENERO.Nextval, 'HOMBRE');
insert into GENERO (COD_GENERO, GENERO) values (SQC_GENERO.Nextval, 'MUJER');
insert into GENERO (COD_GENERO, GENERO) values (SQC_GENERO.Nextval, 'OTRO');


insert into SEXO (COD_SEXO, SEXO) values (SQC_SEXO.Nextval, 'MASCULINO');
insert into SEXO (COD_SEXO, SEXO) values (SQC_SEXO.Nextval, 'FEMENINO');

insert into TIPO_IDENTIFICACION (COD_IDENTIFICACION, TIPO_IDENTIFICACION) values (SQC_TIPO_IDENTIFICACION.Nextval, 'DPI');
insert into TIPO_IDENTIFICACION (COD_IDENTIFICACION, TIPO_IDENTIFICACION) values (SQC_TIPO_IDENTIFICACION.Nextval, 'LICENCIA DE CONDUCIR');
insert into TIPO_IDENTIFICACION (COD_IDENTIFICACION, TIPO_IDENTIFICACION) values (SQC_TIPO_IDENTIFICACION.Nextval, 'PASAPORTE');
insert into TIPO_IDENTIFICACION (COD_IDENTIFICACION, TIPO_IDENTIFICACION) values (SQC_TIPO_IDENTIFICACION.Nextval, 'EXTRANJERO');




insert into TURNO (COD_TURNO, TURNO) values (SQC_TURNO.Nextval, 'DIURNO');
insert into TURNO (COD_TURNO, TURNO) values (SQC_TURNO.Nextval, 'NOCTURNO');
insert into TURNO (COD_TURNO, TURNO) values (SQC_TURNO.Nextval, 'MIXTO');


insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '5901782430101', 2, 1, 1, 'ALEX', 'JOEL', 'HERNANDEZ', 'LOPEZ', NULL, '21-07-1992');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '3992782680102', 1, 1, 1, 'LUIS', 'ALEJANDRO', 'CORONADO', 'CORONADO', NULL, '15-08-1963');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '7010101830202', 1, 2, 2, 'ANA', 'SOFIA', 'FUENTES', 'ALVAREZ', 'CARRILLO', '31-10-1977');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '3231213560201', 2, 1, 1, 'BARTOLOME', 'ISAI', 'GONZALES', 'LOPEZ', NULL, '16-8-1978');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6261473190117', 1, 2, 2, 'CARLOTA', 'ALEJANDRA', 'GONZALES', 'GUTIERREZ', NULL, '30-04-2000');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '3485256910101', 1, 2, 3, 'DINA', ' MARIA', 'CASTILLO', 'ALVAREZ', NULL, '01-03-2001');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '8255901470208', 2, 1, 3, 'LUIS', 'ESTEBAN', 'PEREZ', 'LOPEZ', NULL, '25-01-1994');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '9779579170316', 1, 1, 1, 'FERNANDO', 'ISMAEL', 'BARRIOS', 'CASTILLA', NULL, '14-02-1980');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '4510929470401', 2, 2, 2, 'ANA', 'GABRIELA', 'CUXUM', 'HERNANDEZ', 'MENDEZ', '14-09-1978');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '2609695100405', 2, 1, 1, 'DANIEL', 'HUMBERTO', 'MOTTA', 'CASTILLO', NULL, '20-11-2001');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '2730002000706', 1, 1, 1, 'PAULINO', 'DANIEL', 'JIMENEZ', 'SAMAYOA', NULL, '03-12-2003');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '8206640010707', 2, 2, 3, 'ANA', 'NEREIDA', 'LUCERO', 'CASTILLO', NULL, '07-06-2000');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6915570040711', 1, 1, 3, 'LUIS', 'GONZALO', 'PAREDES', 'CAMPOS', NULL, '26-05-1985');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6239208480303', 1, 1, 1, 'JEREMIAS', NULL, 'CARBAJO', 'OSORIO', NULL, '21-04-1999');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '4891356651229', 2, 1, 1, 'JOSE', 'MARIO', 'HERNANDEZ', 'OLIVARES', NULL, '12-04-1990');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '4114983741228', 1, 2, 2, 'JEIMY', 'VANESA', 'COLINDRES', 'HURTADO', 'OLIVARES', '17-07-1991');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6630258991310', 2, 1, 1, 'ARTURO', 'VICENTE', 'RUIZ', 'MENDOZA', NULL, '03-11-1983');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6560079711311', 2, 1, 1, 'IAN', 'CARLOS', 'LEIVA', 'BARRIOS', NULL, '07-10-1970');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6816462731314', 1, 2, 2, 'PAULINA', NULL, 'BURGOS', 'CASTELLANOS', 'ASTURIAS', '25-08-1996');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '9271936121229', 2, 2, 2, 'VICTORIA', 'MARIANELA', 'MORALES', 'LINARES', NULL, '24-06-1999');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '6078860591201', 1, 2, 2, 'SONIA', 'CARMELIA', 'ALVAREZ', 'CORONADO', 'ESTRADA', '28-06-1963');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '7815031191412', 1, 1, 3, 'JOSE', 'LEANDRO', 'BAMACA', 'MORALES', NULL, '22-03-1972');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '3976215311413', 1, 2, 2, 'NATALY', 'GUADALUPE', 'CASTILLO', 'MONTERROSO', 'MORALES', '17-01-1987');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '5466238372011', 2, 1, 1, 'JUAN', 'SEBASTIAN', 'PRADO', 'MORALES', NULL, '13-06-1973');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '3288702072012', 2, 2, 2, 'ISABEL', 'LISETH', 'RODRIGUEZ', 'MENDOZA', NULL, '04-04-1999');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '4891356651229', 1, 1, 1, 'DOUGLAS', 'SAMUEL', 'GARCIA', 'SOTO', NULL, '09-12-2001');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '5241332192001', 1, 2, 2, 'ANA', 'JIMENA', 'ENRIQUEZ', 'CASTILLA', NULL, '20-03-2003');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '1872408042003', 1, 2, 2, 'JOSSELINE', 'FABIOLA', 'CHAMALE', 'LOPEZ', NULL, '11-09-2003');
insert into PERSONA (COD_PERSONA, NO_IDENTIFICACION, COD_IDENTIFICACION, COD_SEXO, COD_GENERO, NOMBRE_1, NOMBRE_2,APELLIDO_1, APELLIDO_2, APELLIDO_CASADA, FECHA_NACIMIENTO) 
values (SQC_PERSONA.Nextval, '2573425351420', 2, 1, 1, 'ANGEL', 'GABRIEL', 'PEREZ', 'CARRILLO', NULL, '31-12-1978');



insert into TIPO_MOVIMIENTO (COD_MOVIMIENTO, TIPO_MOVIMIENTO) values (SQC_TIPO_MOVIMIENTO.Nextval, 'COMPRA');
insert into TIPO_MOVIMIENTO (COD_MOVIMIENTO, TIPO_MOVIMIENTO) values (SQC_TIPO_MOVIMIENTO.Nextval, 'VENTA');


