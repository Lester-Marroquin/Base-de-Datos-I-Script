
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
   DEPARTAMENTO         varchar2(100          not null,
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
   constraint PK_EMPLEADO primary key (COD_EMPLEADO) Enbale
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
   COD_ESTADO           NUMBER(1)             not null,
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

Create Sequence SQC_
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
   DEPARTAMENTO         varchar2(100)         not null,
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
   add constraint FK_EMPLEADO_EMPLEADO foreign key (COD_EMPLEADO)
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
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Petén');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Quetzaltenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Retalhuleu');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Sacatepéquez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'San Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Rosa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Sololá');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Suchitepéquez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Totonicapán');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Zacapa');


insert into ANUNCIO (COD_ANUNCIO, ANUNCIO, FECHA_INICIO, FECHA_FIN) values (SQC_ANUNCIO.Nextval, 'Primer anuncio de proyecto', Sysdate, to_date ('01-01-2021','dd-mm-yy'));
